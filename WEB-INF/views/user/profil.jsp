<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Profile</title>
    
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

		<style type="text/css" media="screen">
            .slides_container {
                width:570px;
                height:270px;
            }
            .slides_container div {
                width:570px;
                height:270px;
                display:block;
            }
			.pagination {
				margin:26px auto 0;
				width:100px;
			}

			.pagination li {
				float:left;
				margin:0 1px;
				list-style:none;
			}

			.pagination li a {
				display:block;
				width:12px;
				height:0;
				padding-top:12px;
				background-image:url(res/styles/default/images/pagination.png);
				background-position:0 0;
				float:left;
				overflow:hidden;
			}

			.pagination li.current a {
				background-position:0 -12px;
			}
        </style>	

    </head>
    <body>

		<div id="maincontainer" class="clearfix">
			<!-- header -->
            <header>
                <div class="navbar navbar-fixed-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="brand" href="/index"><img src="res/styles/default/images/sans_fond_inverse.png" /></a>
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
                                    <a href="login"><!--<img src="res/styles/default/images/user_avatar.png" alt="" class="user_avatar" />--> Se connecter</a>
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
                        <button class="close" data-dismiss="modal">�</button>
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
                        <button class="close" data-dismiss="modal">�</button>
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
					<div id="sortable_panels">
						<div class="row-fluid">
							<div class="span3">
								<div class="w-box" id="w_sort01">
									<div class="w-box-header">
										Informations diverses
										<div class="pull-right">
											<div class="btn-group">
												<a class="btn dropdown-toggle btn-mini" data-toggle="dropdown" href="#">
													<i class="icon-cog"></i> <span class="caret"></span>
												</a>
												<ul class="dropdown-menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="w-box-content">
										<table class="table table-striped">
											<tbody>
												<tr>
													<td>Infos</td>
													<td>Infos</td>
													<td>Infos</td>
												</tr>
												<tr>
													<td>Infos</td>
													<td>Infos</td>
													<td>Infos</td>
												</tr>
												<tr>
													<td>Infos</td>
													<td>Infos</td>
													<td>Infos</td>
												</tr>
												<tr>
													<td>Infos</td>
													<td>Infos</td>
													<td>Infos</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="span9">
								<div class="w-box" id="w_sort02">
									<div class="w-box-header">
										Photographie
										<div class="pull-right"></div>
									</div>
									<div class="w-box-content cnt_a">
										<center><img src="res/styles/default/images/avatar1.jpg" style="width:100px;"></center>
									</div>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="w-box">    
									<div class="w-box-header">
										Multi-photos
										<div class="pull-right">
											<div class="btn-group">
												<a class="btn dropdown-toggle btn-mini" data-toggle="dropdown" href="#">
													<i class="icon-cog"></i> <span class="caret"></span>
												</a>
												<ul class="dropdown-menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="w-box-content">
										<center><div id="slides">
											<div class="slides_container">
												<a href="http://www.flickr.com/photos/jliba/4665625073/" title="145.365 - Happy Bokeh Thursday! | Flickr - Photo Sharing!" target="_blank"><img src="http://slidesjs.com/examples/standard/img/example-slide-1.jpg" width="570" height="270" alt="Slide 1"></a>
												<a href="http://www.flickr.com/photos/stephangeyer/3020487807/" title="Taxi | Flickr - Photo Sharing!" target="_blank"><img src="http://slidesjs.com/examples/standard/img/example-slide-2.jpg" width="570" height="270" alt="Slide 2"></a>
												<a href="http://www.flickr.com/photos/childofwar/2984345060/" title="Happy Bokeh raining Day | Flickr - Photo Sharing!" target="_blank"><img src="http://slidesjs.com/examples/standard/img/example-slide-3.jpg" width="570" height="270" alt="Slide 3"></a>
												<a href="http://www.flickr.com/photos/b-tal/117037943/" title="We Eat Light | Flickr - Photo Sharing!" target="_blank"><img src="http://slidesjs.com/examples/standard/img/example-slide-4.jpg" width="570" height="270" alt="Slide 4"></a>
											</div>
										</div>
										</center>
									</div>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="w-box" id="w_sort03">    
									<div class="w-box-header">
										Comp�tences
										<div class="pull-right">
											<div class="btn-group">
												<a class="btn dropdown-toggle btn-mini" data-toggle="dropdown" href="#">
													<i class="icon-cog"></i> <span class="caret"></span>
												</a>
												<ul class="dropdown-menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="w-box-content">
										<table class="table table-striped">
											<tbody>
												<tr>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
												</tr>
												<tr>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
												</tr>
												<tr>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
												</tr>
												<tr>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
													<td>Comp�tences</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="w-box" id="w_sort03">    
									<div class="w-box-header">
										Travaux
										<div class="pull-right">
											<div class="btn-group">
												<a class="btn dropdown-toggle btn-mini" data-toggle="dropdown" href="#">
													<i class="icon-cog"></i> <span class="caret"></span>
												</a>
												<ul class="dropdown-menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="w-box-content">
										<table class="table table-striped">
											<tbody>
												<tr>
													<td>Travaux</td>
													<td>Travaux</td>
													<td>Travaux</td>
												</tr>
												<tr>
													<td>Travaux</td>
													<td>Travaux</td>
													<td>Travaux</td>
												</tr>
												<tr>
													<td>Travaux</td>
													<td>Travaux</td>
													<td>Travaux</td>
												</tr>
												<tr>
													<td>Travaux</td>
													<td>Travaux</td>
													<td>Travaux</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span6">
								<div class="w-box" id="w_sort05">    
									<div class="w-box-header">
										Youtube
										<div class="pull-right">
											<i class="splashy-document_letter_upload"></i>
										</div>
									</div>
									<div class="w-box-content">
										<center><img src="res/styles/default/images/youtube.png"/></center>
									</div>
								</div>
							</div>
							<div class="span6">
								<div class="w-box" id="w_sort07">
									<div class="w-box-header">
										Liens
									</div>
									<div class="w-box-content">
										<table class="table table-striped">
											<tbody>
												<tr>
													<td>Liens</td>
													<td>Liens</td>
													<td>Liens</td>
												</tr>
												<tr>
													<td>Liens</td>
													<td>Liens</td>
													<td>Liens</td>
												</tr>
												<tr>
													<td>Liens</td>
													<td>Liens</td>
													<td>Liens</td>
												</tr>
												<tr>
													<td>Liens</td>
													<td>Liens</td>
													<td>Liens</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="w-box" id="w_sort03">    
									<div class="w-box-header">
										Wishlist
										<div class="pull-right">
											<div class="btn-group">
												<a class="btn dropdown-toggle btn-mini" data-toggle="dropdown" href="#">
													<i class="icon-cog"></i> <span class="caret"></span>
												</a>
												<ul class="dropdown-menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="w-box-content">
										<table class="table table-striped">
											<tbody>
												<tr>
													<td>Wishlist</td>
													<td>Wishlist</td>
													<td>Wishlist</td>
												</tr>
												<tr>
													<td>Wishlist</td>
													<td>Wishlist</td>
													<td>Wishlist</td>
												</tr>
												<tr>
													<td>Wishlist</td>
													<td>Wishlist</td>
													<td>Wishlist</td>
												</tr>
												<tr>
													<td>Wishlist</td>
													<td>Wishlist</td>
													<td>Wishlist</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

                </div>
            </div>
            
            <!-- sidebar -->
			<a href="javascript:void(0)" class="sidebar_switch on_switch ttip_r" title="Hide Sidebar">Sidebar switch</a>
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
													<li><a href="profile">Mes informations</a></li>
													<li><a href="javascript:void(0)">Param�tres</a></li>
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
												<i class="splashy-group_blue"></i> R�seau
											</a>
										</div>
										<div class="accordion-body collapse" id="collapseThree">
											<div class="accordion-inner">
												<ul class="nav nav-list">
													<li><a href="javascript:void(0)">Ajouter un r�seau</a></li>
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
													<li><a href="javascript:void(0)">Param�tres</a></li>
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
			<!-- autosize textareas (new message) -->
			<script src="res/js/jquery.autosize.min.js"></script>
			<script src="res/js/jquery-ui-1.8.23.custom.min.js"></script>
            <!-- multi-column layout -->
            <script src="res/js/jquery.imagesloaded.min.js"></script>
            <script src="res/js/jquery.wookmark.js"></script>
            <!-- responsive table -->
            <script src="res/js/jquery.mediaTable.min.js"></script>
            <!-- dashboard functions -->
            <script src="res/js/gebo_dashboard.js"></script>
			<script src="res/js/gebo_widgets.js"></script>   
			<script src="res/js/slides.js"></script>
			<script>
				$(function(){
					$('#slides').slides({
						play: 5000,
						pause: 2500,
						hoverPause: true
					});
				});
			</script>
		</div>
	</body>
</html>