/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.customermanager.service;

import com.customermanager.model.Customer;
import com.customermanager.repo.CustomerRepo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author d
 */
@Service
public class CustomerService {
    
    @Autowired
    private CustomerRepo customerRepo;
    
    public List<Customer> listAll(){
        return (List<Customer>) customerRepo.findAll();
    }
    
    public void save(Customer customer){
        customerRepo.save(customer);
    }
}
