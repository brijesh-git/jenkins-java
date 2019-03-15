package com.presidio.dao;

import com.presidio.beans.Product;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class ProductDao {

    private SqlSessionFactory sqlSessionFactory = null;

    public ProductDao(SqlSessionFactory sqlSessionFactory){
        this.sqlSessionFactory = sqlSessionFactory;
    }

    @SuppressWarnings("unchecked")
    public  List<Product> selectAll(){
        List<Product> list = null;
        SqlSession session = sqlSessionFactory.openSession();

        try {
            list = session.selectList("Product.selectAll");
        } finally {
            session.close();
        }
        System.out.println("selectAll() --> "+list);
        return list;
    }
    /**
     * Select instance of Product from the database.
     * @param id the instance to be persisted.
     */
    public Product selectById(int id){
        Product product = null;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            product = session.selectOne("Product.selectById", id);
            product = session.selectOne("Product.selectById", id);

        } finally {
            session.close();
        }
        //System.out.println("selectById("+id+") --> "+product);
        return product;
    }

}
