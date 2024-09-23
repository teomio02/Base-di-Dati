package it.uniroma2.dicii.bd.view;

import it.uniroma2.dicii.bd.model.domain.*;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.regex.Pattern;

public class PA_View {

    public static int showMenu() throws IOException {
        System.out.println("*********************************");
        System.out.println("*    PHARMACY DASHBOARD    *");
        System.out.println("*********************************\n");
        System.out.println("*** What should I do for you? ***\n");
        System.out.println("1) Add new supplier");
        System.out.println("2) Add new medicine");
        System.out.println("3) Add new medicine box");
        System.out.println("4) Generate an inventory report");
        System.out.println("5) Generate an expiration date report");
        System.out.println("6) Disposal of expired boxes");
        System.out.println("7) Quit");

        Scanner input = new Scanner(System.in);
        String str_choice;
        int choice = 0;
        while (true) {
            System.out.print("Please enter your choice: ");
            str_choice = input.nextLine();
            if (!str_choice.isEmpty() && str_choice.matches("[1-7]")) {
                System.out.println("*********************************");
                choice = Integer.parseInt(str_choice);
                break;
            }
            System.out.println("Invalid option");
        }

        return choice;
    }

    public static Supplier get_supplier_information() throws IOException {
        String name;

        Scanner input = new Scanner(System.in);
        System.out.println("<Add new supplier> operation:\n");

        while (true){
            System.out.print("Please enter supplier name: ");
            name= input.nextLine();
            if (!name.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }
        Supplier supplier = new Supplier(name);
        return supplier;
    }

    public static ArrayList<Address> get_address_information() throws IOException {
        ArrayList<Address> addr_list = new ArrayList<>();
        Address address;
        String country,city,street, flag, CAP, strNum;
        int pref;

        flag="yes";
        pref=1;

        Scanner input = new Scanner(System.in);
        System.out.print("Please enter supplier address:\n");
        System.out.print("<preferred address>\n");
        while (flag.equals("yes")){
            while (true) {
                System.out.print("  > Country: ");
                country= input.nextLine();
                if (!country.isEmpty()) {
                    break;
                }
                System.out.println("Invalid option");
            }
            while (true) {
                System.out.print("  > City: ");
                city= input.nextLine();
                if (!city.isEmpty()) {
                    break;
                }
                System.out.println("Invalid option");
            }

            while (true) {
                System.out.print("  > CAP: ");
                CAP = input.nextLine();
                if (!CAP.isEmpty() && ((Pattern.compile("\\d{5}")).matcher(CAP)).matches()) {
                    break;
                }
                System.out.println("Invalid option");
            }

            while (true) {
                System.out.print("  > Street: ");
                street = input.nextLine();
                if (!street.isEmpty()) {
                    break;
                }
                System.out.println("Invalid option");
            }

            while (true) {
                System.out.print("  > street number: ");
                strNum = input.nextLine();
                if (!strNum.isEmpty() && ((Pattern.compile("\\d+[a-zA-Z]?")).matcher(strNum)).matches()) {
                    break;
                }
                System.out.println("Invalid option");
            }

            address = new Address(country,city,CAP,street,strNum,pref);
            addr_list.add(address);

            while (true) {
                System.out.print("Do you want to add another address? (yes/no): ");
                flag= input.nextLine();
                if (flag.equals("yes")) {
                    pref=0;
                    System.out.print("<another address>\n");
                    break;
                }else if (flag.equals("no")) {
                    break;
                }else {
                    System.out.println("Invalid option");
                }
            }
        }
        return addr_list;
    }

    public static ArrayList<Com_Address> get_com_address_information() throws IOException {
        ArrayList<Com_Address> com_addr_list = new ArrayList<>();
        Com_Address com_address;
        String com_addr, type, flag;
        int pref;

        flag="yes";
        pref=1;

        Scanner input = new Scanner(System.in);
        System.out.print("Please enter supplier comunication address:\n");
        System.out.print("<preferred comunication address>\n");
        while (flag.equals("yes")){
            while (true) {
                System.out.print("  > Type ('Mail'/'Fax/'Tel'): ");
                type= input.nextLine();
                if (type.equals("Mail") || type.equals("Fax") || type.equals("Tel")) {
                    break;
                }
                System.out.println("Invalid option");
            }

            while (true) {
                System.out.print("  > Address: ");
                com_addr= input.nextLine();
                if (type.equals("Mail") && ((Pattern.compile("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")).matcher(com_addr)).matches()) {
                    break;
                }
                if (type.equals("Fax") && ((Pattern.compile("\\+\\d{2}\\s\\d{2}\\s\\d{7}")).matcher(com_addr)).matches()) {
                    break;
                }
                if (type.equals("Tel") && ((Pattern.compile("\\+\\d{1,3}\\s(\\d{2}\\s\\d{7}|\\d{3}\\s\\d{7})")).matcher(com_addr)).matches()) {
                    break;
                }
                System.out.print("Invalid option");
                if (type.equals("Mail")) {
                    System.out.print(" (es. enter: name@example.com)");
                }
                if (type.equals("Fax")) {
                    System.out.print(" (es. enter: +40 02 1234567)");
                }
                if (type.equals("Tel")) {
                    System.out.print(" (es. enter: +39 302 3692887 or +41 06 9766682)");
                }
                System.out.print("\n");
            }

            com_address = new Com_Address(com_addr,pref,type);
            com_addr_list.add(com_address);

            while (true) {
                System.out.print("Do you want to add another address? (yes/no): ");
                flag= input.nextLine();
                if (flag.equals("yes")) {
                    pref=0;
                    System.out.print("<another comunication address>\n");
                    break;
                }else if (flag.equals("no")) {
                    break;
                }else {
                    System.out.println("Invalid option");
                }
            }
        }
        return com_addr_list;
    }

    public static Product get_product_information() throws IOException {
        String PName, FName, rec, mut;
        boolean recipe, mutuability;
        float price;
        int SNum, CNum;
        Scanner input = new Scanner(System.in);
        System.out.println("<Add new medicine> operation:\n");

        while (true){
            System.out.print("Please enter product name: ");
            PName= input.nextLine();
            if (!PName.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true){
            System.out.print("Please enter supplier name: ");
            FName= input.nextLine();
            if (!FName.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true) {
            System.out.print("This product requires a recipe (yes/no): ");
            rec= input.nextLine();
            if (!rec.isEmpty() & rec.equals("yes")) {
                recipe = true;
                break;
            }else if (!rec.isEmpty() & rec.equals("no")) {
                recipe = false;
                break;
            }
            System.out.println("Invalid option");
        }

        while (true) {
            System.out.print("This product is prescribable (yes/no): ");
            mut= input.nextLine();
            if (!mut.isEmpty() & mut.equals("yes")) {
                mutuability = true;
                break;
            }else if (!mut.isEmpty() & mut.equals("no")) {
                mutuability = false;
                break;
            }
            System.out.println("Invalid option");
        }

        while (true) {
            System.out.print("Please enter product price: ");
            price= input.nextFloat();
            if (price>0) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true) {
            System.out.print("Please enter product shelf: ");
            SNum=input.nextInt();
            if (SNum>0 & SNum<21){
                break;
            }
            System.out.println("Invalid option");
        }

        while (true) {
            System.out.print("Please enter product drawer: ");
            CNum=input.nextInt();
            if (CNum>0 & CNum<19){
                break;
            }
            System.out.println("Invalid option");
        }

        Product product = new Product(PName, FName, recipe, price, mutuability, SNum, CNum, 0);
        return product;
    }

    public static ArrayList<String> get_use_information() throws IOException {
        ArrayList<String> use_list = new ArrayList<>();
        String use, flag;

        flag="yes";

        Scanner input = new Scanner(System.in);
        System.out.print("Please enter product use: ");
        while (flag.equals("yes")){
            while (true) {
                use = input.nextLine();
                if (!use.isEmpty()) {
                    break;
                }
                System.out.println("Invalid option");
            }

            use_list.add(use);

            while (true) {
                System.out.print("Do you want to add another use? (yes/no): ");
                flag= input.nextLine();
                if (flag.equals("yes")) {
                    System.out.print("Please enter another product use: ");
                    break;
                }else if (flag.equals("no")) {
                    break;
                }else {
                    System.out.println("Invalid option");
                }
            }
        }
        return use_list;
    }

    public static MedicineBox get_medicineBox_information() throws IOException {
        String PName, FName;
        int id, day, month, year;
        LocalDate expDate;
        Scanner input = new Scanner(System.in);
        System.out.println("<Add new medicine box> operation:\n");

        while (true){
            System.out.print("Please enter product name: ");
            PName= input.nextLine();
            if (!PName.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true){
            System.out.print("Please enter supplier name: ");
            FName= input.nextLine();
            if (!FName.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true){
            System.out.print("Please enter box ID: ");
            id= input.nextInt();
            if (id>0) {
                break;
            }
            System.out.println("Invalid option");
        }

        System.out.print("Please enter box expiration date:\n");
        while (true){
            while (true){
                System.out.print(">year: ");
                year= input.nextInt();
                if (year>=(LocalDate.now().getYear()) && year<(LocalDate.now().getYear() + 20)) {
                    break;
                }
                System.out.println("Invalid option");
            }
            while (true){
                System.out.print(">month: ");
                month= input.nextInt();
                if (month>0 && month<=12) {
                    break;
                }
                System.out.println("Invalid option");
            }
            while (true){
                System.out.print(">day: ");
                day= input.nextInt();
                if (day>0) {
                    if((month==4||month==6||month==9||month==11) && day<=30){
                        break;
                    }else if(month==2 && (((year%4)==0 && day<=29)||( (year%4)!=0 && day<=28))){
                        break;
                    }else if((month==1||month==3||month==5||month==7||month==8||month==10||month==12) && day<=31){
                        break;
                    }
                }
                System.out.println("Invalid option");
            }
            expDate=LocalDate.of(year,month,day);
            if (expDate.isAfter(LocalDate.now())){
                break;
            }
            System.out.println("Invalid option (expired box)");
        }

        MedicineBox medicineBox = new MedicineBox(id,PName, FName, expDate);
        return medicineBox;
    }

    public static void print_inventory_report(InventoryReport inventoryReport){
        StringBuilder sb=new StringBuilder();
        StringBuilder cs=new StringBuilder();
        System.out.println("<Generate an inventory Report> operation:\n");
        cs.repeat("-",15).append("|");
        sb.repeat("-",81).append("\n");
        sb.append("|").append(String.format("%-15s", "Supplier")).append("|").append(String.format("%-15s", "Product")).append("|").append(String.format("%-15s", "Quantity")).append("|").append(String.format("%-15s", "Shelf")).append("|").append(String.format("%-15s", "Drawer")).append("|\n");
        sb.append("|").repeat(cs,5).append("\n");
        for(Product product : inventoryReport.getProducts()) {
            sb.append("|").repeat(cs,5).append("\n");
            sb.append("|").append(String.format("%-15s", product.getFName())).append("|").append(String.format("%-15s", product.getPName())).append("|").append(String.format("%-15s", product.getQuantity())).append("|").append(String.format("%-15s", product.getSNum())).append("|").append(String.format("%-15s", product.getCNum())).append("|\n");
        }
        sb.repeat("-",81).append("\n");
        System.out.println(sb.toString());
    }

    public static void print_expiration_report(ExpirationReport expirationReport){
        StringBuilder sb=new StringBuilder();
        StringBuilder cs=new StringBuilder();
        System.out.println("<Generate an expiration date report> operation;\n");
        cs.repeat("-",15).append("|");
        sb.repeat("-",97).append("\n");
        sb.append("|").append(String.format("%-15s", "Supplier")).append("|").append(String.format("%-15s", "Product")).append("|").append(String.format("%-15s", "ID")).append("|").append(String.format("%-15s", "Exp. Date")).append("|").append(String.format("%-15s", "Shelf")).append("|").append(String.format("%-15s", "Drawer")).append("|\n");
        sb.append("|").repeat(cs,6).append("\n");
        for(MedicineBox medicineBox : expirationReport.getMedicineBoxes()) {
            sb.append("|").repeat(cs,6).append("\n");
            sb.append("|").append(String.format("%-15s", medicineBox.getFName())).append("|").append(String.format("%-15s", medicineBox.getPName())).append("|").append(String.format("%-15s", medicineBox.getId())).append("|").append(String.format("%-15s", medicineBox.getExpDate())).append("|").append(String.format("%-15s", medicineBox.getSNum())).append("|").append(String.format("%-15s", medicineBox.getCNum())).append("|\n");
        }
        sb.repeat("-",97).append("\n");
        System.out.println(sb.toString());
    }

    public static MedicineBox get_expiredBox_information() throws IOException {
        String PName, FName;
        int id;
        Scanner input = new Scanner(System.in);
        System.out.println("<Disposal of expired boxes> operation:\n");

        while (true){
            System.out.print("Please enter supplier name: ");
            FName= input.nextLine();
            if (!FName.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true){
            System.out.print("Please enter product name: ");
            PName= input.nextLine();
            if (!PName.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true){
            System.out.print("Please enter box ID: ");
            id= input.nextInt();
            if (id>0) {
                break;
            }
            System.out.println("Invalid option");
        }

        MedicineBox medicineBox = new MedicineBox(id,PName, FName);
        return medicineBox;
    }
}
