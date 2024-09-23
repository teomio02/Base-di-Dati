package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;


public class VenditaProcedureDAO implements GenericProcedureDAO <Void> {
    @Override
    public Void execute(Object... params) throws DAOException {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call Vendita(?,?,?,?,?,?)}");
            cs.setInt(1, (int) params[0]);
            cs.setString(2, (String) params[1]);
            cs.setString(3, (String) params[2]);
            cs.setString(4, (String) params[3]);
            cs.setFloat(5, (float) params[4]);
            cs.setDate(6, Date.valueOf((LocalDate) params[5]) );
            boolean status = cs.execute();
        } catch (SQLException e) {
            throw new DAOException("Vendita error: " + e.getMessage());
        }
        return null;
    }
}