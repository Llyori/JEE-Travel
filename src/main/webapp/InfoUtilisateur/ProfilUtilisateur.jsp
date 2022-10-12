<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Servlets.ProfilUtilisateur"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Profil Utilisateur</title>
	<jsp:include page="../Menus/base.jsp"/>
</head>
	
	
    
	
<body class="nk-body bg-lighter npc-general has-sidebar">
	
	 <div class="nk-app-root">
	 
        <!-- main @s -->
        <div class="nk-main ">
            <!-- wrap @s -->
            
            <jsp:include page="../Menus/MenuVerti.jsp"/>
            
            <div class="nk-wrap">
           			<jsp:include page="../Menus/MenuHori.jsp"/>
           			<div class="nk-content ">
                    <div class="container-fluid">
                        <div class="nk-content-inner">
                            <div class="nk-content-body">
                                <div class="nk-block-between g-3">
                                        <div class="nk-block-head-content">
                                            <h3 class="nk-block-title page-title"><% out.println(Servlets.ProfilUtilisateur.user.getRole().getNomRole().toUpperCase()); %> / <strong class="text-primary small"><% out.println(Servlets.ProfilUtilisateur.user.getNom()); %></strong></h3>
                                            <div class="nk-block-des text-soft">
                                                <ul class="list-inline">
                                                    <li>User UUID: <span class="text-base"><% out.println(Servlets.ProfilUtilisateur.user.getUuid()); %></span></li>
                                                    <li>Last Login: <span class="text-base">15 Feb, 2019 01:02 PM</span></li>
                                                    <li>Last Login: <span class="text-base"><% out.println("Merde");  %></span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="nk-block-head-content">
                                            <a href="Accueil.jsp" class="btn btn-outline-light bg-white d-none d-sm-inline-flex"><em class="icon ni ni-arrow-left"></em><span>Back</span></a>
                                            <a href="html/user-list-regular.html" class="btn btn-icon btn-outline-light bg-white d-inline-flex d-sm-none"><em class="icon ni ni-arrow-left"></em></a>
                                        </div>
                                    </div>
                                <div class="nk-block">
                                    <div class="card card-bordered">
                                        <div class="card-aside-wrap">
                                            <div class="card-content">
                                                <ul class="nav nav-tabs nav-tabs-mb-icon nav-tabs-card">
                                                    <li class="nav-item">
                                                        <a class="nav-link active" href="#"><em class="icon ni ni-user-circle"></em><span>Personnel</span></a>
                                                    </li>
                                                </ul><!-- .nav-tabs -->
                                                <div class="card-inner">
                                                    <div class="nk-block">
                                                        <div class="nk-block-head">
                                                            <h5 class="title">Informations Personnelles</h5>
                                                            <p>Basic info, like your name and address, that you use on Nio Platform.</p>
                                                        </div><!-- .nk-block-head -->
                                                        <div class="profile-ud-list">
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Title</span>
                                                                    <span class="profile-ud-value">Mr.</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Nom</span>
                                                                    <span class="profile-ud-value"><% out.println(Servlets.ProfilUtilisateur.user.getNom()); %></span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Numero Telephone</span>
                                                                    <span class="profile-ud-value"><% out.println(Servlets.ProfilUtilisateur.user.getTelephone()); %></span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Addresse Mail</span>
                                                                    <span class="profile-ud-value"><% out.println(Servlets.ProfilUtilisateur.user.getEmail()); %></span>
                                                                </div>
                                                            </div>
                                                        </div><!-- .profile-ud-list -->
                                                    </div><!-- .nk-block -->
                                                    <div class="nk-block">
                                                        <div class="nk-block-head nk-block-head-line">
                                                            <h6 class="title overline-title text-base">Informations Additionelles</h6>
                                                        </div><!-- .nk-block-head -->
                                                        <div class="profile-ud-list">
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Joining Date</span>
                                                                    <span class="profile-ud-value">08-16-2018 09:04PM</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Methode Reg</span>
                                                                    <span class="profile-ud-value">Email, Telephone</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Pays</span>
                                                                    <span class="profile-ud-value">Cameroun</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Nationalite</span>
                                                                    <span class="profile-ud-value">Camerounais</span>
                                                                </div>
                                                            </div>
                                                        </div><!-- .profile-ud-list -->
                                                    </div><!-- .nk-block -->
                                                    <div class="nk-divider divider md"></div>
                                                </div><!-- .card-inner -->
                                            </div><!-- .card-content -->
                                            <div class="card-aside card-aside-right user-aside toggle-slide toggle-slide-right toggle-break-xxl" data-content="userAside" data-toggle-screen="xxl" data-toggle-overlay="true" data-toggle-body="true">
                                                <div class="card-inner-group" data-simplebar>
                                                    <div class="card-inner">
                                                        <div class="user-card user-card-s2">
                                                            <div class="user-avatar lg bg-primary">
                                                                <span><% out.println(Servlets.ProfilUtilisateur.user.getNom().substring(0, 3) ); %></span>
                                                            </div>
                                                            <div class="user-info">
                                                                <div class="badge badge-outline-light badge-pill ucap"><% out.println(Servlets.ProfilUtilisateur.user.getRole().getNomRole().toUpperCase()); %></div>
                                                                <h5><% out.println(Servlets.ProfilUtilisateur.user.getNom()); %></h5>
                                                                <span class="sub-text"><% out.println(Servlets.ProfilUtilisateur.user.getEmail()); %></span>
                                                            </div>
                                                        </div>
                                                    </div><!-- .card-inner -->
                                                    <div class="card-inner card-inner-sm">
                                                        <ul class="btn-toolbar justify-center gx-1">
                                                            <li><a href="#" class="btn btn-trigger btn-icon"><em class="icon ni ni-shield-off"></em></a></li>
                                                            <li><a href="#" class="btn btn-trigger btn-icon"><em class="icon ni ni-mail"></em></a></li>
                                                            <li><a href="#" class="btn btn-trigger btn-icon"><em class="icon ni ni-download-cloud"></em></a></li>
                                                            <li><a href="#" class="btn btn-trigger btn-icon"><em class="icon ni ni-bookmark"></em></a></li>
                                                            <li><a href="#" class="btn btn-trigger btn-icon text-danger"><em class="icon ni ni-na"></em></a></li>
                                                        </ul>
                                                    </div><!-- .card-inner -->
                                                    <div class="card-inner">
                                                        <div class="overline-title-alt mb-2">In Account</div>
                                                        <div class="profile-balance">
                                                            <div class="profile-balance-group gx-4">
                                                                <div class="profile-balance-sub">
                                                                    <div class="profile-balance-amount">
                                                                        <div class="number">2,500.00 <small class="currency currency-usd">USD</small></div>
                                                                    </div>
                                                                    <div class="profile-balance-subtitle">Invested Amount</div>
                                                                </div>
                                                                <div class="profile-balance-sub">
                                                                    <span class="profile-balance-plus text-soft"><em class="icon ni ni-plus"></em></span>
                                                                    <div class="profile-balance-amount">
                                                                        <div class="number">1,643.76</div>
                                                                    </div>
                                                                    <div class="profile-balance-subtitle">Profit Earned</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div><!-- .card-inner -->
                                                    <div class="card-inner">
                                                        <div class="row text-center">
                                                            <div class="col-4">
                                                                <div class="profile-stats">
                                                                    <span class="amount">23</span>
                                                                    <span class="sub-text">Total Order</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <div class="profile-stats">
                                                                    <span class="amount">20</span>
                                                                    <span class="sub-text">Complete</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <div class="profile-stats">
                                                                    <span class="amount">3</span>
                                                                    <span class="sub-text">Progress</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div><!-- .card-inner -->
                                                    <div class="card-inner">
                                                        <h6 class="overline-title-alt mb-2">Additional</h6>
                                                        <div class="row g-3">
                                                            <div class="col-6">
                                                                <span class="sub-text">User ID:</span>
                                                                <span>UD003054</span>
                                                            </div>
                                                            <div class="col-6">
                                                                <span class="sub-text">Last Login:</span>
                                                                <span>15 Feb, 2019 01:02 PM</span>
                                                            </div>
                                                            <div class="col-6">
                                                                <span class="sub-text">KYC Status:</span>
                                                                <span class="lead-text text-success">Approved</span>
                                                            </div>
                                                            <div class="col-6">
                                                                <span class="sub-text">Register At:</span>
                                                                <span>Nov 24, 2019</span>
                                                            </div>
                                                        </div>
                                                    </div><!-- .card-inner -->
                                                </div><!-- .card-inner -->
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