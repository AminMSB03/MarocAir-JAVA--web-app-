package com.marocAir.model;

import lombok.Data;

import java.sql.Array;
import java.sql.Time;
import java.util.Date;

@Data
public class Vols {
    private int id;
    private double prix;
    private Date date;
    private Time time;
    private Array escale;

}
