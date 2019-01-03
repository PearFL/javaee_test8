package com.itheima.po;

public class Card {
    private Integer id;//银行卡id
    private String card_id;//卡号
    private String card_date;//办卡日期
    private Double card_balance;//余额
    private Integer customer_id;//客户id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCard_id() {
        return card_id;
    }

    public void setCard_id(String card_id) {
        this.card_id = card_id;
    }

    public String getCard_date() {
        return card_date;
    }

    public void setCard_date(String card_date) {
        this.card_date = card_date;
    }

    public Double getCard_balance() {
        return card_balance;
    }

    public void setCard_balance(Double card_balance) {
        this.card_balance = card_balance;
    }

    public Integer getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(Integer customer_id) {
        this.customer_id = customer_id;
    }


}
