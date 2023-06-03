package com.example.myshop.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "checkout")
public class OrderDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String FirstName;
    private String LastName;
    private String Address;
    private int ApartmentNumber;
    private int Postcode;
    private String City;
    private int PhoneNumber;
    private String Email;
    private String Information;
}
