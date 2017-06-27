package com.shu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 李长虹 on 2017/6/18.
 */
@Controller
@RequestMapping("addQuestion")
public class AddQuestionController {
    @RequestMapping(value = "")
    public String question(){
        return "question";
    }

}
