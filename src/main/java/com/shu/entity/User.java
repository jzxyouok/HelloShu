package com.shu.entity;

import javax.persistence.*;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Created by 李长虹 on 2017/6/16.
 */
@Entity
public class User {
    private String uId;//用户Id
    private String uName;//用户名
    private String uPwd;//用户密码
    private String email;
    private String phone;
    private String sex;
    private Set<Remark> remarks = new LinkedHashSet<Remark>();//已发表评论
    private Set<Question> questions=new LinkedHashSet<Question>();//已提问题

    @Id
    @Column(length=64)
    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @OneToMany(mappedBy = "user",cascade = CascadeType.ALL)
    public Set<Remark> getRemarks() {
        return remarks;
    }

    public void setRemarks(Set<Remark> remarks) {
        this.remarks = remarks;
    }

    @OneToMany(mappedBy = "user",cascade = CascadeType.ALL)
    public Set<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(Set<Question> questions) {
        this.questions = questions;
    }
}
