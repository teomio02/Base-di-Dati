package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;
import it.uniroma2.dicii.bd.model.domain.ExpirationReport;
import it.uniroma2.dicii.bd.model.domain.InventoryReport;
import it.uniroma2.dicii.bd.model.domain.MedicineBox;
import it.uniroma2.dicii.bd.model.domain.Product;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


public class ReportScadenzeProcedureDAO implements GenericProcedureDAO <ExpirationReport> {
    @Override
    public ExpirationReport execute(Object... params) throws DAOException {
        ExpirationReport expirationReport = new ExpirationReport();
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call ReportScadenze()}");

            boolean status = cs.execute();

            if(status) {
                ResultSet rs = cs.getResultSet();
                while (rs.next()) {
                    MedicineBox medicineBox = new MedicineBox(rs.getInt(1),rs.getString(2),rs.getString(3), rs.getDate(4).toLocalDate(),rs.getInt(5),rs.getInt(6));
                    expirationReport.addMedicineBox(medicineBox);
                }
            }
        } catch (SQLException e) {
            throw new DAOException("ReportScadenze error: " + e.getMessage());
        }
        return expirationReport;
    }
}