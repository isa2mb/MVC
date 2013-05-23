$(document).ready(function(){
	//alert('load');
	$('#ok').click(function()
	{
		//alert("hello");
		var error = false;
		var res = "";
		var lastname = $('#lastname').val();
		var firstname = $('#firstname').val();
		var email = $('#email').val();
		var pwd = $('#pwd').val();
		var pwd2 = $('#pwd2').val();
		var email_regex = new RegExp("^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$"); 
		var text_regex = new RegExp("[a-zA-Z]");
		
		if(lastname.length == 0 || text_regex.exec(lastname) == null){
			 error = true;
			 res = "Vous avez une ou plusieurs erreur(s) \n";
		}
		if(accept.checked == false){
			error = true;
			//alert('il faut cocher la case');
			res = res + "Vous devez accepter les conditions générales \n";
		}
		if(firstname.length ==0 || text_regex.exec(firstname) == null)
		{
			 error = true;
		}
		if(email.length ==0 || email_regex.exec(email) == null){
				error = true;
				var res = res + "Rentrez un email valide \n";
		}
		if(pwd.length == 0 )
		{
			 error = true;
		}
		if(pwd.length > 0 && pwd != pwd2 )
		{
			 error = true;
			 var res = res + "Vérifiez votre mot de passe \n";
		}
		if (error == false)
		{	
			//alert('pas error');
			
			s = $("#formulaire").serialize();
			//s = $('#email').val();
			//alert(s);
			$.ajax({
				
			      type: "POST",
			      url : 'user/insert.ajax',
			      data: s,
			      dataType : 'json',
			      contentType:"application/json",
			      complete: function(response){
			    	   if(response != ''){
			    		   alert(response); //var json = response.responseText.evalJSON(); 
			    	   }else{
			    		   window.location.href = "http://localhost:8080/MVC/login";
			    	   }
			    	   
			    	}
			    });
			//alert('pas error 2');
			
		}
		else 
		{
			//alert('error');
			//var res = "Vous avez une ou plusieurs erreur(s) \n";
			alert( res);
			return false;
		}
		
		//alert( res);
		
	});
});