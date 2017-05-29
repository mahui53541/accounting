package com.github.mahui53541.duck.model;

/**
 * Created by mahui on 2017/5/20.
 */
public class RedheadDuck extends Duck {
    public RedheadDuck() {
        quackBehavior=new Quack();
        flyBehavior=new FlyWithWings();
    }

    @Override
    public void display() {
        System.out.println("I'm a real Redhead duck");
    }
}
