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
import static com.shu.tools.SecurityTools.doResponse;

/**
 * Created by 李长虹 on 2017/6/18.
 */
@Controller
@RequestMapping("login")
public class LoginController {
    @Autowired
    private DataService dataService;

    @RequestMapping(value = "", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
    @ResponseBody
    public String login(String uId, String password, HttpServletResponse response) {
        Status status = dataService.checkUser(uId, password);
        return doResponse(uId, status, response);
    }

}
