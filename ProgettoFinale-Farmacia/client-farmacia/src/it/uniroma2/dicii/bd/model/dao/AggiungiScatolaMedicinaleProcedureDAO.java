package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;


public class AggiungiScatolaMedicinaleProcedureDAO implements GenericProcedureDAO <Void> {
    @Override
    public Void execute(Object... params) throws DAOException {
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call AggiungiScatolaMedicinale(?,?,?,?)}");
            cs.setInt(1, (int) params[0]);
            cs.setString(2, (String) params[1]);
            cs.setString(3, (String) params[2]);
            cs.setDate(4, Date.valueOf((LocalDate) params[3]) );
            boolean status = cs.execute();
        } catch (SQLException e) {
            throw new DAOException("AggiungiScatolaMedicinale error: " + e.getMessage());
        }
        return null;
    }
}