package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;


public class AggiungiIndirizzoProcedureDAO implements GenericProcedureDAO <Void> {
    @Override
    public Void execute(Object... params) throws DAOException {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call AggiungiIndirizzo(?,?,?,?,?,?,?)}");
            cs.setString(1, (String) params[0]);
            cs.setString(2, (String) params[1]);
            cs.setString(3, (String) params[2]);
            cs.setString(4, (String) params[3]);
            cs.setString(5, (String) params[4]);
            cs.setString(6, (String) params[5]);
            cs.setInt(7, (int) params[6]);
            boolean status = cs.execute();
        } catch (SQLException e) {
            throw new DAOException("AggiungiIndirizzo error: " + e.getMessage());
        }
        return null;
    }
}