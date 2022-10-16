package com.marocAir.dao;

import com.marocAir.model.Vols;

import java.sql.*;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;

public class DaoVols extends Dao{

    public DaoVols() throws ClassNotFoundException, SQLException {
    }



    public ArrayList<Vols> getVols(int Id,Date date) throws SQLException{
        ArrayList<Vols> vols = new ArrayList<>();
        PreparedStatement st = this.conn.prepareStatement("SELECT * FROM vols WHERE id_direction = ? AND date=?");
        st.setInt(1,Id);
        st.setDate(1,date);
        ResultSet result = st.executeQuery();
        while(result.next()){
            Vols vol = new Vols();
            vol.setId(result.getInt("id"));
            vol.setDate(result.getDate("date"));
            vol.setTime(result.getTime("time"));
            vol.setPrix(result.getLong("prix"));
            vol.setEscale(result.getArray("escale"));
            vols.add(vol);
        }

        return vols;
    }



    public void createVol(int idDirection, Long prix, Date date, Time time, int[] escale){

    }



    /*

    public ArrayList<Vols> getVols(int[] Ids,Date date) throws SQLException {
        ArrayList<Vols> vols = new ArrayList<>();
        Object[] values = Arrays.stream(Ids).mapToObj(i -> Integer.valueOf(i)).toArray();
        PreparedStatement st = this.conn.prepareStatement("SELECT * FROM vols WHERE id_direction = ANY(ARRAY[?]) AND date = ?");
        Array array = conn.createArrayOf("int", values);
        st.setArray(1,array);
        ResultSet result = st.executeQuery();
        while(result.next()){
            Vols vol = new Vols();
            vol.setId(result.getInt("id"));
            vol.setDate(result.getDate("date"));
            vol.setTime(result.getTime("time"));
            vol.setPrix(result.getLong("prix"));
            vol.setEscale(result.getArray("escale"));
            vols.add(vol);
        }

        return vols;
    }

     */

}
