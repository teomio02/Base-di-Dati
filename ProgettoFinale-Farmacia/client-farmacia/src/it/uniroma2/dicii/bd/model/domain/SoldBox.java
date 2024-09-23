package it.uniroma2.dicii.bd.model.domain;

import java.time.LocalDate;

public class SoldBox {
        private int id;
        private String PName, FName, CF;
        private LocalDate saleDate;
        private float amount;

        public SoldBox(int id, String PName, String FName, String CF, float amount, LocalDate saleDate) {
                this.id = id;
                this.PName = PName;
                this.FName = FName;
                this.CF = CF;
                this.amount = amount;
                this.saleDate = saleDate;
        }

        public int getId() { return id; }

        public String getPName() { return PName; }

        public String getFName() { return FName; }

        public String getCF() { return CF; }

        public float getAmount() { return amount; }

        public LocalDate getSaleDate() { return saleDate; }

        public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(PName).append(" (").append(FName).append(") - (").append(id).append(")\n > sale date: ").append(saleDate).append("\n > amount: ").append(amount).append("\n");;
                return sb.toString();
        }
}
