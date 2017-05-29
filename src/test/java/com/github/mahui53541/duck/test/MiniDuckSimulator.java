package com.github.mahui53541.duck.test;

import com.github.mahui53541.duck.model.Duck;
import com.github.mahui53541.duck.model.FlyNoWay;
import com.github.mahui53541.duck.model.MallardDuck;
import com.github.mahui53541.duck.model.Squeak;
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
