package com.itheima.service.impl;

import com.itheima.dao.TransferDao;
import com.itheima.po.Card;
import com.itheima.service.TransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TransferServiceImpl implements TransferService {
    //注解注入TransferDao
    @Autowired
    private TransferDao transferDao;

    // 转账操作
    @Override
    public String transfer(Integer id, Card banKcard) {

        Integer inbid=this.transferDao.findCardIdByCardNum(banKcard.getCard_id());
        System.out.println("inbid: "+inbid);
        Card inbanKcard=this.transferDao.findCardById(inbid);
        Card outbanKcard=this.transferDao.findCardById(id);

        if (inbanKcard==null){
            return "转账账号不存在，请核对";
        }
        if (outbanKcard.getCard_balance()<banKcard.getCard_balance()){
            return "余额不足，无法转账";
        }
        inbanKcard.setCard_balance(inbanKcard.getCard_balance()+banKcard.getCard_balance());
        outbanKcard.setCard_balance(outbanKcard.getCard_balance()-banKcard.getCard_balance());
        transferDao.transfer(inbanKcard);
        transferDao.transfer(outbanKcard);

        return "转账成功";
    }
}
