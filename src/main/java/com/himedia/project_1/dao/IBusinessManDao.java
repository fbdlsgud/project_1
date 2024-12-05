package com.himedia.project_1.dao;

import com.himedia.project_1.dto.BusinessManVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface IBusinessManDao {
    List<BusinessManVo> getBusinessManList();
}
