	
	<form method="post" action="inscription.html" id="formulaireAjout" name="formulaireAjout">
		<div class="formSep">
			<label>Nom</label>
			<input type="text" class="span7" name ="nom" id= "nom" />
		</div>
		<div class="formSep">
			<label>Prenom</label>
			<input type="text" class="span7" name ="prenom" id= "prenom"   />
		</div>
		<div class="formSep">
			<label>E-mail</label>
			<input type="text" class="span7"  name="mail" id="mail"/>
		</div>
		<div class="formSep">
			<label>Mot de passe</label>
			<input type="password" class="span7" name="mdp" id="mdp"/>
			<label>Veuillez retapper votre mot de passe</label>
			<input type="password" class="span7" name="mdp2" id="mdp2"/>
		</div>
		<div class="formSep">
			<input type="checkbox" />  J'accepte les termes et conditions d'utilisation
		</div>
		<div class="formSep">
			<input type="submit" class="btn btn-success" value="S'inscrire" id="envoyer" name="envoyer"/>
		</div>
	</form>
