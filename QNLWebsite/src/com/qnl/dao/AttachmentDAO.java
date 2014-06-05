package com.qnl.dao;

import java.util.List;
import com.qnl.core.Attachment;



public class AttachmentDAO extends GenericDAO<Attachment>
{
	private static final long serialVersionUID = 1L;

	public AttachmentDAO()
	{		
		super(Attachment.class);		
	}
	
	public List<Attachment> findAll()
	{
		return super.findAllResults(Attachment.findAll, null);
	}

}
