package com.itheima.dao;

import com.itheima.po.Card;

public interface TransferDao {
    public Card findCardById(Integer id);
    public Integer findCardIdByCardNum(String cardnum);
    public void transfer(Card banKcard);
}
