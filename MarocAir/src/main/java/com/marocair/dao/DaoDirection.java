package com.marocair.dao;

import java.sql.SQLException;

public interface DaoDirection {
        public int[] selectDirection(String depart, String arrive) throws SQLException;
}
