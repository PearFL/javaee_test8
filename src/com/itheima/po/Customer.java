package com.itheima.po;

import java.util.List;

/**
 * 客户持久化类
 */
public class Customer {
    private Integer id;//客户id
    private String customer_name;//姓名
    private String customer_sex;//性别
    private String customer_birth;//出生日期
    private String customer_idcard;//身份证号
    private String customer_mobile;//手机号码
    private List<Card> banKcardList;//客户关联的银行卡

    public String getCustomer_mobile() {
        return customer_mobile;
    }

    public void setCustomer_mobile(String customer_mobile) {
        this.customer_mobile = customer_mobile;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getCustomer_sex() {
        return customer_sex;
    }

    public void setCustomer_sex(String customer_sex) {
        this.customer_sex = customer_sex;
    }

    public String getCustomer_birth() {
        return customer_birth;
    }

    public void setCustomer_birth(String customer_birth) {
        this.customer_birth = customer_birth;
    }

    public String getCustomer_idcard() {
        return customer_idcard;
    }

    public void setCustomer_idcard(String customer_idcard) {
        this.customer_idcard = customer_idcard;
    }



    public List<Card> getBanKcardList() {
        return banKcardList;
    }

    public void setBanKcardList(List<Card> banKcardList) {
        this.banKcardList = banKcardList;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", customer_name='" + customer_name + '\'' +
                ", customer_sex='" + customer_sex + '\'' +
                ", customer_birth=" + customer_birth +
                ", customer_idcard='" + customer_idcard + '\'' +
                ", customer_mobile='" + customer_mobile + '\'' +
                ", banKcardList=" + banKcardList +
                '}';
    }

}
