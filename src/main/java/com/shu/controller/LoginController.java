package com.shu.controller;

import com.shu.service.DataService;
import com.shu.tools.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import static com.shu.tools.SecurityTools.cookieFactory;

/**
 * Created by 李长虹 on 2017/6/18.
 */
@Controller
@RequestMapping("login")
public class LoginController {
    @Autowired
    private DataService dataService;

    @RequestMapping(value = "", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
    @ResponseBody
    public String login(String userName, String password, String email, HttpServletResponse response) {
        Status status = dataService.addUser(userName, password, email);
        if (status.getInt("success") > 0) {
            Cookie cookie = cookieFactory(userName);
            response.addCookie(cookie);
            return status.toString();
        } else {
            return null;
        }
    }

}
