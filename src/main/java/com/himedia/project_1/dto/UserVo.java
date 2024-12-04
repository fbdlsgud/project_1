package com.himedia.project_1.dto;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class UserVo {

    @NotEmpty
    private String id;
    @NotEmpty
    private String name;
    @NotEmpty
    private String pwd;
    @NotEmpty
    private String email;
    @NotEmpty
    private String phone;
    private Timestamp indate;
}
