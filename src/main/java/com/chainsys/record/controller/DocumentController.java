package com.chainsys.record.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.chainsys.record.dto.UsersDocumentsDTO;
import com.chainsys.record.model.Documents;
import com.chainsys.record.model.Users;
import com.chainsys.record.service.UserService;
import com.chainsys.record.service.DocumentService;

@Controller
@RequestMapping("/document")
public class DocumentController {
	@Autowired
	DocumentService documentService;
	@Autowired
	private UserService userservice;
	
	private static final String GETUSER="getuser";
	
	@GetMapping("/list")
	public String getDocuments(Model model) {
		List<Documents> thedoc = documentService.getDocuments();
		model.addAttribute("alldocuments", thedoc);
		
		return "list-document";
	}

	@GetMapping("/addformdocument")
	public String showAddDocuments(@RequestParam("id")int id, Model model) {
		Documents thedoc = new Documents();
		model.addAttribute("adddocuments", thedoc);
		model.addAttribute("userId", thedoc.getUserId());
		thedoc.setUserId(id);
		return "add-document-form";
	}

	@PostMapping("/add")
	public String addNewDocuments(@RequestParam("photo") MultipartFile photo,@ModelAttribute("adddocuments") Documents thedoc,Model model) {
		try {
			thedoc.setDocumentImage(photo.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		documentService.save(thedoc);
		model.addAttribute("userId", thedoc.getUserId());
		Users user=userservice.findByid(thedoc.getUserId());
		model.addAttribute(GETUSER, user);
		UsersDocumentsDTO dto=userservice.getUserDocument(user.getUserId());
		model.addAttribute("doclist", dto.getDoclist());
        return "list-user-document";
	}

	@GetMapping("/updateformdocument")
	public String showUpdateDocuments(@RequestParam("id") int id, Model model) {
		Documents thedoc = documentService.findByid(id);
		model.addAttribute("updateddocuments", thedoc);
		thedoc.getUserId();
		return "update-document-form";
	}

	@PostMapping("/updateddocuments")
	public String updateDocuments(@ModelAttribute("updateddocuments") Documents thedoc,Model model) {
		documentService.save(thedoc);
		Users user=userservice.findByid(thedoc.getUserId());
		model.addAttribute(GETUSER, user);
		UsersDocumentsDTO dto=userservice.getUserDocument(user.getUserId());
		model.addAttribute("doclist", dto.getDoclist());
		return "list-user-document";
	}
	@GetMapping("/deletedocuments")
  	public String deleteDocuments(@RequestParam("id") int id,Model model) {
        Documents thedoc = documentService.findByid(id);
		Users user=userservice.findByid(thedoc.getUserId());
		model.addAttribute(GETUSER, user);
		 documentService.deleteById(id);
		return "list-user-document";
  	}
	
 	@GetMapping("/getdocbyid")
   	public String getUsers(@RequestParam("id") int id,Model model)
   	{
   		Documents thedoc=documentService.findByid(id);
   		model.addAttribute("getdocumentbyid", thedoc);
   		return "find-document-id-form";
   	}
 	@ResponseBody
 	@GetMapping("/getimage")
 	public ResponseEntity<byte[]> getImage(@RequestParam("id") int id)
 	{
 		byte[] imageBytes=documentService.getDocumentImageByteArray(id);
 		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);	
 	}
 	
}
