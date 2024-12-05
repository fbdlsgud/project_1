package com.himedia.project_1.dto;


import lombok.Data;

import java.sql.Timestamp;

@Data
public class NoticeVo {

    private int nseq;
    private String title;
    private String content;
    private Timestamp indate;

}
