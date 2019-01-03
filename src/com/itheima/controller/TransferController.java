package com.itheima.controller;

import com.itheima.po.Card;
import com.itheima.po.Message;
import com.itheima.po.Transfer;
import com.itheima.service.TransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TransferController {
    //注解注入TransferService
    @Autowired
    private TransferService transferService;
    @RequestMapping("/transferpage")
    public String transferpage(Model model, Integer carid, Integer cusid){
        model.addAttribute("carid",carid);
        model.addAttribute("cusid",cusid);
        return "transferpage";
    }

    //转账，并接收页面请求的JSON数据,返回JSON格式结果
    @RequestMapping("/AccountTransfer")
    @ResponseBody
    public Message transfer(@RequestBody Transfer transfer){
        //打印接收的JSON格式数据
        System.out.println("输出："+transfer.toString());

        Card inbanKcard=new Card();
        inbanKcard.setCard_id(transfer.getCard_id());
        inbanKcard.setCard_balance(transfer.getTransfer_amount());
        String message=transferService.transfer(transfer.getId(),inbanKcard);
        Message message1=new Message();
        message1.setMessage(message);

        //打印JSON格式的响应
        return message1;
    }
}
