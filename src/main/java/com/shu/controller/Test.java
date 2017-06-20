package com.shu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zihua on 17-6-18.
 */
@Controller
public class Test {
    @RequestMapping(value = "tttt")
    public String test() {
        return "test";
    }
}
