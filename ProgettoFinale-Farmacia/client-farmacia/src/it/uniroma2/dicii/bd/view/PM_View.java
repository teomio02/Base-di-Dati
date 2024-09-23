package it.uniroma2.dicii.bd.view;

import it.uniroma2.dicii.bd.model.domain.SoldBox;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Scanner;
import java.util.regex.Pattern;

public class PM_View {

    public static int showMenu() throws IOException {
        System.out.println("*********************************");
        System.out.println("*    PHARMACY DASHBOARD    *");
        System.out.println("*********************************\n");
        System.out.println("*** What should I do for you? ***\n");
        System.out.println("1) Sell a medicine box");
        System.out.println("2) Quit");

        Scanner input = new Scanner(System.in);
        String str_choice;
        int choice = 0;
        while (true) {
            System.out.print("Please enter your choice: ");
            str_choice = input.nextLine();
            if (!str_choice.isEmpty() && str_choice.matches("[1-2]")) {
                System.out.println("*********************************");
                choice = Integer.parseInt(str_choice);
                break;
            }
            System.out.println("Invalid option");
        }

        return choice;
    }

    public static SoldBox get_sale_information() throws IOException {
        String FName, PName, CF, mut;
        int id;
        float amount;
        LocalDate saleDate= LocalDate.now();
        Scanner input = new Scanner(System.in);
        System.out.println("<Sell a medicine box> operation:\n");

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
            PName = input.nextLine();
            if (!PName.isEmpty()) {
                break;
            }
            System.out.println("Invalid option");
        }

        while (true) {
            System.out.print("Please enter box's ID: ");
            id = input.nextInt();
            if (id>0) {
                break;
            }
            System.out.println("Invalid option");
        }
        input.nextLine();

        while (true) {
            System.out.print("Prescribable sale (yes/no): ");
            mut= input.nextLine();
            if (!mut.isEmpty() & mut.equals("yes")) {
                while (true){
                    System.out.print("Please enter CF: ");
                    CF = input.nextLine();
                    if (CF.length() == 16 && ((Pattern.compile("^[A-Z]{6}\\d{2}[A-EHLMPRST]{1}\\d{2}[A-Z]{1}\\d{3}[A-Z]{1}$")).matcher(CF)).matches()) {
                        break;
                    }
                    System.out.println("Invalid option");
                }
                while (true){
                    System.out.print("Please enter the amount of money: ");
                    amount = input.nextFloat();
                    if (amount>0) {
                        break;
                    }
                    System.out.println("Invalid option");
                }
                break;
            }else if (!mut.isEmpty() & mut.equals("no")) {
                CF=null;
                amount=0;
                break;
            }
            System.out.println("Invalid option");
        }

        SoldBox soldBox=new SoldBox(id, PName, FName, CF, amount, saleDate);

        return soldBox;
    }
}
