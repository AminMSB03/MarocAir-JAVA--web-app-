package com.marocair.dao;

import lombok.Data;
import org.apache.commons.lang3.RandomStringUtils;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@Data
public class ClientImp extends Dao implements DaoInterface    {
    private String code;
    private String nom;
    private String prenom;
    private String email;
    private String numTele;

    public ClientImp() throws SQLException, ClassNotFoundException {
        super();
        final int SHORT_ID_LENGTH = 8;
        String shortId = RandomStringUtils.random(SHORT_ID_LENGTH);
    }

    @Override
    public boolean save() throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("INSERT INTO client(code,nom,prenom,email,Numtele) VLAUES(?,?,?,?,?)");
        st.setString(1,this.code);
        st.setString(2,this.nom);
        st.setString(3,this.prenom);
        st.setString(4,this.email);
        st.setString(5,this.numTele);
        boolean result = st.execute();
        return result;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        PreparedStatement st = this.conn.prepareStatement("DELETE * FROM client WHERE id=?");
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
        PreparedStatement st = this.conn.prepareStatement("SELECT * FROM client WHERE id = ?");
        st.setInt(1,ClientId);
        ResultSet result = st.executeQuery();
        return result;
    }
}
