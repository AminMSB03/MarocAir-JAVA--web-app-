package com.marocAir.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DaoDirectionImp extends Dao implements DaoDirection   {

    public DaoDirectionImp() throws ClassNotFoundException, SQLException {
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
