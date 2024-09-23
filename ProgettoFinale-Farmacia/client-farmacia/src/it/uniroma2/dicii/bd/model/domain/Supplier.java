package it.uniroma2.dicii.bd.model.domain;

import java.util.ArrayList;

public class Supplier {
        private String name,communication_address,address;
        private ArrayList addr_list,com_addr_list;

        public Supplier(String name) {
                this.name = name;
        }

        public String getName() {
                return name;
        }

        public String toString() {
                return name;
        }
}
