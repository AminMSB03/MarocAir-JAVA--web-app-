package com.marocAir.dao;

import lombok.Data;
import org.apache.commons.lang3.RandomStringUtils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@Data
public class DirectionImp extends Dao implements DaoInterface {
    private String depart;
    private String arrive;

    public DirectionImp() throws SQLException, ClassNotFoundException {
        super();
        final int SHORT_ID_LENGTH = 8;
        String shortId = RandomStringUtils.random(SHORT_ID_LENGTH);
    }

    @Override
    public boolean save() throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("INSERT INTO direction(depart,arrive) VLAUES(?,?)");
        st.setString(1,this.depart);
        st.setString(2,this.arrive);
        boolean result = st.execute();
        return result;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("DELETE * FROM WHERE id=?");
        st.setInt(1,id);
        boolean result = st.execute();
        return result;
    }

    @Override
    public boolean update() {
        return true;
    }

    @Override
    public ResultSet select() {

        return null;
    }

    @Override
    public ResultSet selectSingle(int ClientId) throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("SELECT * FROM directions WHERE id = ?");
        st.setInt(1,ClientId);
        ResultSet result = st.executeQuery();
        return result;
    }
}
