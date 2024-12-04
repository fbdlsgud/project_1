package com.himedia.project_1.service;


import com.himedia.project_1.dao.IAdminDao;
import com.himedia.project_1.dto.AdminVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    @Autowired
    IAdminDao adao;

    public AdminVo getAdmin(String aid) {
        return adao.getAdmin( aid );
    }
}
