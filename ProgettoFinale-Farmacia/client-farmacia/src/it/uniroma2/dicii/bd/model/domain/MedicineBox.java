package it.uniroma2.dicii.bd.model.domain;

import java.time.LocalDate;

public class MedicineBox {
        private int id, SNum, CNum;
        private String PName, FName;
        private LocalDate expDate;

        public MedicineBox(int id, String PName, String FName, LocalDate expDate, int SNum, int CNum) {
                this.id = id;
                this.PName = PName;
                this.FName = FName;
                this.expDate = expDate;
                this.SNum = SNum;
                this.CNum = CNum;
        }

        public MedicineBox(int id, String PName, String FName, LocalDate expDate) {
                this.id = id;
                this.PName = PName;
                this.FName = FName;
                this.expDate = expDate;
        }

        public MedicineBox(int id, String PName, String FName) {
                this.id = id;
                this.PName = PName;
                this.FName = FName;
        }

        public int getId() { return id; }

        public String getPName() { return PName; }

        public String getFName() { return FName; }

        public LocalDate getExpDate() { return expDate; }

        public int getSNum() { return SNum; }

        public int getCNum() { return CNum; }


        public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(PName).append(" (").append(FName).append(") - (").append(id).append(") > expiration date: ").append(expDate).append("\n");
                return sb.toString();
        }
}
