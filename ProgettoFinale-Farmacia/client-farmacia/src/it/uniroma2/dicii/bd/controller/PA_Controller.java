package it.uniroma2.dicii.bd.controller;


import it.uniroma2.dicii.bd.exception.DAOException;
import it.uniroma2.dicii.bd.model.dao.*;
import it.uniroma2.dicii.bd.model.domain.*;
import it.uniroma2.dicii.bd.view.PA_View;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class PA_Controller  implements Controller{

    @Override
    public void start() {
        try {
            ConnectionFactory.changeRole(Role.PA);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }

        while(true) {
            int choice;
            try {
                choice = PA_View.showMenu();
            } catch(IOException e) {
                throw new RuntimeException(e);
            }

            switch(choice) {
                case 1 -> aggiungiFornitore();
                case 2 -> aggiungiProdotto();
                case 3 -> aggiungiScatola();
                case 4 -> reportGiacenza();
                case 5 -> reportScadenze();
                case 6 -> dismissioneScatole();
                case 7 -> System.exit(0);
                default -> throw new RuntimeException("Invalid choice");
            }
        }
    }

    public void aggiungiFornitore() {
        Supplier supplier;
        ArrayList<Address> address_list;
        ArrayList<Com_Address> com_address_list;
        Void dao;
        try {
            supplier = PA_View.get_supplier_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }
        try {
            address_list = PA_View.get_address_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }
        try {
            com_address_list = PA_View.get_com_address_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }

        try {
            dao = new AggiungiFornitoreProcedureDAO().execute(supplier.getName());
        } catch(DAOException e) {
            throw new RuntimeException(e);
        }
        for(Address address : address_list) {
            try {
                dao = new AggiungiIndirizzoProcedureDAO().execute(address.getCountry(),address.getCity(),address.getCAP(),address.getStreet(),address.getStrNum(),supplier.getName(),address.getPref());
            } catch(DAOException e) {
                throw new RuntimeException(e);
            }
        }
        for(Com_Address com_address : com_address_list) {
            try {
                dao = new AggiungiRecapitoProcedureDAO().execute(com_address.getCom_addr(),supplier.getName(),com_address.getPref(),com_address.getType());
            } catch(DAOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void aggiungiProdotto() {
        Product product;
        ArrayList<String> use_list;
        Void dao;
        try {
            product = PA_View.get_product_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }
        try {
            use_list= PA_View.get_use_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }
        try {
            dao = new AggiungiProdottoProcedureDAO().execute(product.getPName(),product.getFName(),product.isRecipe(),product.getPrice(),product.isMutuability(),product.getSNum(),product.getCNum());
        } catch(DAOException e) {
            throw new RuntimeException(e);
        }
        for(String use : use_list) {
            try {
                dao = new AggiungiUtilizzoProcedureDAO().execute(product.getFName(),product.getPName(),use);
            } catch(DAOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void aggiungiScatola() {
        MedicineBox medicineBox;
        Void dao;
        try {
            medicineBox = PA_View.get_medicineBox_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }
        try {
            dao = new AggiungiScatolaMedicinaleProcedureDAO().execute(medicineBox.getId(),medicineBox.getPName(),medicineBox.getFName(),medicineBox.getExpDate());
        } catch(DAOException e) {
            throw new RuntimeException(e);
        }
    }

    public void reportGiacenza() {
        InventoryReport inventoryReport;
        try {
           inventoryReport = new ReportGiacenzaProcedureDAO().execute();
            PA_View.print_inventory_report(inventoryReport);
        } catch(DAOException e) {
            throw new RuntimeException(e);
        }
    }

    public void reportScadenze() {
        ExpirationReport expirationReport;
        try {
            expirationReport = new ReportScadenzeProcedureDAO().execute();
            PA_View.print_expiration_report(expirationReport);
        } catch(DAOException e) {
            throw new RuntimeException(e);
        }
    }

    public void dismissioneScatole() {
        MedicineBox medicineBox;
        Void dao;
        try {
            medicineBox = PA_View.get_expiredBox_information();
        } catch(IOException e) {
            throw new RuntimeException(e);
        }
        try {
            dao = new DismissioneScatoleProcedureDAO().execute(medicineBox.getId(),medicineBox.getPName(),medicineBox.getFName());
        } catch(DAOException e) {
            throw new RuntimeException(e);
        }
    }
}