package it.uniroma2.dicii.bd.model.domain;

import java.util.ArrayList;
import java.util.List;

public class ExpirationReport {
        List<MedicineBox> medicineBoxes = new ArrayList<>();

        public void addMedicineBox(MedicineBox medicineBox) {
                this.medicineBoxes.add(medicineBox);
        }

        public List<MedicineBox> getMedicineBoxes() { return medicineBoxes; }

        @Override
        public String toString() {
                StringBuilder sb = new StringBuilder();
                for(MedicineBox medicineBox : medicineBoxes) {
                        sb.append(medicineBox);
                }
                return sb.toString();
        }
}
