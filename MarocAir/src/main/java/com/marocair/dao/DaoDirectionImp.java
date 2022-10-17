package com.marocair.dao;

import com.marocair.model.Direction;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class DaoDirectionImp extends Dao implements DaoDirection   {

    public DaoDirectionImp() throws ClassNotFoundException, SQLException {
    }

    public Boolean createDirections(String firstCity, String secondCity)  {
        try {
            PreparedStatement st = this.conn.prepareStatement("INSERT INTO directions(depart,arrive) VALUES(?,?),(?,?)");
            st.setString(1, firstCity);
            st.setString(2, secondCity);
            st.setString(3, secondCity);
            st.setString(4, firstCity);
            Boolean result = st.execute();
            return !result;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
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

    public ArrayList<Direction> selectAllDirections (){
        ArrayList<Direction> directions = new ArrayList<>();
        try {
            PreparedStatement st = this.conn.prepareStatement("SELECT * FROM directions");
            ResultSet result = st.executeQuery();
            do {
                Direction d = new Direction();
                d.setId(Integer.parseInt(result.getString(1)));
                d.setDepart(result.getString(2));
                d.setArrive(result.getString(3));
                directions.add(d);
            }while (result.next());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return directions;
    }
}
