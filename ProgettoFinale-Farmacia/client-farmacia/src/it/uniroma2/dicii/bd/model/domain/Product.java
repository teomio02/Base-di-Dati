package it.uniroma2.dicii.bd.model.domain;

public class Product {
        private String PName, FName;
        private boolean recipe, mutuability;
        private float price;
        private int SNum, CNum, quantity;

        public Product(String PName, String FName, boolean recipe, float price, boolean mutuability, int SNum, int CNum, int quantity) {
                this.PName = PName;
                this.FName = FName;
                this.recipe = recipe;
                this.price = price;
                this.mutuability = mutuability;
                this.SNum = SNum;
                this.CNum = CNum;
                this.quantity = quantity;
        }

        public Product(String PName, String FName, int SNum, int CNum, int quantity) {
                this.PName = PName;
                this.FName = FName;
                this.SNum = SNum;
                this.CNum = CNum;
                this.quantity = quantity;
        }

        public String getPName() { return PName; }

        public String getFName() { return FName; }

        public int isRecipe() {
                if(recipe){
                        return 1;
                }
                return 0;
        }

        public float getPrice() { return price; }

        public int isMutuability() {
                if(mutuability){
                        return 1;
                }
                return 0;
        }

        public int getSNum() { return SNum; }

        public int getCNum() { return CNum; }

        public int getQuantity() { return quantity; }

        public String toString() {
                String rec, mut;
                if (recipe==true) {
                        rec= "yes";
                }else{
                        rec= "no";
                }
                if (mutuability==true) {
                        mut= "yes";
                }else{
                        mut= "no";
                }

                StringBuilder sb = new StringBuilder();
                sb.append(PName).append(" (").append(FName).append(")\n>").append("recipe: ").append(rec).append("\n>mutuability: ").append(mut).append("\n>price: ").append(price).append("\n>quantity: ").append(quantity).append("\n>location(S-C):").append(SNum).append(CNum).append("\n");
                return sb.toString();
        }
}
