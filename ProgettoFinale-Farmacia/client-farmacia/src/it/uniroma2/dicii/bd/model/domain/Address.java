package it.uniroma2.dicii.bd.model.domain;

public class Address {
        private String country, city, street, CAP, strNum;
        private int pref;

       public Address(String country, String city, String CAP, String street, String strNum, int pref) {
               this.country = country;
               this.city = city;
               this.CAP = CAP;
               this.street = street;
               this.strNum = strNum;
               this.pref = pref;
       }

       public String getCountry() {
               return country;
       }

       public String getCity() {
               return city;
       }

       public String getCAP() {
               return CAP;
       }

       public String getStreet() {
               return street;
       }

       public String getStrNum() {
               return strNum;
       }

       public int getPref() {
               return pref;
       }


        public String toString() {

                StringBuilder sb = new StringBuilder();
                sb.append(" > via ").append(street).append(" ").append(strNum).append(", ").append(city).append(" (").append(country).append(") - ").append(CAP).append("\n");
                return sb.toString();
        }
}
