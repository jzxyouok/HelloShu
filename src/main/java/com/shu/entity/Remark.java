package com.shu.entity;

import javax.persistence.*;

/**
 * Created by 李长虹 on 2017/6/16.
 */
@Entity
public class Remark {
    private String rId;//评论Id
    private String rContent;//评论内容
    private User user;//评论发表者
    private Question question;//评论所属问题

    @Id
    @Column(length=8)
    public String getrId() {
        return rId;
    }

    public void setrId(String rId) {
        this.rId = rId;
    }

    public String getrContent() {
        return rContent;
    }

    public void setrContent(String rContent) {
        this.rContent = rContent;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "uId")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "qId")
    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }
}
