package com.it.dao;

import com.it.entity.Brand;

import java.util.HashMap;
import java.util.List;

public interface BrandDAO {
	List<Brand> selectAll(HashMap map);
	void add(Brand Brand);
	void update(Brand Brand);
	void delete(int id);
	Brand findById(int id);
}
