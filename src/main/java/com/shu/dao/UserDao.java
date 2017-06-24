package com.shu.dao;

import com.shu.entity.User;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Repository;

/**
 * Created by 李长虹 on 2017/6/18.
 */
@Repository
public class UserDao extends Dao {
    //添加用户，并返回是否添加成功
    public boolean addUser(User user) {
        try {
            this.getSession().save(user);
            return true;
        } catch (DataIntegrityViolationException e) {
            return false;
        }
    }
    //通过Id判断用户是否存在
    public boolean userExist(String uId) {
        User user = this.getSession().get(User.class, uId);
        if (user == null) return false;
        return true;
    }
    //通过Id获取用户
    public User getUser(String uId) {
        return this.getSession().get(User.class, uId);
    }
    //判断email是否存在
    public boolean checkEmail(String email) {
        int t = this.getSession().createQuery("from User where email=?")
                .setParameter(0, email)
                .executeUpdate();
        if (t > 0) return true;
        return false;
    }

    //通过邮箱获取用户
    //。。邮箱为关键码
    public User getUserByEmail(String email){
        /*...*/
        return new User();
    }

}
