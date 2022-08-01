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

import com.chainsys.record.model.Documents;
import com.chainsys.record.model.Users;
import com.chainsys.record.service.DocumentService;

@Controller
@RequestMapping("/document")
public class DocumentController {
	@Autowired
	DocumentService docservice;

	@GetMapping("/list")
	public String getDocuments(Model model) {
		List<Documents> thedoc = docservice.getDocuments();
		model.addAttribute("alldocuments", thedoc);
		return "list-document";
	}

	@GetMapping("/addformdocument")
	public String showAddForm(Model model) {
		Documents thedoc = new Documents();
		model.addAttribute("adddocuments", thedoc);
		return "add-document-form";
	}

	@PostMapping("/add")
	public String addNewDocuments(@ModelAttribute("adddocuments") Documents thedoc) {
		docservice.save(thedoc);
		return "redirect:/document/list";
	}

	@GetMapping("/updateformdocument")
	public String showUpdateForm(@RequestParam("userid") int id, Model model) {
		Documents thedoc = docservice.findByid(id);
		model.addAttribute("updatedocuments", thedoc);
		return "update-document-form";
	}

	@PostMapping("/updatedocuments")
	public String updateDocuments(@ModelAttribute("updatedocuments") Documents thedoc) {
		docservice.save(thedoc);
		return "redirect:/document/list";
	}
	@GetMapping("/deletedocuments")
  	public String deleteDocuments(@RequestParam("userid") int id) {
     docservice.deleteById(id);
  		return "redirect:/document/list";
  	}
 	@GetMapping("/getdocumentbyid")
   	public String getUsers(@RequestParam("id") int id,Model model)
   	{
   		Documents thedoc=docservice.findByid(id);
   		model.addAttribute("getdocumentbyid", thedoc);
   		return "find-document-id-form";
   	}
}
