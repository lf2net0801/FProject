package of.member.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.SecretKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.cj.Session;

import of.member.model.*;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/landingPge.controller")
	public String landingPgeEntry(Model m) {
		return "index";
	}
	
	@GetMapping("/dataTablePge.controller")
	public String dataTablePge(Model m) {
		return "dataTable";
	}

	@GetMapping("/loginPgeEntry.controller")
	public String loginPgeEntry() {
		return "login";
	}
	
	@GetMapping("/logout.controller")
	public String logout(HttpServletRequest request, Model m) {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		return "index";
	}

	@GetMapping("/logincheck.controller")
	@ResponseBody
	public Member logincheck(HttpServletRequest request, Model m) {
		HttpSession session = request.getSession();

		Member member = (Member) session.getAttribute("member");
		
			m.addAttribute("member",member);
			session.setAttribute("member", member);
			return member;
	}

	@PostMapping("/loging.controller")
	public String Loging(@RequestParam String aid, @RequestParam String apassword, Model m, HttpSession session) {

		Member member = memberService.getA_id(aid);
		if (apassword.equals(member.getApassword())) {
			m.addAttribute("member", member);
			session.setAttribute("member", member);
			return "index";
		} else {
			return "login";
		}
	}

	@GetMapping("/empMember.controller")
	public String processEntry(Model m) {
		return "mainPage";
	}

	@GetMapping("/in.controller")
	public String insertEntry(Model m) {
		return "memberInsert";
	}

	@GetMapping("/up.controller")
	public String updateEntry(Model m) {
		return "memberUpdate";
	}

	@GetMapping("/de.controller")
	public String deleteEntry(Model m) {
		return "memberDelete";
	}

	@GetMapping("/upAjax.controller")
	public String upAjax(Model m) {
		return "memberUpdateAjax";
	}

	@PostMapping("/insertmember.controller")
	public String insert(@RequestParam("aavatar") MultipartFile multipartFile, HttpServletRequest request, @RequestParam String aid, @RequestParam String apassword,
			@RequestParam String abirthday, @RequestParam String aname, @RequestParam String aphone,
			@RequestParam String aaddress, Model m) throws IllegalStateException, IOException {
		
		String fileName = multipartFile.getOriginalFilename();
		String path = ResourceUtils.getURL("classpath:static/images").getPath();
		String filePath = path + "/" + fileName;

		File saveFile = new File(filePath);
		multipartFile.transferTo(saveFile);

		Member member = new Member();
		member.setAid(aid);
		member.setApassword(apassword);
		member.setAbirthday(abirthday);
		member.setAname(aname);
		member.setAphone(aphone);
		member.setAaddress(aaddress);
		member.setAavatar("images/"+ fileName);

		memberService.insert(member);
		m.addAttribute("find", member);
		return "succsess";
	}

	@PostMapping("/deletemember.controller")
	public String delete(@RequestParam String aid) {
		memberService.deletea_id(aid);
		return "succsess";
	}

	@PostMapping("/updatemember.controller")
	public String updateCoupon(@RequestParam("aavatar") MultipartFile multipartFile, HttpServletRequest request, @RequestParam String aid, @RequestParam String apassword,
			@RequestParam String abirthday, @RequestParam String aname, @RequestParam String aphone,
			@RequestParam String aaddress, Model m) throws IllegalStateException, IOException {
		
		String fileName = multipartFile.getOriginalFilename();
		String path = ResourceUtils.getURL("classpath:static/images").getPath();
		String filePath = path + "/" + fileName;

		File saveFile = new File(filePath);
		multipartFile.transferTo(saveFile);

		Member member = new Member();
		member.setAid(aid);
		member.setApassword(apassword);
		member.setAbirthday(abirthday);
		member.setAname(aname);
		member.setAphone(aphone);
		member.setAaddress(aaddress);
		member.setAavatar("images/"+ fileName);

		memberService.update(member);
		m.addAttribute("find", member);
		return "succsess";

	}

	@GetMapping("/getAllmember.controller")
	public String showAllCoupon(Model m) {
		List<Member> member = memberService.getAllMembers();

		m.addAttribute("find", member);
		return "mainPage";
	}
	
	@GetMapping("/dataTableAll.controller")
	@ResponseBody
	public Map adDetail() {
		List<Member> member = memberService.getAllMembers();
		Map<String, Object> map = new HashMap<>();
		map.put("dataAll", member);
		return map;
	}

	@PostMapping("/getByLike.controller")
	public String showLike(@RequestParam String queryVal, Model m) {
		List<Member> member = memberService.getByLike(queryVal);

		m.addAttribute("find", member);
		return "mainPage";
	}

	@PostMapping("/getByA_id.controller")
	public String showA_id(@RequestParam String queryVal, Model m) {
		Member member = memberService.getA_id(queryVal);

		m.addAttribute("find", member);
		return "mainPage";
	}

	@PostMapping("/getByA_idAjax.controller")
	@ResponseBody
	public Member showA_idAjax(@RequestParam String queryVal, Model m) {
		Member member = memberService.getA_idAjax(queryVal);
		return member;
	}

}