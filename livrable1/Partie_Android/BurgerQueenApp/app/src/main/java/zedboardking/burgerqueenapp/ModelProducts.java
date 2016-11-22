package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-10-07.
 */
public class ModelProducts {

    private String productID;
    private String productDesc;
    private String productPrice;
    private String productNomMenu;
    private String productDescMenu;
    private String productOption;
    private String productNumber;

    public ModelProducts(String productID,String productDesc,String productPrice, String productNomMenu, String productDescMenu, String productOption, String productNumber)
    {
        this.productID  = productID;
        this.productDesc  = productDesc;
        this.productPrice = productPrice;
        this.productNomMenu = productNomMenu;
        this.productDescMenu = productDescMenu;
        this.productOption = productOption;
        this.productNumber = productNumber;
    }

    public String getProductID() {

        return productID;
    }

    public String getProductDesc() {

        return productDesc;
    }

    public String getProductPrice() {

        return productPrice;
    }

    public String getproductNomMenu(){

        return productNomMenu;
    }

    public String getProductDescMenu(){

        return  productDescMenu;
    }

    public String getProductOption(){

        return  productOption;
    }

    public String setProductOption(String option){

        return  productOption = option;
    }

    public String getProductNumber(String number){

        return productNumber = number;
    }

    public String getProductNumber(){

        return productNumber;
    }
}

