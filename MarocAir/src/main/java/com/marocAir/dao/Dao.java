package com.marocAir.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class Dao {
    public Connection conn;


    public Dao() throws ClassNotFoundException, SQLException {
        Class.forName("org.postgresql.Driver");
        this.conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/marocAir","postgres","vendredi1120deux!");
    }

}
