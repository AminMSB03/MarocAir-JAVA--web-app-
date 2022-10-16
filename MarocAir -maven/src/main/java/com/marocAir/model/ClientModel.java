package com.marocAir.model;

import lombok.Data;

@Data
public class ClientModel {
    private int id;
    private String code;
    private String prenom;
    private String email;
    private String numTele;
}
