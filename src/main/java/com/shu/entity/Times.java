package com.shu.entity;

import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 李长虹 on 2017/6/17.
 */
@Embeddable
public class Times implements Serializable {
    private int year;
    private int month;
    private int day;
    private int hour;
    private int minute;
    private int second;

    public Times() {

    }

    public Times(Date now) {
        year = now.getYear();
        month = now.getMonth();
        day = now.getDay();
        hour = now.getHours();
        minute = now.getMinutes();
        second = now.getSeconds();
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

    @Override
    public String toString() {//直接利用toString函数表示出该问题或评论提出时间距当前时间多久
        String s = "";        //精确到最大
        Date now = new Date();
        if (now.getYear() - year > 0) {
            s += now.getYear() - year + " 年";
        } else if (now.getMonth() - month > 0) {
            s += now.getYear() - month + " 月";
        } else if (now.getDay() - day > 0) {
            s += now.getDay() - day + " 天";
        } else if (now.getHours() - hour > 0) {
            s += now.getHours() - hour + " 小时";
        } else if (now.getMinutes() - minute > 0) {
            s += now.getMinutes() - minute + " 分钟";
        } else s += now.getSeconds() - second + " 秒钟";
        return s;
    }
}
