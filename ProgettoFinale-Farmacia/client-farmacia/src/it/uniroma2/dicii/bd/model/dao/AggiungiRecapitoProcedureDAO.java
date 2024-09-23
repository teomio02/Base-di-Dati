package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;


public class AggiungiRecapitoProcedureDAO implements GenericProcedureDAO <Void> {
    @Override
    public Void execute(Object... params) throws DAOException {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call AggiungiRecapito(?,?,?,?)}");
            cs.setString(1, (String) params[0]);
            cs.setString(2, (String) params[1]);
            cs.setInt(3, (int) params[2]);
            cs.setString(4, (String) params[3]);
            boolean status = cs.execute();
        } catch (SQLException e) {
            throw new DAOException("AggiungiRecapito error: " + e.getMessage());
        }
        return null;
    }
}