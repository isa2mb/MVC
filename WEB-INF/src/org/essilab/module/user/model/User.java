package org.essilab.module.user.model;

public class User {
	public String nom;
	public String prenom;
	public String mail;
	public String mdp;
	//public Long id;
	//Long id;
	//boolean active = true;
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(String nom,String prenom,String mail, String mdp) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.mdp = mdp;
		//this.id = id;
	}

	@Override
	public String toString() {
		return "User [mail=" + mail + ", password=" + mdp + ", nom=" + nom
				+ ", prenom=" + prenom +"]";
	}

	/*public User(String mail, String mdp) {
		super();
		this.mail = mail;
		this.mdp = mdp;
	}*/
}
