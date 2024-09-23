package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;

import java.sql.*;


public class AggiungiFornitoreProcedureDAO implements GenericProcedureDAO <Void> {
    @Override
    public Void execute(Object... params) throws DAOException {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call AggiungiFornitore(?)}");
            cs.setString(1, (String) params[0]);
            boolean status = cs.execute();
        } catch (SQLException e) {
            throw new DAOException("AggiungiFornitore error: " + e.getMessage());
        }
        return null;
    }
}