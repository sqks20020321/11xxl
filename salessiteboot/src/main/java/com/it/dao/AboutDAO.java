package com.it.dao;

import com.it.entity.About;
import com.it.entity.Cart;

import java.util.HashMap;
import java.util.List;

public interface AboutDAO {
	void update(About about);
	About findById(int id);
}