package com.chainsys.record.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.record.model.Admin;
import com.chainsys.record.repository.AdminRepository;

@Service
public class AdminService {
    @Autowired
    private AdminRepository adminLoginRepository;
    public List<Admin> getAdminLogin(){
        return adminLoginRepository.findAll();
    }
    public Admin save(Admin login) {
        return adminLoginRepository.save(login);
    }
    public Admin findById(int id) {
        return adminLoginRepository.findById(id);
    }

    public void deleteById(int id) {
        adminLoginRepository.deleteById(id);
    }
    public Admin getAdminByAdminNameAndPassword(String name,String password) {
        return adminLoginRepository.findByAdminNameAndPassword(name, password);
    }

}
