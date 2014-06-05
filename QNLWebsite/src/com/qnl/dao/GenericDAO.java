	package com.qnl.dao;

import java.io.Serializable;
import java.util.*;
import java.util.Map.*;

import javax.persistence.*;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;


abstract class GenericDAO<T> implements Serializable {
 private static final long serialVersionUID = 1L;

 private Configuration config = new Configuration().configure();
 private Session sess;

 private static ServiceRegistry serviceReg = null;
 private static SessionFactory sessFact = null;

 //@SuppressWarnings("unused")
//private Class<T> entityClass;

 public void beginTransaction() {
  
	if(serviceReg == null)
		serviceReg = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
	 
	 sessFact = config.buildSessionFactory(serviceReg);
	 
	 
	 
	if(sessFact.getCurrentSession() == null)
		sess = sessFact.openSession();
	else
		sess = sessFact.getCurrentSession();
	
	sess.getTransaction().begin();	
 }

 public void commit() {
  sess.getTransaction().commit();
 }

 public void rollback() {
  sess.getTransaction().rollback();
 }

 public void closeTransaction() {
  sess.close();
 }

 public void commitAndCloseTransaction() {
  commit();
  closeTransaction();
 }

 public void flush() {
  sess.flush();
 }


 public GenericDAO(Class<T> entityClass) {
  //this.entityClass = entityClass;
 }

 public void save(T entity) {
  sess.save(entity);
 }

 public void delete(T entity) {
  Object entityToBeRemoved = sess.merge(entity);

  sess.delete(entityToBeRemoved);
 }

 @SuppressWarnings({ "unchecked" })
 public T update(T entity) {
  return (T)sess.merge(entity);
  
 }
 
 @SuppressWarnings({ "unchecked" })
 public List<T> findAllResults(String namedQuery, Map<String, Object> parameters)  
 {
	 List<T> results = null;

	  try {
		  	  
		  org.hibernate.Query query = sess.getNamedQuery(namedQuery);
		  
	   // Method that will populate parameters if they are passed not null and empty
	   if (parameters != null && !parameters.isEmpty()) {
	      populateQueryParameters(query, parameters);	      
	   }

	   results = (List<T>) query.list();
	   

	  } catch (NoResultException e) {
	   System.out.println("No results found for named query: " + namedQuery);
	  } catch (Exception e) {
	   System.out.println("Error while running query: " + e.getMessage());
	   e.printStackTrace();
	  }

	  return results;
 }
 
 @SuppressWarnings({ "unchecked" })
 public List<T> findAllResults(String queryString)  
 {
	 List<T> results = null;

	  try {
		  	  
		  org.hibernate.Query query = sess.createQuery(queryString);		  
		  results = (List<T>) query.list();
	   

	  } catch (NoResultException e) {
	   System.out.println("No results found for query: " + queryString);
	  } catch (Exception e) {
	   System.out.println("Error while running query: " + e.getMessage());
	   e.printStackTrace();
	  }

	  return results;
 }
 
 // Using the unchecked because JPA does not have a
 // query.getSingleResult()<T> method
 @SuppressWarnings("unchecked")
 protected T findOneResult(String namedQuery, Map<String, Object> parameters) {
  T result = null;

  try {
	  System.out.println("Query Name: " + namedQuery);
	  org.hibernate.Query query = sess.getNamedQuery(namedQuery);
	  System.out.println("Query: " + query.toString());
   // Method that will populate parameters if they are passed not null and empty
   if (parameters != null && !parameters.isEmpty()) {
      populateQueryParameters(query, parameters);      
   }

   result = (T) query.uniqueResult();

  } catch (NoResultException e) {
   System.out.println("No result found for named query: " + namedQuery);
  } catch (Exception e) {
   System.out.println("Error while running query: " + e.getMessage());
   e.printStackTrace();
  }

  return result;
 }

 private void populateQueryParameters(org.hibernate.Query query, Map<String, Object> parameters) {
  for (Entry<String, Object> entry : parameters.entrySet()) {
   query.setParameter(entry.getKey(), entry.getValue());
  }
 } 

 
}