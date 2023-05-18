package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthOptionPaneUI;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.hash.Hashing;
import com.model.Login;
import com.model.Product;
import com.model.Search;
import com.model.User;
import com.model.PinCode;

@Controller
public class UserController {

	
//	------------  function for checking that particular product is available at entered pincode or not ---------
	
	
	@RequestMapping(path = "/pincodes", method = RequestMethod.POST)
	public String pin(@ModelAttribute PinCode x, @ModelAttribute Product product, Model m,
			RedirectAttributes redirectAttributes) {

		boolean ares = false;
		String ch = "a";
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
		ResponseEntity<Product[]> result = rest.exchange(getallproductapi, HttpMethod.GET, entity, Product[].class);
		List<Product> finalList1 = Arrays.asList(result.getBody());



		List<String> ls = new ArrayList<String>();
		String b="";
		for (Product p : finalList1) {

			if (p.getProductcode().contains(x.getPcode())) {
//				System.out.println("first if");
				String a = p.getServiceability();

				char r;
				for (int i = 0; i < a.length(); i++) {
					r = a.charAt(i);
				
					if (r != ',') {
						b += a.charAt(i);
					} else {
						ls.add(b);
						b = "";
					}
				}

				ares = true;

			}
		}

		if (ares == true) {

			for (String ps : ls) {

				if (ps.equals(x.getPincode())) {
					System.out.println("yes it is");
					
					ch = "b";
					callgetalluser(m);
					m.addAttribute("yes",adminvalue);
					return "ap";
//					break;
				}
			}

		}

		callgetalluser(m);
		m.addAttribute("no",adminvalue);
		return "np";
	}
	
	
//----------------- function for register the user--------------------
	
	
	@RequestMapping(path = "/Register", method = RequestMethod.POST)
	public String createUser(@ModelAttribute User user ,Model m) {
		RestTemplate obj = new RestTemplate();
		
	
		int u_p_length=user.getUserpassword().length();
		int p_min_len=7;
		 if(u_p_length <p_min_len) {
	
			m.addAttribute("p_length_and_s_char_error",true);
			return "index";
		}
		String password = Hashing.sha256().hashString(user.getUserpassword(), StandardCharsets.UTF_8).toString();
		user.setUserpassword(password);
		String confirmpassword = Hashing.sha256().hashString(user.getUserconfirmpassword(), StandardCharsets.UTF_8)
				.toString();
		user.setUserconfirmpassword(confirmpassword);
		
		 if (user.getUserpassword().equals(user.getUserconfirmpassword())) {

			obj.postForEntity("http://localhost:8085/add", user, User.class);
			m.addAttribute("login_success",true);
			return "login";
		} 
		
		else {
			System.out.println("pe");
			m.addAttribute("password_error",true);
			return "index";
		}
	}
	
//----------------------------------------------- for searching the product ----------------------------------------------------------------	
	
	@RequestMapping(path = "/search", method = RequestMethod.POST)
	public String createuser(@ModelAttribute Search search, Model m) {

		RestTemplate rest = new RestTemplate();
		System.out.println(search);
		ResponseEntity<Product[]> results = rest
				.getForEntity("http://localhost:8085/searchusingname/" + search.getSearchingvalue(), Product[].class);
		List<Product> resu = Arrays.asList(results.getBody());
		System.out.println(resu);
		m.addAttribute("resu", resu);
		System.out.println(adminvalue);
		m.addAttribute("key", adminvalue);
//		callgetalluser(m);
		return "searchpage";

	}
//----------------------------  function for filtering the product using price ----------------------------------
	
	@RequestMapping(path = "/filterproduct", method = RequestMethod.POST)
	public String filterproducts(@RequestParam("filtering") String filtername, Model m) {

		RestTemplate rest = new RestTemplate();
		System.out.println(filtername);
		ResponseEntity<Product[]> results = rest.getForEntity("http://localhost:8085/filterusingprice/" + filtername,
				Product[].class);
		List<Product> re = Arrays.asList(results.getBody());
		m.addAttribute("fitu", re);
		m.addAttribute("key1", adminvalue);
		return "pricefilter";
	}

//	------------------------------------------------------------------------------------------------------------------
	String nameoffil;
	
//------------------------------------------------- function for uploadng the image of product  --------------------------------------------------------------
	
