package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;


public class AggiungiUtilizzoProcedureDAO implements GenericProcedureDAO <Void> {
    @Override
    public Void execute(Object... params) throws DAOException {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call AggiungiUtilizzo(?,?,?)}");
            cs.setString(1, (String) params[0]);
            cs.setString(2, (String) params[1]);
            cs.setString(3, (String) params[2]);
            boolean status = cs.execute();
        } catch (SQLException e) {
            throw new DAOException("AggiungiUtilizzo error: " + e.getMessage());
        }
        return null;
    }
}