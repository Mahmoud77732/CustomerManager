/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.customermanager.controller;

import com.customermanager.model.Customer;
import com.customermanager.service.CustomerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author d
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    
    @Autowired
    private CustomerService customerService;
    
    @RequestMapping("/")
    public ModelAndView home(){
        ModelAndView mView = new ModelAndView();
        mView.addObject("message", "Hello from CustomerController");
        mView.setViewName("index");
        return mView;
    }
    
    @RequestMapping("/all")
    public ModelAndView getAll(){
        ModelAndView mView = new ModelAndView();
        List<Customer> customers = customerService.listAll();
        mView.addObject("customers", customers);
        mView.setViewName("index");
        return mView;
    }
    
}
