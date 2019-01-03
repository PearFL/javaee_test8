package com.itheima.service;

import com.itheima.po.Card;

public interface TransferService {
    public Card findCardById(Integer id);
    public Integer findCardIdByCardNum(String card_id);
    public String transfer(Integer customer_id,Card banKcard);
}
