package com.chainsys.record.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.record.model.Admin;
import com.chainsys.record.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
    AdminService adservice;
	@GetMapping("/list")
	public String getAdmin(Model model)
	{  
		List<Admin> theadmin=adservice.getAdminLogin();
		model.addAttribute("alladmin",theadmin);
		return "list-admin";
}

	@GetMapping("/adminform")
    public String adminLoginForm(Model model) {
        Admin adminlogin = new Admin();
        model.addAttribute("adminlogin", adminlogin);
        return "admin-login-form";
    }
    @PostMapping("/checkadminloginform")
    public String checkingAccess(@ModelAttribute("adminlogin") Admin admin) {
        Admin adminlog = adservice.getAdminByAdminNameAndPassword(admin.getAdminName(), admin.getPassword());
        if (adminlog!=null) {
            return "redirect:/admin/form";
        }
        else
            return "redirect:/user/list";
        
    }  
    @GetMapping("/form")
	public String indexPage()
	{
		return "redirect:/user/list";
	}
}

