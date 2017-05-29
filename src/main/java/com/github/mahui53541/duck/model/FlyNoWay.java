package com.github.mahui53541.duck.model;

/**
 * Created by mahui on 2017/5/20.
 */
public class FlyNoWay implements FlyBehavior {
    @Override
    public void fly() {
        System.out.println("Sorry,I can't fly!");
    }
}
