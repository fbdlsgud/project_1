package com.himedia.project_1.dao;


import com.himedia.project_1.dto.ProductVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IProductDao {
    List<ProductVo> selectCategory(int category);
}
