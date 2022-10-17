package com.marocair.dao;

import com.marocair.model.Direction;

import java.sql.SQLException;
import java.util.ArrayList;

public interface DaoDirection {
        int[] selectDirection(String depart, String arrive) throws SQLException;

        ArrayList<Direction> selectAllDirections () throws SQLException;
}
