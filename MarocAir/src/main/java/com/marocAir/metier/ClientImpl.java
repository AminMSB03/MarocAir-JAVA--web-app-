package com.marocair.metier;


import com.marocair.dao.DaoDirection;
import com.marocair.dao.DaoDirectionImp;
import com.marocair.dao.DaoVols;
import com.marocair.model.Vols;

import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;

public class ClientImpl {


    public ArrayList<Vols> search(String depart, String arrive, Date date) throws Exception {
        // get the directions ids to use the on the search of the vols
        DaoDirection daoDirection = new DaoDirectionImp();
        int[] idsDirection= daoDirection.selectDirection(depart,arrive);

        DaoVols daoVols = new DaoVols();
        ArrayList<Vols> vols = daoVols.getVols(idsDirection,date);
        return vols;
    }

}
