package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Flower;

@Repository
public class FlowerDaoImpl implements FlowerDao 
{
@Autowired
private SessionFactory sessionFactory;

public SessionFactory getSessionFactory() 
{
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) 
{
	this.sessionFactory = sessionFactory;
}

public List<Flower> getAllFlowers() 
{
	Session session=sessionFactory.openSession();
	List<Flower> flowers=session.createQuery("from Flower").list();
	session.close();// close the session.
	
	return flowers;

	
}

public Flower getFlowerByFid(int i)
{
  Session session=sessionFactory.openSession();
  Flower flower=(Flower)session.get(Flower.class, i);  
  session.close();
  return flower;
}

public void deleteFlower(int fid)
{
	Session session=sessionFactory.openSession();
	Flower flower=(Flower)session.get(Flower.class, fid);
	session.delete(flower);
	session.flush();
	session.close();
}

public void addFlower(Flower flower) 
{
	Session session=sessionFactory.openSession();
	session.save(flower);
	session.flush();
	session.close();	
}

public void editFlower(Flower flower) {
	Session session=sessionFactory.openSession();
	//update flowerapp set ....where fid=?
	session.update(flower);
	session.flush();
	session.close();
}

}