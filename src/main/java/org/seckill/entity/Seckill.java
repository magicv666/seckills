package org.seckill.entity;

import java.util.Date;

public class Seckill {

    private long seckillId;

    private String name;

    private int number;

    private Date startTime;

    private Date endaTime;

    private Date creatTime;

    public long getSeckillId() {
        return seckillId;
    }

    public void setSeckillId(long seckillId) {
        this.seckillId = seckillId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndaTime() {
        return endaTime;
    }

    public void setEndaTime(Date endaTime) {
        this.endaTime = endaTime;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
    }

    @Override
    public String toString() {
        return "Seckill{" +
                "seckillId=" + seckillId +
                ", name='" + name + '\'' +
                ", number=" + number +
                ", startTime=" + startTime +
                ", endaTime=" + endaTime +
                ", creatTime=" + creatTime +
                '}';
    }
}
