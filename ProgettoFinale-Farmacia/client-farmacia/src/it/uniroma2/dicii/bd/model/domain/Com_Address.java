package it.uniroma2.dicii.bd.model.domain;

public class Com_Address {
        private String com_addr, type;
        private int pref;

       public Com_Address(String com_addr, int pref, String type) {
               this.com_addr = com_addr;
               this.pref = pref;
               this.type = type;
       }

       public String getCom_addr() { return com_addr; }

       public int getPref() {
               return pref;
       }

       public String getType() { return type; }

        public String toString() {

                StringBuilder sb = new StringBuilder();
                sb.append(" > recapito: ").append(com_addr).append(" (").append(type).append(")\n");
                return sb.toString();
        }
}
