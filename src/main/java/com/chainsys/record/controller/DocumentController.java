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
import com.chainsys.record.service.DocumentService;

@Controller
@RequestMapping("/document")
public class DocumentController {
	@Autowired
	DocumentService documentService;

	@GetMapping("/list")
	public String getDocuments(Model model) {
		List<Documents> thedoc = documentService.getDocuments();
		model.addAttribute("alldocuments", thedoc);
		return "list-document";
	}

	@GetMapping("/addformdocument")
	public String showAddDocuments(Model model) {
		Documents thedoc = new Documents();
		model.addAttribute("adddocuments", thedoc);
		return "add-document-form";
	}

	@PostMapping("/add")
	public String addNewDocuments(@ModelAttribute("adddocuments") Documents thedoc) {
		documentService.save(thedoc);
		return "redirect:/document/list";
	}

	@GetMapping("/updateformdocument")
	public String showUpdateDocuments(@RequestParam("userid") int id, Model model) {
		Documents thedoc = documentService.findByid(id);
		model.addAttribute("updateddocuments", thedoc);
		return "update-document-form";
	}

	@PostMapping("/updateddocuments")
	public String updateDocuments(@ModelAttribute("updateddocuments") Documents thedoc) {
		documentService.save(thedoc);
		return "redirect:/document/list";
	}
	@GetMapping("/deletedocuments")
  	public String deleteDocuments(@RequestParam("userid") int id) {
     documentService.deleteById(id);
  		return "redirect:/document/list";
  	}
 	@GetMapping("/getdocbyid")
   	public String getUsers(@RequestParam("id") int id,Model model)
   	{
   		Documents thedoc=documentService.findByid(id);
   		model.addAttribute("getdocumentbyid", thedoc);
   		return "find-document-id-form";
   	}
}