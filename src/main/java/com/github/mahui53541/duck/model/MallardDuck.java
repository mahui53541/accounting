package com.github.mahui53541.duck.model;

/**
 * Created by mahui on 2017/5/20.
 */
public class MallardDuck extends Duck {

    public MallardDuck() {
        quackBehavior=new Quack();
        flyBehavior=new FlyWithWings();
    }

    @Override
    public void display(){
        System.out.println("I'm a real Mallard duck");
    }
}
