package view;

import java.util.List;

import controller.ContactManager;
import model.Contact;

import com.opensymphony.xwork2.ActionSupport;


public class ContactAction extends ActionSupport {

	private static final long serialVersionUID = 9149826260758390091L;
	private Contact contact;
	private Long id;

	private ContactManager linkController;

	private List<Contact> contactList;
	private List<Contact> econtact;
	
	public void setEcontact(List<Contact> econtact) {
		this.econtact = econtact;
	}
	public void setContact(Contact contact) {
		this.contact = contact;
	}
	

	public ContactAction() {
		linkController = new ContactManager();
	}

	public String execute() {
		this.contactList = linkController.list();
		return SUCCESS;
	}

	public String edit() {
		this.econtact = linkController.edit(getId());
		return SUCCESS;
	}

	public String add() {
		//System.out.println(getContact());
		try {
			linkController.add(getContact());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.contactList = linkController.list();
		return SUCCESS;
	}

	public String delete() {
		linkController.delete(getId());
		return SUCCESS;
	}

	public Contact getContact() {
		return contact;
	}

	public List<Contact> getContactList() {
		return contactList;
	}


	public List<Contact> getEcontact() {
		return econtact;
	}


	public void setContactList(List<Contact> contactsList) {
		this.contactList = contactsList;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
}
