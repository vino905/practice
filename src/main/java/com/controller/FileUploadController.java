package com.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.model.Product;



@Controller
public class FileUploadController {

	@RequestMapping("/filefoam")
	public String showuploadform() {
		return "filefoam";
	}
	@RequestMapping("/home")
	public String homePage() {
		return "home";
	}
//	String nameoffil;
//	@RequestMapping(path="/uploadimage", method=RequestMethod.POST)
//	public String fileupload(@RequestParam("profile") CommonsMultipartFile file, HttpSession s, Model m) {
//		nameoffil=file.getOriginalFilename();
//		System.out.println(file.getName());
//		
//		System.out.println(file.getSize());
//		System.out.println(file.getOriginalFilename());
//		System.out.println(file.getStorageDescription());
//		
//		byte[] data= file.getBytes();
//		// save to this file server ///
//		String path=s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"img"+File.separator+file.getOriginalFilename();
//		System.out.println(path);
//		
//		try {
//	
//		FileOutputStream fos= new FileOutputStream(path);
//		fos.write(data);
//		fos.close();
//		System.out.println("file upload");
//		m.addAttribute("msg","Successfull upload");
//		
//		m.addAttribute("filename",file.getOriginalFilename());
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		return "showimage";
//		
//		
//	}
//	
	
}
	
	
