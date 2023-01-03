<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Beans.Photo" import="Servlets.Voitures" import="Servlets.Panier"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Reserver</title>
		<jsp:include page="../../Menus/base.jsp"/>
	</head>
	
	<body class="nk-body bg-lighter npc-general has-sidebar ">
		<div class="nk-app-root">
	        <div class="nk-main ">
	            	<jsp:include page="../../Menus/MenuVerti.jsp"/>
	            	<div class="nk-wrap">
	            		<jsp:include page="../../Menus/MenuHori.jsp"/>
	            		<div class="nk-content ">
	                    	<div class="container-fluid">
	                       	 	<div class="nk-content-inner">
	                            	<div class="nk-content-body">
	                            		<div class="nk-block-head nk-block-head-sm">
		                                    <div class="nk-block-between g-3">
		                                        <div class="nk-block-head-content">
		                                            <h3 class="nk-block-title page-title">Véhicules Disponibles</h3>
		                                            <div class="nk-block-des text-soft">
		                                                <p>Vous avez au Total <span class="text-base"><% out.println(Voitures.photos.size()); %></span> Véhicules disponibles pour réservation.</p>
		                                            </div>
		                                        </div>
		                                        <div class="nk-block-head-content">
		                                            <a href="#" class="btn btn-outline-light bg-white d-none d-sm-inline-flex"><em class="icon ni ni-download-cloud"></em><span>Download All</span></a>
		                                            <a href="#"><span class="badge badge-pill badge-primary"><% out.println(Panier.listeVoituresRes.size()); %></span></a>
													<span class="badge badge-pill badge-outline-primary"><% out.println(Panier.listeVoituresRes.size()); %></span>
		                                            <a href="#" class="btn btn-icon btn-outline-light bg-white d-inline-flex d-sm-none"><em class="icon ni ni-download-cloud"></em></a>
		                                        </div>
		                                    </div>
                                		</div><!-- .nk-block-head -->
                                		<div class="nk-block">
		                                    <div class="row g-gs">
		                                    	<% for(Photo photo:Voitures.photos){ %>
		                                    		<% //if(photo.getIdVoiture() in Panier.listeVoituresRes){ %>
				                                        <div class="col-sm-6 col-lg-4 col-xxl-3">
				                                            <div class="gallery card card-bordered">
				                                                <a class="gallery-image popup-image" href=<% out.println("ImageServlet?photo="+photo.getIdPhoto()); %> >
				                                                    <img class="w-100 rounded-top" src=<% out.println("ImageServlet?photo="+photo.getIdPhoto()); %> width="500" height="250" alt="">
				                                                </a>
				                                                <div class="gallery-body card-inner align-center justify-between flex-wrap g-2">
				                                                	<a href=<% out.println("reservation?idVoiture="+photo.getIdVoiture().getIdVoiture()); %> class="btn btn-primary">Reserver</a>
				                                                	<a href=<% out.println("panier?idvoiture="+photo.getIdVoiture().getIdVoiture()); %> class="btn btn-primary"><em class="icon ni ni-plus"></em></a>
				                                                    <div class="user-card">
				                                                        <div class="user-info">
				                                                            <span class="lead-text"><% out.println(photo.getIdVoiture().getMarque()); %></span>
				                                                            <span class="sub-text"><% out.println(photo.getIdVoiture().getModele()); %></span>
				                                                        </div>
				                                                    </div>
				                                                    <div>
				                                                        <span class="lead-text"><% out.println("Nbres Places:"+photo.getIdVoiture().getNbreplaces()); %></span>
				                                                        <span class="sub-text"><% out.println("Prix: "+photo.getIdVoiture().getPrixlocation()); %></span>
				                                                    </div>
				                                                </div>
				                                            </div>
				                                        </div>
			                                        <% //} %>
		                                        <% } %>
		                                        <jsp:include page="Model/ReservationModal.jsp"/>
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