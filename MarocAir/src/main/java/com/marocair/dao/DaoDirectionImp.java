package com.marocair.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DaoDirectionImp extends Dao implements DaoDirection   {

    public DaoDirectionImp() throws ClassNotFoundException, SQLException {
    }

    public Boolean createDirections(String firstCity, String secondCity) throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("INSERT INTO direcions(depart,arrive) VALUES(?,?),(?,?)");
        st.setString(1, firstCity);
        st.setString(2, secondCity);
        st.setString(3, secondCity);
        st.setString(4, firstCity);
        Boolean result = st.execute();
        return !result;
    }

    public int[] selectDirection(String depart, String arrive) throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("SELECT * FROM directions WHERE (depart = ? AND arrive = ?) OR (depart = ? AND arrive = ?)");
        st.setString(1,depart);
        st.setString(2,arrive);
        st.setString(3,arrive);
        st.setString(4,depart);
        ResultSet result = st.executeQuery();
        int rowCount = 0;
        while (result.next()) {
            rowCount++;
        }
        int[] Ids = new int[rowCount];
        int i=0;
        while(result.next()){
            Ids[i] = result.getInt("id");
            i++;
        }
        return Ids;
    }
}
