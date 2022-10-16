package com.marocAir.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor
public class Direction {
    private int id;
    private String depart;
    private String arrive;

}
