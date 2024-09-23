package it.uniroma2.dicii.bd.controller;

import it.uniroma2.dicii.bd.exception.DAOException;
import it.uniroma2.dicii.bd.model.dao.ConnectionFactory;
import it.uniroma2.dicii.bd.model.dao.VenditaProcedureDAO;
import it.uniroma2.dicii.bd.model.domain.Role;
import it.uniroma2.dicii.bd.model.domain.SoldBox;
import it.uniroma2.dicii.bd.view.PM_View;

import java.io.IOException;
import java.sql.SQLException;

public class PM_Controller implements Controller{
    @Override
    public void start() {
        try {
            ConnectionFactory.changeRole(Role.PM);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }

        while(true) {
            int choice;
            try {
                choice = PM_View.showMenu();
            } catch(IOException e) {
                throw new RuntimeException(e);
            }

            switch(choice) {
                case 1 -> vendita();
                case 2 -> System.exit(0);
                default -> throw new RuntimeException("Invalid choice");
            }
        }
    }

    public void vendita() {
        SoldBox soldBox;
        Void dao;
        try {
            soldBox = PM_View.get_sale_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }
        try {
            dao = new VenditaProcedureDAO().execute(soldBox.getId(),soldBox.getPName(),soldBox.getFName(),soldBox.getCF(),soldBox.getAmount(),soldBox.getSaleDate());
        } catch(DAOException e) {
            throw new RuntimeException(e);
        }
    }
}
