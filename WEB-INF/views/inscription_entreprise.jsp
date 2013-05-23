<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Stamp Trooper</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="res/styles/default/bootstrap.min.css" />
            <link rel="stylesheet" href="res/styles/default/bootstrap-responsive.min.css" />
        <!-- gebo blue theme-->
			<link id="link_theme" rel="stylesheet" href="res/styles/default/green.css">
        <!-- breadcrumbs-->
            <link rel="stylesheet" href="res/styles/default/BreadCrumb.css" />
        <!-- tooltips-->
            <link rel="stylesheet" href="res/styles/default/jquery.qtip.min.css" />
        <!-- code prettify -->
            <link rel="stylesheet" href="res/styles/default/prettify.css" />    
        <!-- notifications -->
            <link rel="stylesheet" href="res/styles/default/sticky.css" />    
        <!-- splashy icons -->
            <link rel="stylesheet" href="res/styles/default/splashy.css" />
        <!-- main styles -->
            <link rel="stylesheet" href="res/styles/default/style.css" />
			
            <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans" />
	
        <!-- Favicon -->
            <link rel="shortcut icon" href="res/styles/default/images/icon/favicon.ico" />
		
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="res/styles/default/ie.css" />
            <script src="res/js/html5.js"></script>
			<script src="res/js/respond.min.js"></script>
			<script src="res/js/excanvas.min.js"></script>
        <![endif]-->
		
			<script src="res/js/jquery.min.js"></script>
			
		<script type="text/javascript">
            $(document).ready(function() {
                    $('#pute').click(function() {
						if($('#test').is(':visible')){
						
						}else{
							var success = '<a href="#" id="test" rel="popover" data-content="Click réussi!" data-original-title="Patoche le postier dit: " ><img class="mascooooot" src="res/styles/default/images/success.png"></a>';
							$('.joeletaxi').append(success);
							$('.mascooooot').animate({'bottom':'+=250'}, 1000);
							$('#test').show();
							$('#test').popover('show');
							setTimeout("hidethis()",3000);
							
						}
                    });
            });
			function hidethis(){
				$('#test').popover('hide');
				$('.mascooooot').animate({'bottom':'-=250'}, 1000);
				setTimeout("$('#test').hide();$('.joeletaxi').empty();",1000);
				
			}
        </script>
    </head>
    <body>	
		<div id="maincontainer" class="clearfix">
			<!-- header -->
            <header>
                <div class="navbar navbar-fixed-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="brand" href="index"><img src="res/styles/default/images/sans_fond_inverse.png" /></a>
                            <ul class="nav user_menu pull-right" style="margin-top:10px;">
								 <li class="dropdown">
									<a href="annuaire">Offres d'emplois</a>  
								</li>
								<li class="dropdown">
									<a href="inscription">Inscription</a>  
								</li>
								<!--<li class="hidden-phone hidden-tablet">
                                    <div class="nb_boxes clearfix">
                                        <a data-toggle="modal" data-backdrop="static" href="#myMail" class="label ttip_b" title="New messages">25 <i class="splashy-mail_light"></i></a>
									</div>
								</li>-->
                                <li class="dropdown">
                                    <a href="login"><!--<img src="img/user_avatar.png" alt="" class="user_avatar" />--> Se connecter</a>
                                </li>
                            </ul>
							<a data-target=".nav-collapse" data-toggle="collapse" class="btn_menu">
								<span class="icon-align-justify icon-white"></span>
							</a>
                        </div>
                    </div>
                </div>
                <div class="modal hide fade" id="myMail">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">×</button>
                        <h3>New messages</h3>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                        <table class="table table-condensed table-striped" data-provides="rowlink">
                            <thead>
                                <tr>
                                    <th>Sender</th>
                                    <th>Subject</th>
                                    <th>Date</th>
                                    <th>Size</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Declan Pamphlett</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>23/05/2012</td>
                                    <td>25KB</td>
                                </tr>
                                <tr>
                                    <td>Erin Church</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>24/05/2012</td>
                                    <td>15KB</td>
                                </tr>
                                <tr>
                                    <td>Koby Auld</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>25/05/2012</td>
                                    <td>28KB</td>
                                </tr>
                                <tr>
                                    <td>Anthony Pound</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>25/05/2012</td>
                                    <td>33KB</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:void(0)" class="btn">Go to mailbox</a>
                    </div>
                </div>
                <div class="modal fade" id="myTasks">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">×</button>
                        <h3>New Tasks</h3>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                        <table class="table table-condensed table-striped" data-provides="rowlink">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Summary</th>
                                    <th>Updated</th>
                                    <th>Priority</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>P-23</td>
                                    <td><a href="javascript:void(0)">Admin should not break if URL&hellip;</a></td>
                                    <td>23/05/2012</td>
                                    <td class="tac"><span class="label label-important">High</span></td>
                                    <td>Open</td>
                                </tr>
                                <tr>
                                    <td>P-18</td>
                                    <td><a href="javascript:void(0)">Displaying submenus in custom&hellip;</a></td>
                                    <td>22/05/2012</td>
                                    <td class="tac"><span class="label label-warning">Medium</span></td>
                                    <td>Reopen</td>
                                </tr>
                                <tr>
                                    <td>P-25</td>
                                    <td><a href="javascript:void(0)">Featured image on post types&hellip;</a></td>
                                    <td>22/05/2012</td>
                                    <td class="tac"><span class="label label-success">Low</span></td>
                                    <td>Updated</td>
                                </tr>
                                <tr>
                                    <td>P-10</td>
                                    <td><a href="javascript:void(0)">Multiple feed fixes and&hellip;</a></td>
                                    <td>17/05/2012</td>
                                    <td class="tac"><span class="label label-warning">Medium</span></td>
                                    <td>Open</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:void(0)" class="btn">Go to task manager</a>
                    </div>
                </div>
            </header>
            
            <!-- main content -->
            <div id="contentwrapper" style="margin-top:10px;">
                <div class="main_content">
					<div class="row-fluid">
						<div class="span8">
							<center><h3 class="heading">S'inscrire en temps qu'entreprise</h3></center>
							<div class="formSep">
								Vous êtes un particulier? Inscrivez-vous <a href="inscription">ici</a>
							</div>
							<form method="post" action="inscription_entreprise">
								<div class="formSep">
									<label>Nom de l'entreprise</label>
									<input type="text" class="span7"/>
								</div>
								<div class="formSep">
									<label>Nom et prénom du gérant</label>
									<input type="text" class="span7"/>
								</div>
								<div class="formSep">
									<label>E-mail</label>
									<input type="text" class="span7"/>
								</div>
								<div class="formSep">
									<label>Site internet</label>
									<input type="text" class="span7"/>
								</div>
								<div class="formSep">
									<label>N° de SIRET</label>
									<input type="text" class="span7"/>
								</div>
								<div class="formSep">
									<label>Téléphone</label>
									<input type="text" class="span7"/>
								</div>
								<div class="formSep">
									<label>Mot de passe</label>
									<input type="password" class="span7"/>
									<label>Veuillez retapper votre mot de passe</label>
									<input type="password" class="span7"/>
								</div>
								<div class="formSep">
									<input type="checkbox" />  J'accepte les termes et conditions d'utilisation
								</div>
								<div class="formSep">
									<input type="submit" class="btn btn-success" value="S'inscrire" />
								</div>
							</form>
						</div>
                    </div>
                </div>
            </div>
            
			<!-- sidebar -->
			<a href="javascript:void(0)" class="sidebar_switch on_switch ttip_r" title="Hide Sidebar"style="margin-top:20px;">Sidebar switch</a>
            <div class="sidebar" style="margin-top:40px;">
				
				<div class="antiScroll">
					<div class="antiscroll-inner">
						<div class="antiscroll-content">
					
							<div class="sidebar_inner">
								<div id="side_accordion" class="accordion">
									
									<div class="accordion-group">
										<div class="accordion-heading">
											<a href="#collapseOne" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
												<i class="splashy-contact_grey"></i> Moi
											</a>
										</div>
										<div class="accordion-body collapse" id="collapseOne">
											<div class="accordion-inner">
												<ul class="nav nav-list">
													<li><a href="profile.html">Mes informations</a></li>
													<li><a href="javascript:void(0)">Paramètres</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="accordion-group">
										<div class="accordion-heading">
											<a href="#collapseTwo" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
												<i class="splashy-documents"></i> Offres
											</a>
										</div>
										<div class="accordion-body collapse" id="collapseTwo">
											<div class="accordion-inner">
												<ul class="nav nav-list">
													<li><a href="javascript:void(0)">Toutes les offres</a></li>
													<li><a href="javascript:void(0)">Mes offres</a></li>
													<li><a href="javascript:void(0)">Mes alertes</a></li>
													<li><a href="javascript:void(0)">Suggestions</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="accordion-group">
										<div class="accordion-heading">
											<a href="#collapseThree" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
												<i class="splashy-group_blue"></i> Réseau
											</a>
										</div>
										<div class="accordion-body collapse" id="collapseThree">
											<div class="accordion-inner">
												<ul class="nav nav-list">
													<li><a href="javascript:void(0)">Ajouter un réseau</a></li>
													<li><a href="javascript:void(0)">Mes Troopers</a></li>
												</ul>
												
											</div>
										</div>
									</div>
									
									//if admin
									
									<div class="accordion-group">
										<div class="accordion-heading">
											<a href="#collapseFour" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
												<i class="splashy-home_green"></i> NOM_ENTREPRISE
											</a>
										</div>
										<div class="accordion-body collapse" id="collapseFour">
											<div class="accordion-inner">
												<ul class="nav nav-list">
													<li><a href="javascript:void(0)">Mes informations</a></li>
													<li><a href="javascript:void(0)">Paramètres</a></li>
													<li><a href="javascript:void(0)">Abonnements</a></li>
												</ul>
												
											</div>
										</div>
									</div>
									
									<div class="accordion-group">
										<div class="accordion-heading">
											<a href="#collapseFive" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
												<i class="splashy-view_list"></i> Annonces
											</a>
										</div>
										<div class="accordion-body collapse" id="collapseFive">
											<div class="accordion-inner">
												<ul class="nav nav-list">
													<li><a href="javascript:void(0)">En cours</a></li>
													<li><a href="javascript:void(0)">Ajouter</a></li>
												</ul>
												
											</div>
										</div>
									</div>
									
								</div>
								
								<div class="push"></div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
            
			<div class="joeletaxi" style="margin-top:30%; position:fixed;">
								
			</div> 
			
			<!-- smart resize event -->
			<script src="res/js/jquery.debouncedresize.min.js"></script>
			<!-- hidden elements width/height -->
			<script src="res/js/jquery.actual.min.js"></script>
			<!-- js cookie plugin -->
			<script src="res/js/jquery.cookie.min.js"></script>
			<!-- main bootstrap js -->
			<script src="res/js/bootstrap.min.js"></script>
			<!-- bootstrap plugins -->
			<script src="res/js/bootstrap.plugins.min.js"></script>
			<!-- tooltips -->
			<script src="res/js/jquery.qtip.min.js"></script>
			<!-- jBreadcrumbs -->
			<script src="res/js/jquery.jBreadCrumb.1.1.min.js"></script>

			<!-- scrollbar -->
			<script src="res/js/antiscroll.min.js"></script>
			<script src="res/js/jquery-mousewheel.js"></script>
			<!-- to top -->
			<script src="res/js/jquery.ui.totop.min.js"></script>
			<!-- common functions -->
			<script src="res/js/gebo_common.js"></script>
			
			<script src="res/js/jquery-ui-1.8.23.custom.min.js"></script>
            <!-- multi-column layout -->
            <script src="res/js/jquery.imagesloaded.min.js"></script>
            <script src="res/js/jquery.wookmark.js"></script>
            <!-- responsive table -->
            <script src="res/js/jquery.mediaTable.min.js"></script>
            <!-- dashboard functions -->
            <script src="res/js/gebo_dashboard.js"></script>
		
		</div>
	</body>
</html>