package com.marocair.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface DaoInterface {
    // Function to override
    public boolean save() throws SQLException; //save function to insert data into table
    public boolean delete(int id) throws SQLException; //delete function to delete a record from the table
    public boolean update(); //update function to update a record from the table
    public ResultSet select(); //select function to get all records from a specific table
    public ResultSet selectSingle(int id) throws SQLException; // selectSingle function to get one specific record from the table
}
