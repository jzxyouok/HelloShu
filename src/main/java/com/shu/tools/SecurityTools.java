package com.shu.tools;


import org.json.JSONObject;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

/**
 * Created by zihua on 17-2-16.
 */
public class SecurityTools {
    public static final String SYS = "shuQuestions";

    public static String md5(String plainText) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            try {
                md.update(plainText.getBytes("UTF8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            byte b[] = md.digest();
            int i;
            StringBuffer buf = new StringBuffer(200);
            for (int offset = 0; offset < b.length; offset++) {
                i = b[offset] & 0xff;
                if (i < 16) buf.append("0");
                buf.append(Integer.toHexString(i));
            }
            return buf.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }


    public static String buildMsg(String userName, Date valibTime, String userEmail) {
        JSONObject jso = new JSONObject();
        Long t = valibTime.getTime();
        t /= 1000;
        System.out.println(t);
        String url = "http://localhost:8080/help/rsetPass?uuid=" + md5(t.toString()) + "&userName=" + userName;
        jso.put("url", url);
        jso.put("userEmail", userEmail);
        return jso.toString();
    }
    //以useraId 构建cookie
    public static Cookie cookieFactory(String userId) {
        Cookie cookie = new Cookie(SYS, userId);
        cookie.setMaxAge(60 * 60 * 24);
        return cookie;
    }

    public static String doResponse(String uId, Status status, HttpServletResponse response) {
        if (status.getInt("success") > 0) {
            Cookie cookie = cookieFactory(uId);
            response.addCookie(cookie);
            return status.toString();
        } else {
            return null;
        }
    }
}
