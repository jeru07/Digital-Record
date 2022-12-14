package com.chainsys.record.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
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
	public String showAddUser(Model model)
	{
		Users theuser=new Users();
		model.addAttribute("addusers", theuser);
		return "add-user-form";
	}
    @PostMapping("/add")
	public String addNewUsers(@Valid@ModelAttribute("addusers") Users theuser,Errors errors) {
    	if(errors.hasErrors())
    	{
    		return "add-user-form";
    	}
    	else {
	    userService.save(theuser);
		return "redirect:/user/getlistuserdocument?id="+theuser.getUserId();
    	}
    }
    @GetMapping("/updateformuser")
   	public String showUpdateUser(@RequestParam("userid") int id,Model model)
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
   	@GetMapping("/getlistuserdocument")
   	public String getDocumentUser(@RequestParam("id") int id ,Model model)
   	{  
   		UsersDocumentsDTO userDocumentdto=userService.getUserDocument(id);
   		model.addAttribute("getuser", userDocumentdto.getUsers());
   		model.addAttribute("doclist", userDocumentdto.getDoclist());
   		model.addAttribute("userId", userDocumentdto.getUsers().getUserId());
   		return "list-user-document";
   	}
 	@GetMapping("/getlistdocument")
   	public String getDocument(@RequestParam("id") int id ,Model model)
   	{
   		UsersDocumentsDTO userDocumentdto=userService.getUserDocument(id);
        model.addAttribute("getuser", userDocumentdto.getUsers());
   		model.addAttribute("doclist", userDocumentdto.getDoclist());
   		return "list-all";
   	}
 	@GetMapping("/userlogin")
    public String adminaccessform(Model model) {
        Users theusers = new Users();
        model.addAttribute("users", theusers);
        return "user-login-form";
    }                   

    @PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("users") Users user,Model model) {
    	user.getUserId();
        Users users = userService.getUserByuserNameAnduserPassword(user.getUserName(),user.getUserPassword());
        if (users!= null){
            return "redirect:/user/getlistuserdocument?id="+users.getUserId();
        } else {
        	model.addAttribute("result","password and UserName Mismatch");
            return "user-login-form";
        }
    }
    @GetMapping("/first")
	public String firstPage()
	{
		return "firstpage";
	}
    @GetMapping("/home")
   	public String homePage()
   	{
   		return "homepage";
   	}
    @GetMapping("/about")
    public String about()
    {
    	return "about";
    }
}
