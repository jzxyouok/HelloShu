package com.shu.entity;

import javax.persistence.*;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Created by 李长虹 on 2017/6/16.
 */
@Entity
public class Question {
    private String qId;//问题Id
    private String qContent;//问题内容
    private User user;//所提问者
    private int numberOfAnswer;//回答人数
    private int numberOfViews;//查看人数
    private Times askedTime;//提出时间
    private Set<Remark> remarks = new LinkedHashSet<Remark>();//所有评论
    private Set<Type> types = new LinkedHashSet<Type>();//所属类型

    @Id
    @Column(length = 8)
    @GeneratedValue(strategy = GenerationType.AUTO)
    public String getqId() {
        return qId;
    }

    public void setqId(String qId) {
        this.qId = qId;
    }

    public String getqContent() {
        return qContent;
    }

    public void setqContent(String qContent) {
        this.qContent = qContent;
    }

    @OneToMany(mappedBy = "question", cascade = CascadeType.ALL)
    public Set<Remark> getRemarks() {
        return remarks;
    }

    public void setRemarks(Set<Remark> remarks) {
        this.remarks = remarks;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "uId")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @ManyToMany(mappedBy = "questions", cascade = CascadeType.ALL)
    public Set<Type> getTypes() {
        return types;
    }

    public void setTypes(Set<Type> types) {
        this.types = types;
    }

    public int getNumberOfAnswer() {
        return numberOfAnswer;
    }

    public void setNumberOfAnswer(int numberOfAnswer) {
        this.numberOfAnswer = numberOfAnswer;
    }

    public int getNumberOfViews() {
        return numberOfViews;
    }

    public void setNumberOfViews(int numberOfViews) {
        this.numberOfViews = numberOfViews;
    }

    public Times getAskedTime() {
        return askedTime;
    }

    public void setAskedTime(Times askedTime) {
        this.askedTime = askedTime;
    }
}
