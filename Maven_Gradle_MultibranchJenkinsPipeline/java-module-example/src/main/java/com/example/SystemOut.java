package com.example;


import org.joda.time.DateTime;

import java.util.Date;

/**
 * Created by eugene.kainara on 10/20/2016.
 */
public class SystemOut {

    public static void main(String args[]) {
        DateTime currDate = new DateTime();
        System.out.print("Current date and time is - " + currDate.toString());
    }
}
