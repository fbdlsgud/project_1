package com.himedia.project_1.dao;

import com.himedia.project_1.dto.AdminVo;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface IAdminDao {
    AdminVo getAdmin(String adminid);
}
