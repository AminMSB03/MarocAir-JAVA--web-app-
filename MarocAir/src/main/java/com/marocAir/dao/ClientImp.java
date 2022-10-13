package com.marocAir.dao;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.StandardException;

import java.sql.SQLException;


@Data
public class ClientImp extends Dao implements Client    {
    private String code;
    private String nom;
    private String prenom;
    private String email;
    private String Numtele;

    public ClientImp() throws SQLException, ClassNotFoundException {
        super();
    }

    @Override
    public int save() {
        String query = "SELECT * FROM ";
        return 0;
    }

    @Override
    public int delete() {
        return 0;
    }

    @Override
    public int update() {
        return 0;
    }

    @Override
    public ClientImp[] select() {
        return new ClientImp[0];
    }

    @Override
    public ClientImp selectSingle() {
        return null;
    }
}
