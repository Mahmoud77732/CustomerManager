/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.customermanager.repo;

import com.customermanager.model.Customer;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author d
 */
public interface CustomerRepo extends CrudRepository<Customer, Long> {
    
}
