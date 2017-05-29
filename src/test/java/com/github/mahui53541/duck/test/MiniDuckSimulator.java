package com.github.mahui53541.duck.test;

import org.junit.Test;

/**
 * Created by mahui on 2017/5/20.
 */
public class MiniDuckSimulator {
    @Test
    public void duckTest(){
        Duck mallardDuck=new MallardDuck();
        mallardDuck.performFly();
        mallardDuck.performQuack();

        mallardDuck.setFlyBehavior(new FlyNoWay());
        mallardDuck.performFly();

        mallardDuck.setQuackBehavior(new Squeak());
        mallardDuck.performQuack();
    }
}
