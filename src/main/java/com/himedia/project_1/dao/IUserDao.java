package com.himedia.project_1.dao;

import com.himedia.project_1.dto.UserVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IUserDao {

    void InsertUser(UserVo uvo);
    UserVo getUser(String userid);

    void updateUserWithPassword(UserVo uvo);

    List<UserVo> getUserList();
}
