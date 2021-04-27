package org.revature.dao;

import org.revature.model.Reimbursement;

public interface ReimbursementDao {
	public void addReimbursement(Reimbursement reimbursement) throws Exception;
	public void deleteReimbursement(String ticketId) throws Exception;
}
