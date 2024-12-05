package com.himedia.project_1.dto;


import lombok.Data;

import java.sql.Timestamp;

@Data
public class QnaVo {

    private Integer qseq;
    private String title;
    private String content;
    private String pwd;
    private Timestamp indate;
    private String writer1;
    private String writer2;
    private String reply;
    private String secret;

}
