package com.himedia.project_1.controller;


import com.himedia.project_1.dto.AdminVo;
import com.himedia.project_1.dto.UserVo;
import com.himedia.project_1.service.AdminService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @Autowired
    AdminService as;

    @GetMapping("/admin/adminMain")
    public String adminMain() {
        return "admin/adminMain"; // JSP 파일 이름
    }

    @GetMapping("/admin")
    public String admin() {
        return "admin/admin_loginForm";
    }

    @PostMapping("/adminLogin")
    public String adminlogin(@ModelAttribute("dto") @Valid AdminVo adminvo, BindingResult result,
                        HttpServletRequest request, Model model) {
        String url = "admin/admin_loginForm";
        if (result.hasErrors()) {
            if (result.getFieldError("aid") != null) {
                model.addAttribute("message", "아이디를 입력하세요");
                System.out.println("아이디 오류");
            } else if (result.getFieldError("pwd") != null) {
                model.addAttribute("message", "패스워드를 입력하세요");
                System.out.println("패스워드 오류");
            }
        } else {
            AdminVo avo = as.getAdmin(adminvo.getAid());
            System.out.println("Admin 조회 결과: " + (avo != null ? "성공" : "실패"));
            if (avo == null || !avo.getPwd().equals(adminvo.getPwd())) {
                model.addAttribute("message", "아이디 비번을 확인하세요");
                System.out.println("아이디 또는 비번 불일치");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("loginAdmin", avo);
                url = "redirect:/admin/adminMain";
                System.out.println("로그인 성공: " + adminvo.getAid());
            }
        }
        return url;
    }








//
//    @GetMapping("adminlogout")
//    public String logout(HttpSession session) {
//
//        session.removeAttribute("loginAdmin");
//        return "redirect:/";
//    }





}
