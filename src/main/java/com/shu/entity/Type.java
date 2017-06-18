package com.shu.entity;

import javax.persistence.*;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Created by 李长虹 on 2017/6/16.
 */
@Entity
public class Type {
    private String tId;//类型Id
    private String tName;//类型名
    private Set<Question> questions = new LinkedHashSet<Question>();//属于该类型的问题集合


    @Id
    @Column(length=8)
    public String gettId() {
        return tId;
    }

    public void settId(String tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    @ManyToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinTable(
            name="QuestionType",
            joinColumns = @JoinColumn(name="tId"),
            inverseJoinColumns = @JoinColumn(name="qId")
    )
    public Set<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(Set<Question> questions) {
        this.questions = questions;
    }
}
