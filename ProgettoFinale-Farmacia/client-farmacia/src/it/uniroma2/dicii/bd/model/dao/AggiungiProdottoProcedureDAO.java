package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;


public class AggiungiProdottoProcedureDAO implements GenericProcedureDAO <Void> {
    @Override
    public Void execute(Object... params) throws DAOException {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call AggiungiProdotto(?,?,?,?,?,?,?)}");
            cs.setString(1, (String) params[0]);
            cs.setString(2, (String) params[1]);
            cs.setInt(3, (int) params[2]);
            cs.setFloat(4, (Float) params[3]);
            cs.setInt(5, (int) params[4]);
            cs.setInt(6, (int) params[5]);
            cs.setInt(7, (int) params[6]);
            boolean status = cs.execute();
        } catch (SQLException e) {
            throw new DAOException("AggiungiProdotto error: " + e.getMessage());
        }
        return null;
    }
}