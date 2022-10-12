<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Servlets.ProfilUtilisateur"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Parametre Utilisateur</title>
		<jsp:include page="../Menus/base.jsp"/>
	</head>
	
	<body class="nk-body bg-lighter npc-general has-sidebar">
		<div class="nk-app-root">
	        <div class="nk-main ">
	            
	            <jsp:include page="../Menus/MenuVerti.jsp"/>
	            
	            <div class="nk-wrap">
	            	<jsp:include page="../Menus/MenuHori.jsp"/>
	            	<div class="nk-content ">
                    <div class="container-fluid">
                        <div class="nk-content-inner">
                            <div class="nk-content-body">
                                <div class="nk-block">
                                    <div class="card card-bordered">
                                        <div class="card-aside-wrap">
                                            <div class="card-inner card-inner-lg">
                                                <div class="nk-block-head nk-block-head-lg">
                                                    <div class="nk-block-between">
                                                        <div class="nk-block-head-content">
                                                            <h4 class="nk-block-title">Paramètres Sécurité</h4>
                                                            <div class="nk-block-des">
                                                                <p> Ces paramètres vous aide à garder votre compte en sécurité.</p>
                                                            </div>
                                                        </div>
                                                        <div class="nk-block-head-content align-self-start d-lg-none">
                                                            <a href="#" class="toggle btn btn-icon btn-trigger mt-n1" data-target="userAside"><em class="icon ni ni-menu-alt-r"></em></a>
                                                        </div>
                                                    </div>
                                                </div><!-- .nk-block-head -->
                                                <div class="nk-block">
                                                    <div class="card card-bordered">
                                                        <div class="card-inner-group">
                                                            <div class="card-inner">
                                                                <div class="between-center flex-wrap flex-md-nowrap g-3">
                                                                    <div class="nk-block-text">
                                                                        <h6>Sauvegarder mes activités une fois connecté</h6>
                                                                        <p> Vous pouvez enregistrer toutes vos activités dès que connectée incluant les activités inutilisées détectée.</p>
                                                                    </div>
                                                                    <div class="nk-block-actions">
                                                                        <ul class="align-center gx-3">
                                                                            <li class="order-md-last">
                                                                                <div class="custom-control custom-switch mr-n2">
                                                                                    <input type="checkbox" class="custom-control-input" checked="" id="activity-log">
                                                                                    <label class="custom-control-label" for="activity-log"></label>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div><!-- .card-inner -->
                                                            <div class="card-inner">
                                                                <div class="between-center flex-wrap g-3">
                                                                    <div class="nk-block-text">
                                                                        <h6>Changer mon code secret</h6>
                                                                        <p>Mettez un code unique pour protéger votre compte.</p>
                                                                    </div>
                                                                    <div class="nk-block-actions flex-shrink-sm-0">
                                                                        <ul class="align-center flex-wrap flex-sm-nowrap gx-3 gy-2">
                                                                            <li class="order-md-last">
                                                                                <a href="#" class="btn btn-primary">Changer le PassCode</a>
                                                                            </li>
                                                                            <li>
                                                                                <em class="text-soft text-date fs-12px">Dernière mise à jour: <span>Oct 2, 2019</span></em>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div><!-- .card-inner -->
                                                            <div class="card-inner">
                                                                <div class="between-center flex-wrap flex-md-nowrap g-3">
                                                                    <div class="nk-block-text">
                                                                        <h6>Connexion à deux facteurs &nbsp; <span class="badge badge-danger ml-0">Disable</span></h6>
                                                                        <p>Sécurisez votre compte avec la sécurité 2FA. Lorsqu'elle est activée, vous n'allez seulement pas entrer votre PassCode, parce que l'application utilisera un code spécial. Vous allez recevoir ce code dans votre mobile à traver votre numéro de téléphone. </p>
                                                                    </div>
                                                                    <div class="nk-block-actions">
                                                                        <a href="#" class="btn btn-primary">Enabled</a>
                                                                    </div>
                                                                </div>
                                                            </div><!-- .card-inner -->
                                                        </div><!-- .card-inner-group -->
                                                    </div><!-- .card -->
                                                </div><!-- .nk-block -->
                                            </div><!-- .card-inner -->
                                            <div class="card-aside card-aside-left user-aside toggle-slide toggle-slide-left toggle-break-lg" data-content="userAside" data-toggle-screen="lg" data-toggle-overlay="true">
                                                <div class="card-inner-group">
                                                    <div class="card-inner">
                                                        <div class="user-card">
                                                            <div class="user-avatar bg-primary">
                                                                <span><% out.println(Servlets.ProfilUtilisateur.user.getNom().substring(0, 2) ); %></span>
                                                            </div>
                                                            <div class="user-info">
                                                                <span class="lead-text"><% out.println(Servlets.ProfilUtilisateur.user.getNom()); %></span>
                                                                <span class="sub-text"><% out.println(Servlets.ProfilUtilisateur.user.getEmail()); %></span>
                                                            </div>
                                                            <div class="user-action">
                                                                <div class="dropdown">
                                                                    <a class="btn btn-icon btn-trigger mr-n2" data-toggle="dropdown" href="#"><em class="icon ni ni-more-v"></em></a>
                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                        <ul class="link-list-opt no-bdr">
                                                                            <li><a href="#"><em class="icon ni ni-camera-fill"></em><span>Changer ma Photo</span></a></li>
                                                                            <li><a href="#"><em class="icon ni ni-edit-fill"></em><span>Modifier mon Profil</span></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div><!-- .card-inner -->
                                                    <div class="card-inner">
                                                        <div class="user-account-info py-0">
                                                            <h6 class="overline-title-alt">Total Transféré</h6>
                                                            <div class="user-balance">0.000 <small class="currency currency-btc">FCFA</small></div>
                                                            <div class="user-balance-sub">Prévoir <span>0.000 <span class="currency currency-btc">FCFA</span></span></div>
                                                        </div>
                                                    </div><!-- .card-inner -->
                                                    <div class="card-inner p-0">
                                                        <ul class="link-list-menu">
                                                            <li><a class="active" href="#"><em class="icon ni ni-lock-alt-fill"></em><span>Paramètre de sécurité</span></a></li>
                                                        </ul>
                                                    </div><!-- .card-inner -->
                                                </div><!-- .card-inner-group -->
                                            </div><!-- .card-aside -->
                                        </div><!-- .card-aside-wrap -->
                                    </div><!-- .card -->
                                </div><!-- .nk-block -->
                            </div>
                        </div>
                    </div>
                </div>
	         	</div>
	         </div>
         </div>
	</body>
</html>