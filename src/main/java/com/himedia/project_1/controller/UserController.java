package com.himedia.project_1.controller;

import com.google.gson.Gson;
import com.himedia.project_1.dto.KakaoProfile;
import com.himedia.project_1.dto.OAuthToken;
import com.himedia.project_1.dto.UserVo;
import com.himedia.project_1.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.net.ssl.HttpsURLConnection;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class UserController {
    @Autowired
    UserService us;


    @GetMapping("/")
    public String home() {
        return "index";
    }


    @GetMapping("joinform")
    public String joinform() {
        return "join";
    }


    @PostMapping("join")
    public String join(@ModelAttribute("dto") @Valid UserVo uservo, BindingResult result, @RequestParam("pwdchk") String pwdchk, Model model) {
        String url = "member/loginForm";
        us.InsertUser(uservo);
        if (result.getFieldError("id") != null)
            model.addAttribute("message", "아이디를 입력하세요");
        else if (result.getFieldError("pwd") != null)
            model.addAttribute("message", "비밀번호를 입력하세요");
        else if (result.getFieldError("name") != null)
            model.addAttribute("message", "이름을 입력하세요");
        else if (result.getFieldError("email") != null)
            model.addAttribute("message", "이메일을 입력하세요");
        else if (result.getFieldError("phone") != null)
            model.addAttribute("message", "전화번호를 입력하세요");
        else if (uservo.getPwd().equals(pwdchk)) {
            model.addAttribute("massage", "가입 완료");
        }
        return url;
    }

    @GetMapping("loginForm")
    public String loginForm() {
        return "member/loginForm";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute("dto") @Valid UserVo uservo, BindingResult result,
                        HttpServletRequest request, Model model) {
        String url = "member/loginForm";
        if (result.getFieldError("id") != null) {
            model.addAttribute("message", "아이디를 입력하세요");
            System.out.println("오류");
        } else if (result.getFieldError("pwd") != null)
            model.addAttribute("message", "패스워드를 입력하세요");
        else {
            UserVo uvo = us.getMember(uservo.getId());
            if (uvo == null)
                model.addAttribute("message", "아이디 비번을 확인하세요");
            else if (!uvo.getPwd().equals(uservo.getPwd()))
                model.addAttribute("message", "아이디 비번을 확인하세요");
            else if (uvo.getPwd().equals(uservo.getPwd())) {
                HttpSession session = request.getSession();
                session.setAttribute("loginUser", uvo);
                url = "redirect:/";

                System.out.println(uservo.getId());
                System.out.println(uservo.getPwd());

            }
        }
        return url;
    }



    @GetMapping("/kakaoLogin")
    public String kakaoLogin(HttpServletRequest request, Model model) throws IOException {
        String code = request.getParameter("code");

        // Step 1: Access Token 요청
        String endpoint = "https://kauth.kakao.com/oauth/token";
        URL url = new URL(endpoint);
        String bodyData = "grant_type=authorization_code";
        bodyData += "&client_id=f67ebc2de23039bbce25c7d2583abd81";
        bodyData += "&redirect_uri=http://localhost:8070/kakaoLogin";
        bodyData += "&code=" + code;

        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
        conn.setDoOutput(true);

        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream(), "UTF-8"));
        bw.write(bodyData);
        bw.flush();

        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        String input;
        StringBuilder sb = new StringBuilder();
        while ((input = br.readLine()) != null) {
            sb.append(input);
        }

        Gson gson = new Gson();
        OAuthToken oAuthToken = gson.fromJson(sb.toString(), OAuthToken.class);

        // Step 2: 사용자 정보 요청
        endpoint = "https://kapi.kakao.com/v2/user/me";
        url = new URL(endpoint);
        conn = (HttpsURLConnection) url.openConnection();
        conn.setRequestProperty("Authorization", "Bearer " + oAuthToken.getAccess_token());
        conn.setDoOutput(true);

        br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        sb = new StringBuilder();
        while ((input = br.readLine()) != null) {
            sb.append(input);
        }

        KakaoProfile kakaoProfile = gson.fromJson(sb.toString(), KakaoProfile.class);

        // Step 3: 사용자 DB 확인
        UserVo uvo = us.getMember(kakaoProfile.getId());
        if (uvo == null) {
            // 신규 사용자: 비밀번호 입력 페이지로 이동
            model.addAttribute("kakaoId", kakaoProfile.getId());
            model.addAttribute("email", kakaoProfile.getAccount().getEmail());
            model.addAttribute("name", kakaoProfile.getAccount().getProfile().getNickname());
            return "member/kakao"; // 비밀번호 입력 페이지
        }

        // 기존 사용자: 로그인 처리
        HttpSession session = request.getSession();
        session.setAttribute("loginUser", uvo);
        return "redirect:/";
    }

    @PostMapping("/kakaoJoin")
    public String kakaoJoin(@RequestParam("kakaoId") String kakaoId,
                            @RequestParam("pwd") String pwd,
                            @RequestParam("email") String email,
                            @RequestParam("name") String name,
                            HttpSession session) {
        UserVo newUser = new UserVo();
        newUser.setId(kakaoId);
        newUser.setPwd(pwd); // 비밀번호 암호화 필요 시 추가 처리
        newUser.setEmail(email);
        newUser.setName(name);

        us.InsertUser(newUser);
        session.setAttribute("loginUser", newUser);

        return "redirect:/";
    }




    @GetMapping("logout")
    public String logout(HttpSession session) {

        session.removeAttribute("loginUser");
        return "redirect:/";
    }




//    @GetMapping("/menu/{page}")
//    public String menuPage(@PathVariable String page) {
//        // 요청된 페이지 이름으로 JSP 경로 반환
//        return "menu/" + page; // "menu/menu1", "menu/menu2", "menu/menu3"
//    }













}
