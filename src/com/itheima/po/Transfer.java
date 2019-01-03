package com.itheima.po;

public class Transfer {
    private Integer id;//转出卡号id
    private String card_id;//入账卡号
    private Double transfer_amount;//金额

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

    public Double getTransfer_amount() {
        return transfer_amount;
    }

    public void setTransfer_amount(Double transfer_amount) {
        this.transfer_amount = transfer_amount;
    }

    @Override
    public String toString() {
        return "Transfer{" +
                "id=" + id +
                ", card_id='" + card_id + '\'' +
                ", transfer_amount='" + transfer_amount + '\'' +
                '}';
    }

}
