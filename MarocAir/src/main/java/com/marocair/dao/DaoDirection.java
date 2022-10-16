package com.marocair.dao;

import java.sql.SQLException;

public interface DaoDirection {
        int[] selectDirection(String depart, String arrive) throws SQLException;
}
