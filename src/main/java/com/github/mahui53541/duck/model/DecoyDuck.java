package com.github.mahui53541.duck.model;

/**
 * Created by mahui on 2017/5/20.
 */
public class DecoyDuck extends Duck {
    public DecoyDuck() {
        flyBehavior=new FlyNoWay();
        quackBehavior=new MuteQuack();
    }

    @Override
    public void display() {
        System.out.println("I'm a real Decoy duck");
    }
}
