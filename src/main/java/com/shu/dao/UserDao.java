package com.shu.dao;

import com.shu.entity.User;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Repository;

/**
 * Created by 李长虹 on 2017/6/18.
 */
@Repository
public class UserDao extends Dao {
    public boolean addUser(User user) {
        try {
            this.getSession().save(user);
            return true;
        } catch (DataIntegrityViolationException e) {
            return false;
        }
    }

    public boolean userExist(String uId) {
        User user = this.getSession().get(User.class, uId);
        if (user == null) return false;
        return true;
    }

    public User getUser(String uId) {
        return this.getSession().get(User.class, uId);
    }

}
