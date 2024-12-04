package com.himedia.project_1.service;

import com.himedia.project_1.dao.IUserDao;
import com.himedia.project_1.dto.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    IUserDao udao;

    public void InsertUser(UserVo uvo) {
        udao.InsertUser(uvo);
    }

    public UserVo getMember(String id) {
        return udao.getUser(id);
    }


    public void updateUserWithPassword(UserVo uvo) {
        udao.updateUserWithPassword(uvo);
    }
}
