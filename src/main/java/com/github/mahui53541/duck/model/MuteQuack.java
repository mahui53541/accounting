package com.github.mahui53541.duck.model;

/**
 * Created by mahui on 2017/5/20.
 */
public class MuteQuack implements QuackBehavior {

    @Override
    public void quack() {
        System.out.println("Sorry,I can't quack!");
    }
}
