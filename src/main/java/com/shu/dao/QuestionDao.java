package com.shu.dao;

import com.shu.entity.Question;
import com.shu.tools.Status;
import org.springframework.stereotype.Repository;

import static com.shu.tools.Status.FAILD;
import static com.shu.tools.Status.SUCCESS;

/**
 * Created by 李长虹 on 2017/6/24.
 */
@Repository
public class QuestionDao extends Dao{
    public Status addQuestion(Question question){
        try{
            this.getSession().save(question);
            return SUCCESS;
        }catch (Exception e){
            return FAILD;
        }
    }
}
