package com.spring.services;

import java.util.List;

import com.spring.model.Flower;

public interface FlowerService 
{
	List<Flower> getAllFlowers();
	Flower getFlowerByFid(int fid);
	void deleteFlower(int fid);
	void addFlower(Flower flower);
	void editFlower(Flower flower);
}
