package com.example.demo;

import jakarta.persistence.Embeddable;

@Embeddable
public class Name {

    private String firstName;

    private String lastName;

    private String middleName;
    private String salutation;
}