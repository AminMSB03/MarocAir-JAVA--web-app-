package com.marocAir.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DaoDirectionImp extends Dao implements DaoDirection   {

    public DaoDirectionImp() throws ClassNotFoundException, SQLException {
    }

    public Boolean createDirections(String firstCity, String secondCity) throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("INSERT INTO direcions(depart,arrive) VALUES(?,?),(?,?)");
        st.setString(1,firstCity);
        st.setString(2,secondCity);
        st.setString(3,secondCity);
        st.setString(4,firstCity);
        Boolean result = st.execute();
        return !result;
    }

    public int selectDirection(String firstCity, String secondCity) throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("SELECT * FROM directions WHERE depart = ? AND arrive = ?");
        st.setString(1,firstCity);
        st.setString(2,secondCity);
        ResultSet result = st.executeQuery();
        int id = -1;
        while (result.next()){
            id = result.getInt("id");
        }
        return id;
    }
}
