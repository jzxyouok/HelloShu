package com.shu.service;

import com.shu.dao.QuestionDao;
import com.shu.dao.UserDao;
import com.shu.entity.Question;
import com.shu.entity.Times;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CookieValue;

import java.util.Date;

/**
 * Created by 李长虹 on 2017/6/24.
 */
/*
private String qId;//问题Id
private String qContent;//问题内容
private User user;//所提问者
private int numberOfAnswer;//回答人数
private int numberOfViews;//查看人数
private Times askedTime;//提出时间
private Set<Remark> remarks = new LinkedHashSet<Remark>();//所有评论
private Set<Type> types = new LinkedHashSet<Type>();//所属类型
*/

//cookie 由userId 构成

@Service
public class QuestionService {
    @Autowired
    QuestionDao questionDao;
    @Autowired
    UserDao userDao;
    //添加问题
    public String addQuestion(String qCnotent, @CookieValue String userId){
        Date date=new Date();
        Question question=new Question();
        Times times=new Times(date);
        question.setqContent(qCnotent);
        question.setUser(userDao.getUser(userId));
        question.setNumberOfAnswer(0);
        question.setNumberOfViews(0);
        question.setAskedTime(times);
        return questionDao.addQuestion(question).toString();
    }
}
