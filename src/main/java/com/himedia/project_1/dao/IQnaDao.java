package com.himedia.project_1.dao;


import com.himedia.project_1.dto.QnaVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IQnaDao {

    List<QnaVo> getQnaList();

}