	@RequestMapping(path = "/uploadimage", method = RequestMethod.POST)
	public String fileupload(@RequestParam("profile") CommonsMultipartFile file, HttpSession s, Model m) {
		nameoffil = file.getOriginalFilename();
//		System.out.println(file.getName());
//
//		System.out.println(file.getSize());
//		System.out.println(file.getOriginalFilename());
//		System.out.println(file.getStorageDescription());

		byte[] data = file.getBytes();
		// save to this file server ///
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources" + File.separator
				+ "img" + File.separator + file.getOriginalFilename();
		System.out.println(path);

		try {

			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			System.out.println("file upload");
			m.addAttribute("msg", "Successfull upload");

			m.addAttribute("filename", file.getOriginalFilename());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "showimage";

	}
//---------------------------------------function for logout -----------------------------------------------
	
	@RequestMapping(path = "/logout", method = RequestMethod.POST)
	public String logout() {
		adminvalue = false;

		return "login";
	}

//	------------------------------- function for save the product in the database  and calling the  api form spring boot project--------------------------
	
	@RequestMapping(path = "/Addproduct", method = RequestMethod.POST)
	public String createProduct(@ModelAttribute Product product,Model m) {

		RestTemplate rest = new RestTemplate();
		product.setPphotos(nameoffil);
		System.out.println(product.getPphotos());
		/* callgetalluser(); */
		
		if(product.getProductprice()<=0) {
			m.addAttribute("price_error",true);
			return "Addproduct";
		}
		
		
		
			
			
		rest.postForEntity("http://localhost:8085/product", product, Product.class);
		m.addAttribute("product_added_s", true);
		return "Addproduct";
	}
//----------------------------------------------------------------------------------------------------------------
	static RestTemplate rest = new RestTemplate();
	public String getallproductapi = "http://localhost:8085/fetch";
	
//-----------------------------------------------------------------------------------------------------------------
	@RequestMapping("/data")
	public String callgetalluser(Model m) {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
		ResponseEntity<Product[]> result = rest.exchange(getallproductapi, HttpMethod.GET, entity, Product[].class);
		List<Product> finalList = Arrays.asList(result.getBody());
		m.addAttribute("result", finalList);

		return "afterlogin";

	}
//------------------------------------------------------------------------------------------------------------------
	boolean adminvalue ;

//	--------------------------------------------- function for login in system if they are entering right credentials ---------------------------------------------------------------
	
	@RequestMapping(path = "/loginprocess", method = RequestMethod.POST)
	public String createUser(@ModelAttribute Login login, Model m) {
		RestTemplate obj = new RestTemplate();
		String sha256hex = Hashing.sha256().hashString(login.getPassword(), StandardCharsets.UTF_8).toString();
		login.setPassword(sha256hex);
		// obj.postForEntity("http://localhost:9090/login", login, Login.class);
		RestTemplate rest = new RestTemplate();
		String getalluserdatapi = "http://localhost:8085/getdata";
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
		ResponseEntity<User[]> result = rest.exchange(getalluserdatapi, HttpMethod.GET, entity, User[].class);
		List<User> finalList = Arrays.asList(result.getBody());
		System.out.println(finalList);
		for (User us : finalList) {
			System.out.println(us.getUserpassword());
			System.out.println(us.getUseremail());
			if (us.getUseremail().equals(login.getEmail()) && us.getUserpassword().equals(login.getPassword())) {
				adminvalue = true;
				m.addAttribute("keys", adminvalue);
				callgetalluser(m);
				return "productfrontendform";

			}
		}
		m.addAttribute("login_error",true);
		return "login";
	}

//	-------------------------------------------------------------------------------------------------------------

	@RequestMapping("/index")
	public String home() {
		return "index";
	}
//    -------------------------------------------------------------------------------------------------------------
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
//    ------------------------------------------------------------------------------------------------------------
	@RequestMapping("/Addproduct")
	public String addproduct() {
		return "Addproduct";
	}
//     ------------------------------------------------------------------------------------------------------------
}
