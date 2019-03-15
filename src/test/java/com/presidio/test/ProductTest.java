package com.presidio.test;

import java.util.List;

import com.presidio.beans.Product;
import com.presidio.dao.ProductDao;
import com.presidio.mybatis.MyBatisConnectionFactory;

public class ProductTest {
	public static void main(String args[]) {
		ProductDao productDao = new ProductDao(MyBatisConnectionFactory.getSqlSessionFactory());
		   List<Product> products = productDao.selectAll();
	}
}
