package com.github.mahui53541.duck.model;

/**
 * Created by mahui on 2017/5/20.
 */
public class RubberDuck extends Duck {
    public RubberDuck() {
        quackBehavior=new Squeak();
        flyBehavior=new FlyNoWay();
    }

    @Override
    public void display() {
        System.out.println("I'm a real Rubber duck");
    }
}
