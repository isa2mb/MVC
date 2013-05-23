<!DOCTYPE html>
<html lang="en" class="login_page" style="background-color:#72863d;">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Stamp Trooper</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="res/styles/default/bootstrap.min.css" />
            <link rel="stylesheet" href="res/styles/default/bootstrap-responsive.min.css" />
        <!-- theme color-->
            <link rel="stylesheet" href="res/styles/default/green.css" />
        <!-- tooltip -->    
			<link rel="stylesheet" href="res/styles/default/jquery.qtip.min.css" />
        <!-- main styles -->
            <link rel="stylesheet" href="res/styles/default/style.css" />
    
        <!-- Favicon -->
            <link rel="shortcut icon" href="res/styles/default/images/icon/favicon.ico" />
    
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    
        <!--[if lte IE 8]>
            <script src="res/js/html5.js"></script>
			<script src="res/js/respond.min.js"></script>
        <![endif]-->
		
    </head>
    <body style="background-color:#72863d">

		<div class="login_box">

			<form action="index" method="post" id="login_form" style="background-color:#72863d;">
				<center><img src="res/styles/default/images/sans_fond_inverse.png" /></center>
				<div class="cnt_b">
					<div class="formRow">
						<div class="input-prepend">
							<span class="add-on"><i class="icon-user"></i></span><input type="text" id="login" name="login" placeholder="Login" value="Login" />
						</div>
					</div>
					<div class="formRow">
						<div class="input-prepend">
							<span class="add-on"><i class="icon-lock"></i></span><input type="password" id="password" name="password" placeholder="Mot de passe" value="Mot de passe" />
						</div>
					</div>
				</div>
				<div class="formRow">
					<center><button class="btn btn-inverse" type="submit">Connexion</button></center>
				</div>
			</form>
						
		</div>
		
        <script src="res/js/jquery.min.js"></script>
        <script src="res/js/jquery.actual.min.js"></script>
        <script src="res/js/jquery.validate.min.js"></script>
		<script src="res/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function(){
                
				//* boxes animation
				form_wrapper = $('.login_box');
				function boxHeight() {
					form_wrapper.animate({ marginTop : ( - ( form_wrapper.height() / 2) - 24) },400);	
				};
				form_wrapper.css({ marginTop : ( - ( form_wrapper.height() / 2) - 24) });
                $('.linkform a,.link_reg a').on('click',function(e){
					var target	= $(this).attr('href'),
						target_height = $(target).actual('height');
					$(form_wrapper).css({
						'height'		: form_wrapper.height()
					});	
					$(form_wrapper.find('form:visible')).fadeOut(400,function(){
						form_wrapper.stop().animate({
                            height	 : target_height,
							marginTop: ( - (target_height/2) - 24)
                        },500,function(){
                            $(target).fadeIn(400);
                            $('.links_btm .linkform').toggle();
							$(form_wrapper).css({
								'height'		: ''
							});	
                        });
					});
					e.preventDefault();
				});
				
				//* validation
				/* $('#login_form').validate({
					onkeyup: false,
					errorClass: 'error',
					validClass: 'valid',
					rules: {
						username: { required: true, minlength: 3 },
						password: { required: true, minlength: 3 }
					},
					highlight: function(element) {
						$(element).closest('div').addClass("f_error");
						setTimeout(function() {
							boxHeight()
						}, 200)
					},
					unhighlight: function(element) {
						$(element).closest('div').removeClass("f_error");
						setTimeout(function() {
							boxHeight()
						}, 200)
					},
					errorPlacement: function(error, element) {
						$(element).closest('div').append(error);
					}
				});*/
            });
        </script>
    </body>
</html>
