package com.shu.service;

import com.shu.dao.UserDao;
import com.shu.entity.User;
import com.shu.tools.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static com.shu.tools.SecurityTools.md5;
import static com.shu.tools.Status.*;

/**
 * Created by zihua on 17-6-20.
 */
@Service
public class DataService {
    @Autowired
    private UserDao userDao;

    public Status addUser(String uId, String pwd, String email) {
        int res = 1;
        if (uId.length() <= 0 || pwd.length() <= 0 || email.length() <= 0) return FAILD;
        if (userDao.userExist(uId)) return FAILD;
        User user = new User();
        user.setuId(uId);
        pwd = md5(pwd);
        user.setuPwd(pwd);
        user.setEmail(email);
        if (userDao.addUser(user)) return SUCCESS;
        else return FAILD;

    }

}
