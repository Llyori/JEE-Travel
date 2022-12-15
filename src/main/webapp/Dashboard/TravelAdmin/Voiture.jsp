<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Servlets.TravelAdmin" import="Beans.Etat"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Ajouter</title>
		<jsp:include page="../../Menus/base.jsp"/>
	</head>
	
	<body>
		
		<div class="nk-app-root">
	        <div class="nk-main ">
	            
	            <jsp:include page="../../Menus/MenuVertiAdmin.jsp"/>
	            
	            <div class="nk-wrap">
	            	<jsp:include page="../../Menus/MenuHori.jsp"/>
	            	<div class="nk-content ">
                    <div class="container-fluid">
                        <div class="nk-content-inner">
                            <div class="nk-content-body">
                                <div class="components-preview wide-md mx-auto">
                                    <div class="nk-block-head nk-block-head-lg wide-sm">
                                        <div class="nk-block-head-content">
                                            <h2 class="nk-block-title fw-normal">Ajouter Véhicule</h2>
                                            <div class="nk-block-des">
                                                <p class="lead">Utilisez la <a href="https://jqueryvalidation.org/" target="_blank">Plateforme de Réservation en ligne</a> de vos véhicules, pour éviter les problèmes de dernières minutes. Vous pouvez faire vos Réservation deux semaines à l'avance. Pour toutes vos questions, veillez <a href="#">Nous contacter</a>.</p>
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
                                        <div class="card card-bordered">
                                            <div class="card-inner">
                                                <form action="voiture" method="post" class="form-validate is-alter">
                                                    <div class="row g-gs">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-full-name">Marque</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="text" class="form-control" id="fva-full-name" name="marque" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-email">Modèle</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="text" class="form-control" id="fva-email" name="modele" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fv-phone">Immatriculation</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="input-group">
                                                                        <input type="text" class="form-control" name="immatriculation" required>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        	<div class="col-sm-6">
		                                                        <div class="form-group">
		                                                            <label class="form-label">Etat</label>
		                                                            <div class="form-control-wrap">
		                                                                <select class="form-select" multiple="multiple" data-placeholder="Selectionner etat(s) voiture" name="etat">
		                                                                	<% for (Etat etat:TravelAdmin.listEtat){ %>
		                                                                    	<option value=<% out.println(etat.getIdEtat()); %>><% out.println(etat.getNomEtat()); %></option>
		                                                                    <% } %>
		                                                                </select>
		                                                            </div>
		                                                        </div>
                                                    		</div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-subject">Prix Vente</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="number" class="form-control" id="fva-subject" name="prixvente" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-topics">Prix Location</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="number" class="form-control" id="fva-subject" name="prixlocation" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
	                                                        <div class="form-group">
	                                                            <label class="form-label">Nombre Places</label>
	                                                            <div class="form-control-wrap number-spinner-wrap">
	                                                                <button class="btn btn-icon btn-primary number-spinner-btn number-minus" data-number="minus"><em class="icon ni ni-minus"></em></button>
	                                                                <input type="number" class="form-control number-spinner" value="2" name="nbreplaces">
	                                                                <button class="btn btn-icon btn-primary number-spinner-btn number-plus" data-number="plus"><em class="icon ni ni-plus"></em></button>
	                                                            </div>
	                                                        </div>
                                                    	</div>
                                                    	<div class="col-sm-3">
	                                                        <div class="form-group">
	                                                            <label class="form-label">Nombre Voitures</label>
	                                                            <div class="form-control-wrap number-spinner-wrap">
	                                                                <button class="btn btn-icon btn-primary number-spinner-btn number-minus" data-number="minus"><em class="icon ni ni-minus"></em></button>
	                                                                <input type="number" class="form-control number-spinner" value="1" name="nbreEx">
	                                                                <button class="btn btn-icon btn-primary number-spinner-btn number-plus" data-number="plus"><em class="icon ni ni-plus"></em></button>
	                                                            </div>
	                                                        </div>
                                                    	</div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">
															    <label class="form-label" for="customMultipleFilesLabel">Photos Carte Grise</label>
															    <div class="form-control-wrap">
															        <div class="custom-file">
															            <input type="file" multiple class="custom-file-input" name="photocartegrise" id="customMultipleFiles">
															            <label class="custom-file-label" for="customMultipleFiles">Choisir fichier</label>
															        </div>
															    </div>
															</div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">
															    <label class="form-label" for="customMultipleFilesLabel">Photos Assurance</label>
															    <div class="form-control-wrap">
															        <div class="custom-file">
															            <input type="file" multiple class="custom-file-input" name="photoassurance" id="customMultipleFiles">
															            <label class="custom-file-label" for="customMultipleFiles">Choisir fichier</label>
															        </div>
															    </div>
															</div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">
															    <label class="form-label" for="customMultipleFilesLabel">Photos Voiture</label>
															    <div class="form-control-wrap">
															        <div class="custom-file">
															            <input type="file" multiple class="custom-file-input" name="photovoiture" id="customMultipleFiles">
															            <label class="custom-file-label" for="customMultipleFiles">Choisir fichier</label>
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