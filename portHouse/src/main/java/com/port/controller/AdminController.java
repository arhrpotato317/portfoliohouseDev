package com.port.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.port.service.AdminService;
import com.port.utils.UploadFileUtils;
import com.port.vo.BoardVO;
import com.port.vo.BoardViewVO;
import com.port.vo.CategoryVO;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService service;
	
	// 컨트롤러에 servlet-context.xml에서 설정했던 uploadPath
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	// 패스워드 암호화 사용
	@Autowired
	BCryptPasswordEncoder passEncoder;

	// 게시물 목록 (관리자 화면)
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void getBoardList(Model model) throws Exception {
		logger.info("get board list");
		
		List<BoardViewVO> boardList = service.boardList();
		model.addAttribute("boardList", boardList);
	}
	
	// 게시물 등록 get
	@RequestMapping(value = "/board/register", method = RequestMethod.GET)
	public void getBoardRegister(Model model) throws Exception {
		logger.info("get board register");
		
		List<CategoryVO> category = service.category();
		model.addAttribute("category", JSONArray.fromObject(category));
	}
	
	// 게시물 등록 post
	@RequestMapping(value = "/board/register", method = RequestMethod.POST)
	public String postBoardRegister(BoardVO vo, MultipartFile file, HttpServletRequest req) throws Exception {
		logger.info("post board register");
		
		// 이미지 썸네일 등록
		String imgUploadPath = uploadPath + File.separator + "imgUpload"; //파일용 인풋박스에 등록된 파일의 정보를 가져온다. 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		// imgUpload - 파일이 저장될 기본이 되는 폴더
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath); //UploadFileUtils.java를 통해 폴더를 생성한 후 원본 파일과 썸네일을 저장한다. 위의 폴더를 기준으로 연월일 폴더를 생성
		String fileName = null; // 기본 경로와 별개로 작성되는 경로 + 파일이름
		
		// 파일 인풋박스에 첨부된 파일이 없다면 (첨부된 파일이 이름이 없다면)
		if(file.getOriginalFilename()!= null && !file.getOriginalFilename().equals("")) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			
			// 경로를 데이터 베이스에 전하기 위해 BoardVO에 입력
			vo.setBrdImg(req.getContextPath() + File.separator + "imgUpload" + ymdPath + File.separator + fileName); // brdImg에 원본 파일 경로 + 파일명 저장
			vo.setBrdThumb(req.getContextPath() + File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName); // brdThumb에 썸네일 파일 경로 + 썸네일 파일명 저장
		} else {
			// 첨부된 파일이 없으면 미리 준비된 none.png파일을 대신 출력
			fileName = req.getContextPath() + File.separator + "images" + File.separator + "none.png";
			vo.setBrdImg(fileName);
			vo.setBrdThumb(fileName);
		}
		
		service.register(vo);
		return "redirect:/admin/index";
	}
	
	// ck 에디터 파일 업로드
	@RequestMapping(value = "/board/ckUpload", method = RequestMethod.POST)
	public void postCKEditorImgUpload(HttpServletRequest req, HttpServletResponse res, @RequestParam MultipartFile upload) throws Exception {
		logger.info("post CKEditor img upload");
			 
		// 랜덤 문자 생성
		UUID uid = UUID.randomUUID();
			 
		OutputStream out = null;
		PrintWriter printWriter = null;
			   
		// 인코딩
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
			 
		try {
			String fileName = upload.getOriginalFilename();  // 파일 이름 가져오기
			byte[] bytes = upload.getBytes();
						  
			// 업로드 경로
			String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
						  
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush();  // out에 저장된 데이터를 전송하고 초기화
						  
			String callback = req.getParameter("CKEditorFuncNum");
			printWriter = res.getWriter();
			String fileUrl = req.getContextPath() + "/resources/ckUpload/" + uid + "_" + fileName;  // 작성화면
						  
			// 업로드시 메시지 출력
			printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
						  
			printWriter.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(out != null) { 
					out.close();
				}
				if(printWriter != null) {
					printWriter.close();
				}
			} catch(IOException e) { 
				e.printStackTrace();
			}
		}
			 
		return;
	}
	
	// 게시물 상세 + 카테고리
	@RequestMapping(value = "/board/view", method = RequestMethod.GET)
	public void getBoardView(Model model, @RequestParam("n") int brdNum) throws Exception {
		logger.info("get board view");
		
		BoardViewVO boardView = service.boardView(brdNum);
		model.addAttribute("boardView", boardView);
	}
	
	// 게시물 수정 get
	@RequestMapping(value = "/board/modify", method = RequestMethod.GET)
	public void getBoardModify(Model model, @RequestParam("n") int brdNum) throws Exception {
		logger.info("get board modify");
		
		BoardViewVO board = service.boardView(brdNum);
		model.addAttribute("board", board);
		
		List<CategoryVO> category = service.category();
		model.addAttribute("category", JSONArray.fromObject(category));
	}
	
	// 게시물 수정 post
	@RequestMapping(value = "/board/modify", method = RequestMethod.POST)
	public String postBoardModify(BoardVO vo, MultipartFile file, HttpServletRequest req) throws Exception {
		logger.info("post board modify");
		
		// 새로운 파일이 등록되었는지 확인
		if(file.getOriginalFilename()!= null && !file.getOriginalFilename().equals("")) {
			// 기존 파일을 삭제
			new File(uploadPath + req.getParameter("brdImg")).delete();
			new File(uploadPath + req.getParameter("brdThumb")).delete();
					  
			// 새로 첨부한 파일을 등록
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
					  
			vo.setBrdImg(req.getContextPath() + File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			vo.setBrdThumb(req.getContextPath() + File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);  
		} else {  // 새로운 파일이 등록되지 않았다면
			// 기존 이미지를 그대로 사용
			vo.setBrdImg(req.getParameter("brdImg"));
			vo.setBrdThumb(req.getParameter("brdThumb"));	  
		}
		
		service.boardModify(vo);
		return "redirect:/admin/index";
	}
	
	// 게시물 삭제 post
	@RequestMapping(value = "/board/delete", method = RequestMethod.POST)
	public String postBoardDelete(@RequestParam("n") int brdNum) throws Exception {
		logger.info("post board delete");
		
		service.boardDelete(brdNum);
		return "redirect:/admin/index";
	}
}






























