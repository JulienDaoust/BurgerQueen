package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-11-09.
 */

import java.util.ArrayList;
import java.util.List;


public class Group {

    public static class cartProduct {

        public String id;
        public int index;
        public String desc;
        public String prix;
        public Controller aController;
    }

    public final List<cartProduct> children = new ArrayList<>();
    public String name;

    public Group(String name) {
        this.name = name;
    }

}