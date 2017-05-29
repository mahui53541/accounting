package com.github.mahui53541.duck.model;

/**
 * Created by mahui on 2017/5/20.
 */
public abstract class Duck {

    FlyBehavior flyBehavior;
    QuackBehavior quackBehavior;


    /*
    * 鸭子叫
    * */
    public void performQuack(){
        quackBehavior.quack();
    }

    /*
    * 鸭子飞
    * */
    public void performFly(){
        flyBehavior.fly();
    }
    /*
    * 鸭子游泳
    * */

    public void swim(){
        System.out.println("All duck float , even decoys!");
    }

    /*
    * 鸭子外观
    * */
    public abstract void display();

    /*
    * 动态设定行为
    * */
    public void setFlyBehavior(FlyBehavior flyBehavior) {
        this.flyBehavior = flyBehavior;
    }

    public void setQuackBehavior(QuackBehavior quackBehavior) {
        this.quackBehavior = quackBehavior;
    }
}
