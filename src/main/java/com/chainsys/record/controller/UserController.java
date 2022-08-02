package com.chainsys.record.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.record.dto.UsersDocumentsDTO;
import com.chainsys.record.model.Users;
import com.chainsys.record.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController 
{
	@Autowired
    UserService userService;
	@GetMapping("/list")
	public String getUsers(Model model)
	{  
		List<Users> theuser=userService.getUsers();
		model.addAttribute("allusers",theuser);
		return "list-user";
}
	@GetMapping("/addformuser")
	public String showAddForm(Model model)
	{
		Users theuser=new Users();
		model.addAttribute("addusers", theuser);
		return "add-user-form";
	}
    @PostMapping("/add")
	public String addNewUsers(@ModelAttribute("addusers") Users theuser) {
	    userService.save(theuser);
		return "redirect:/document/addformdocument";
    }
    @GetMapping("/updateformuser")
   	public String showUpdateForm(@RequestParam("userid") int id,Model model)
   	{
   		Users theuser=userService.findByid(id);
   		model.addAttribute("updateusers", theuser);
   		return "update-user-form";
   	}
       @PostMapping("/updateusers")
   	public String updateUsers(@ModelAttribute("updateusers") Users theuser) {
   		userService.save(theuser);
   		return "redirect:/user/list";
   	}
       @GetMapping("/deleteusers")
      	public String deleteUsers(@RequestParam("userid") int id) {
         userService.deleteById(id);
      		return "redirect:/user/list";
      	}
   	@GetMapping("/getuserbyid")
   	public String getUsers(@RequestParam("id") int id,Model model)
   	{
   		Users theuser=userService.findByid(id);
   		model.addAttribute("getuserbyid", theuser);
   		return "find-user-id-form";
   	}
   	@GetMapping("/getuserdocument")
   	public String getDocument(@RequestParam("id") int id ,Model model)
   	{
   		UsersDocumentsDTO dto=userService.getUserDocument(id);
   		model.addAttribute("getuser", dto.getUsers());
   		model.addAttribute("doclist", dto.getDoclist());
   		return "list-user-document";
   	}
}
