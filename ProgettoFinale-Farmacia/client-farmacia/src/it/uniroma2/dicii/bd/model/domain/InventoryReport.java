package it.uniroma2.dicii.bd.model.domain;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class InventoryReport {
        List<Product> products = new ArrayList<>();

        public void addProduct(Product product) {
                this.products.add(product);
        }

        public List<Product> getProducts() { return products; }

        @Override
        public String toString() {
                StringBuilder sb = new StringBuilder();
                for(Product product : products) {
                        sb.append(product);
                }
                return sb.toString();
        }
}
