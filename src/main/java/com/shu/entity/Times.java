package com.shu.entity;

import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.Embeddable;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 李长虹 on 2017/6/17.
 */
@Embeddable
public class Times implements Serializable {
    private String tId;
    private int year;
    private int month;
    private int hour;
    private int day;
    private int minute;
    private int second;

    public String gettId() {
        return tId;
    }

    public void settId(String tId) {
        this.tId = tId;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDay() {
        return day;

    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getHour() {
        return hour;
    }

    public void setHour(int hour) {
        this.hour = hour;
    }

    public int getMinute() {
        return minute;
    }

    public void setMinute(int minute) {
        this.minute = minute;
    }

    public int getSecond() {
        return second;
    }

    public void setSecond(int second) {
        this.second = second;
    }

    public String pastTime() {//输出据当前多久时间
        String s = "";
        Times now=getCurrentTime();
        if (now.getYear() - year > 0) {
            s += now.getYear() - year + " 年";
        } else if (now.getMonth() - month > 0) {
            s += now.getYear() - month + " 月";
        } else if (now.getDay() - day > 0) {
            s += now.getDay() - day + " 天";
        } else if (now.getHour() - hour > 0) {
            s += now.getHour() - hour + " 小时";
        } else if (now.getMinute() - minute > 0) {
            s += now.getMinute() - minute + " 分钟";
        } else s += now.getSecond() - second + " 秒钟";
        return s;
    }

    private Times getCurrentTime() {
        Times now = new Times();
        Date date =new Date();
        year=date.getYear();
        month=date.getMonth();
        day=date.getDay();
        hour=date.getHours();
        minute=date.getMinutes();
        second=date.getSeconds();
        return now;
    }
}
