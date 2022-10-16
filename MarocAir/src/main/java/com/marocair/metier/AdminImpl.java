package com.marocair.metier;

import com.marocair.dao.DaoDirectionImp;

import java.sql.SQLException;

public class AdminImpl {
    public AdminImpl(){}

    public void createVols(String depart, String arrive, String escale) {
    }

    public String createDirections(String firstCity, String secondCity) throws SQLException, ClassNotFoundException {
        DaoDirectionImp DDI = new DaoDirectionImp();
        Boolean res = DDI.createDirections(firstCity,secondCity);
        if (res)
            return "Directions added successfully";
        else
            return "Something went wrong";
    }
}
