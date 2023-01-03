<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Beans.Photo" import="Servlets.Voitures"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Ajouter</title>
		<jsp:include page="../../Menus/base.jsp"/>
	</head>
	
	<body class="nk-body bg-lighter npc-general has-sidebar ">
		<div class="nk-app-root">
	        <div class="nk-main ">
	            	<jsp:include page="../../Menus/MenuVertiAdmin.jsp"/>
	            	<div class="nk-wrap">
	            		<jsp:include page="../../Menus/MenuHori.jsp"/>
	            		<div class="nk-content ">
	                    	<div class="container-fluid">
	                       	 	<div class="nk-content-inner">
	                            	<div class="nk-content-body">
	                            		<div class="nk-block-head nk-block-head-sm">
		                                    <div class="nk-block-between g-3">
		                                        <div class="nk-block-head-content">
		                                            <h3 class="nk-block-title page-title">Photos des Voitures du Système</h3>
		                                            <div class="nk-block-des text-soft">
		                                                <p>Vous avez au Total <span class="text-base">1.257</span> Véhicules.</p>
		                                            </div>
		                                        </div>
		                                        <div class="nk-block-head-content">
		                                            <a href="#" class="btn btn-outline-light bg-white d-none d-sm-inline-flex"><em class="icon ni ni-download-cloud"></em><span>Download All</span></a>
		                                            <a href="#" class="btn btn-icon btn-outline-light bg-white d-inline-flex d-sm-none"><em class="icon ni ni-download-cloud"></em></a>
		                                        </div>
		                                    </div>
                                		</div><!-- .nk-block-head -->
                                		<div class="nk-block">
		                                    <div class="row g-gs">
		                                    	<% for(Photo photo:Voitures.photos){ %>
		                                        <div class="col-sm-6 col-lg-4 col-xxl-3">
		                                            <div class="gallery card card-bordered">
		                                                <a class="gallery-image popup-image" href=<% out.println("ImageServlet?photo="+photo.getIdPhoto()); %> >
		                                                    <img class="w-100 rounded-top" src=<% out.println("ImageServlet?photo="+photo.getIdPhoto()); %> width="500" height="250" alt="">
		                                                </a>
		                                                <div class="gallery-body card-inner align-center justify-between flex-wrap g-2">
		                                                    <div class="user-card">
		                                                        <div class="user-avatar">
		                                                            <img src="./images/avatar/a-sm.jpg" alt="">
		                                                        </div>
		                                                        <div class="user-info">
		                                                            <span class="lead-text"><% out.println(photo.getIdVoiture().getMarque()); %></span>
		                                                            <span class="sub-text"><% out.println(photo.getIdVoiture().getModele()); %></span>
		                                                        </div>
		                                                    </div>
		                                                    <div>
		                                                        <button class="btn btn-p-0 btn-nofocus"><em class="icon ni ni-heart"></em><span>34</span></button>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <% } %>
		                                    </div>
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