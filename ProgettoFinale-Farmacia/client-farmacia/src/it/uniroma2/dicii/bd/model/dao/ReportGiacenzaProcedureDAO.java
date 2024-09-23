package it.uniroma2.dicii.bd.model.dao;

import it.uniroma2.dicii.bd.exception.DAOException;
import it.uniroma2.dicii.bd.model.domain.InventoryReport;
import it.uniroma2.dicii.bd.model.domain.Product;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


public class ReportGiacenzaProcedureDAO implements GenericProcedureDAO <InventoryReport> {
    @Override
    public InventoryReport execute(Object... params) throws DAOException {
        InventoryReport inventoryReport = new InventoryReport();
        try {
            Connection conn = ConnectionFactory.getConnection();
            CallableStatement cs = conn.prepareCall("{call ReportGiacenza()}");

            boolean status = cs.execute();

            if(status) {
                ResultSet rs = cs.getResultSet();
                while (rs.next()) {
                    Product product = new Product(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getInt(4),rs.getInt(5));
                    inventoryReport.addProduct(product);
                }
            }
        } catch (SQLException e) {
            throw new DAOException("ReportGiacenza error: " + e.getMessage());
        }
        return inventoryReport;
    }
}