package com.spring.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.spring.dao.FlowerDao;
import com.spring.model.Flower;

@Service
public class FlowerServiceImpl implements FlowerService 
{
@Autowired
private FlowerDao flowerDao;

public FlowerDao getFlowerDao() 
{
	return flowerDao;
}

public void setFlowerDao(FlowerDao flowerDao) 
{
	this.flowerDao = flowerDao;
}

@Transactional
public List<Flower> getAllFlowers() 
{
	return flowerDao.getAllFlowers();
}

public Flower getFlowerByFid(int fid) 
{
	return flowerDao.getFlowerByFid(fid);
}

public void deleteFlower(int fid) 
{
	 flowerDao.deleteFlower(fid);
}

public void addFlower(Flower flower) 
{
	flowerDao.addFlower(flower);
}

public void editFlower(Flower flower) 
{
	flowerDao.editFlower(flower);
}

}