package com.shu.tools;

import org.json.JSONObject;

/**
 * Created by zihua on 17-5-9.
 */
public class Status extends JSONObject {
    public static final String IN = "yes";
    public static final String NO_IN = "no";
    public static final Status SUCCESS = new Status(1, 0);
    public static final Status FAILD = new Status(0, 1);
    public static final Status EXISTS = new Status(IN);
    public static final Status NO_EXISTS = new Status(NO_IN);


    private Status(int success, int faild) {
        this.put("success", success);
        this.put("faild", faild);
    }

    private Status(String status) {
        this.put("status", status);
    }
}
