<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Beans.Photo" import="Servlets.Reservation" import="Servlets.Voitures"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Reserver</title>
		<jsp:include page="../../Menus/base.jsp"/>
	</head>
	
	<body>
		<div class="nk-app-root">
	        <div class="nk-main ">
	            
	            <jsp:include page="../../Menus/MenuVerti.jsp"/>
	            
	            <div class="nk-wrap">
	            	<jsp:include page="../../Menus/MenuHori.jsp"/>
	            	<div class="nk-content ">
                    <div class="container-fluid">
                        <div class="nk-content-inner">
                            <div class="nk-content-body">
                                <div class="components-preview wide-md mx-auto">
                                    <div class="nk-block-head nk-block-head-lg wide-sm">
                                        <div class="nk-block-head-content">
                                            <h2 class="nk-block-title fw-normal">Reserver Véhicule</h2>
                                            <div class="nk-block-des">
                                                <p class="lead">Retrouvez les informations relatives au véhicule, <a href="#" target="_blank">Completez ces informations si vous souhaitez reserver ce véhicule.</a> Après soumission, consulter vos bons de réservation en cas de validité pour payement !</p>
                                            </div>
                                        </div>
                                    </div><!-- .nk-block-head -->
                                    <div class="nk-block nk-block-lg">
                                    	<%
											String message = (String) request.getAttribute("message");
	  										if(message != null){
												if(message == "Erreur lors de cette opération, entrez les champs à nouveau !"){
													out.println("<div class='alert alert-fill alert-icon alert-danger' role='alert'> <em class='icon ni ni-alert-circle'></em> <strong>"+message+"</div>");
												}else
													out.println("<div class='alert alert-fill alert-icon alert-success' role='alert'> <em class='icon ni ni-alert-circle'></em> <strong>"+message+".</div>");
											}
										
										%>
										<div id="carouselExConInd" class="carousel slide" data-ride="carousel">
											    <ol class="carousel-indicators">
											        <li data-target="#carouselExConInd" data-slide-to="0" class="active"></li>
											        <li data-target="#carouselExConInd" data-slide-to="1"></li>
											        <li data-target="#carouselExConInd" data-slide-to="2"></li>
											    </ol>
											    <div class="carousel-inner">
											        <div class="carousel-item active">
											            <img src=<% out.println("ImageServlet?photo="+Reservation.listphoto.get(1).getIdPhoto()); %> class="d-block w-100" alt="carousel">
											        </div>
											        <% for(Photo photo:Reservation.listphoto){ %>
												        <div class="carousel-item">
												            <img src=<% out.println("ImageServlet?photo="+photo.getIdPhoto()); %> class="d-block w-100" alt="carousel">
												        </div>
											        <% } %>
										    	</div>
											    <a class="carousel-control-prev" href="#carouselExConInd" role="button" data-slide="prev">
											        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
											        <span class="sr-only">Previous</span>
											    </a>
											    <a class="carousel-control-next" href="#carouselExConInd" role="button" data-slide="next">
											        <span class="carousel-control-next-icon" aria-hidden="true"></span>
											        <span class="sr-only">Next</span>
											    </a>
										</div>
                                        <div class="card card-bordered">
                                            <div class="card-inner">
                                                <form action="reservation" method="post" class="form-validate is-alter">
                                                    <div class="row g-gs">
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-full-name">Marque</label>
                                                                <div class="form-control-wrap">
                                                                     <input type="text" class="form-control" id="fva-full-name" name="marque" disabled="disabled" value=<% out.println(Reservation.voiture.getMarque()); %>>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-email">Modèle</label>
                                                                <div class="form-control-wrap">
                                                                   <input type="text" class="form-control" id="fva-email" name="modele" value=<% out.println(Reservation.voiture.getModele()); %> disabled="disabled">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fv-phone">Immatriculation</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="input-group">
                                                                        <input type="text" class="form-control" name="immatriculation" disabled="disabled" value=<% out.println(Reservation.voiture.getImmatriculation()); %>>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-topics">Prix Location</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="number" class="form-control" id="fva-subject" name="prixlocation" disabled="disabled" value=<% out.println(Reservation.voiture.getPrixlocation()); %>>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
	                                                        <div class="form-group">
	                                                            <label class="form-label">Nombre Places</label>
	                                                            <div class="form-control-wrap">
	                                                                <input type="number" class="form-control number-spinner" value=<% out.println(Reservation.voiture.getNbreplaces()); %> name="nbreplaces" disabled="disabled">
	                                                            </div>
	                                                        </div>
                                                    	</div>
                                                    	<div class="col-sm-3">
	                                                        <div class="form-group">
	                                                            <label class="form-label">Nombre Voitures</label>
	                                                            <div class="form-control-wrap number-spinner-wrap">
	                                                                <a class="btn btn-icon btn-primary number-spinner-btn number-minus" data-number="minus"><em class="icon ni ni-minus"></em></a>
	                                                                <input type="number" class="form-control number-spinner" value="1" name="nbreEx">
	                                                                <a class="btn btn-icon btn-primary number-spinner-btn number-plus" data-number="plus"><em class="icon ni ni-plus"></em></a>
	                                                            </div>
	                                                        </div>
                                                    	</div>
                                                        <div class="col-md-7">
                                                            <div class="form-group">
																    <label class="form-label">Date de Debut location et Remise.</label>
																    <div class="form-control-wrap">
																        <div class="input-daterange date-picker-range input-group">
																            <input type="text" class="form-control" name="datedebut" />
																            <div class="input-group-addon">Au</div>
																            <input type="text" class="form-control" name="datefin" />
																        </div>
																    </div>
															</div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <button type="submit" class="btn btn-lg btn-primary">Enregistrer</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div><!-- .nk-block -->
                                </div><!-- .components-preview -->
                            </div>
                        </div>
                    </div>
                </div>
	            </div>
	        </div>
	    </div>
	</body>
</html>