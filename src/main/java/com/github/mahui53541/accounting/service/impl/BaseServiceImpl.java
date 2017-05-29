package com.github.mahui53541.accounting.service.impl;

import com.github.mahui53541.accounting.service.BaseService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by mahui on 2017/5/29.
 */
public class BaseServiceImpl<Mapp extends Mapper<M>,M> implements BaseService<M> {

    @Autowired
    private Mapp mapper;
    @Override
    public int deleteByPrimaryKey(Object key) {
        return mapper.deleteByPrimaryKey(key);
    }

    @Override
    public int delete(M record) {
        return mapper.delete(record);
    }

    @Override
    public int insert(M record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(M record) {
        return mapper.insertSelective(record);
    }

    @Override
    public boolean existsWithPrimaryKey(Object key) {
        return mapper.existsWithPrimaryKey(key);
    }

    @Override
    public List<M> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public M selectByPrimaryKey(Object key) {
        return (M)mapper.selectByPrimaryKey(key);
    }

    @Override
    public int selectCount(M record) {
        return mapper.selectCount(record);
    }

    @Override
    public List<M> select(M record) {
        return mapper.select(record);
    }

    @Override
    public M selectOne(M record) {
        return mapper.selectOne(record);
    }

    @Override
    public int updateByPrimaryKey(M record) {
        return mapper.updateByPrimaryKey(record);
    }

    @Override
    public int updateByPrimaryKeySelective(M record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int deleteByExample(Object example) {
        return mapper.deleteByExample(example);
    }

    @Override
    public List<M> selectByExample(Object example) {
        return mapper.selectByExample(example);
    }

    @Override
    public int selectCountByExample(Object example) {
        return mapper.selectCountByExample(example);
    }

    @Override
    public int updateByExample(M record, Object example) {
        return mapper.updateByExample(record,example);
    }

    @Override
    public int updateByExampleSelective(M record, Object example) {
        return mapper.updateByExampleSelective(record,example);
    }

    @Override
    public List<M> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
        return mapper.selectByExampleAndRowBounds(example,rowBounds);
    }

    @Override
    public List<M> selectByRowBounds(M record, RowBounds rowBounds) {
        return mapper.selectByRowBounds(record,rowBounds);
    }
}
