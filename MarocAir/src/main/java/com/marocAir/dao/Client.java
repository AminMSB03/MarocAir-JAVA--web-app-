package com.marocAir.dao;

public interface Client {


    // Function to override
    public int save(); //save function to insert data into table
    public int delete(); //delete function to delete a record from the table
    public int update(); //update function to update a record from the table
    public ClientImp[] select(); //select function to get all records from a specific table
    public ClientImp selectSingle(); // selectSingle function to get one specific record from the table


}
