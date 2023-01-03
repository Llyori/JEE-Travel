<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Beans.Voiture" import="Servlets.Reservation"
    pageEncoding="UTF-8"%>
<div class="nk-add-product toggle-slide toggle-slide-right" data-content="addProduct" data-toggle-screen="any" data-toggle-overlay="true" data-toggle-body="true" data-simplebar>
					                                    <div class="nk-block-head">
					                                        <div class="nk-block-head-content">
					                                            <h5 class="nk-block-title">Réservation</h5>
					                                            <div class="nk-block-des">
					                                                <p>Vérifiez les informations, puis complétez les.</p>
					                                            </div>
					                                        </div>
					                                    </div><!-- .nk-block-head -->
					                                    <div class="nk-block">
					                                        <div class="row g-3">
					                                            <div class="col-12">
					                                                <div class="form-group">
					                                                    <label class="form-label" for="product-title">Marque</label>
					                                                    <div class="form-control-wrap">
					                                                        <input type="text" class="form-control" value=<% out.println(Reservation.voiture.getMarque()); %> disabled="disabled" id="product-title">
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <div class="col-md-6">
					                                                <div class="form-group">
					                                                    <label class="form-label" for="regular-price">Modèle</label>
					                                                    <div class="form-control-wrap">
					                                                        <input type="text" class="form-control" id="regular-price" value=<% out.println(Reservation.voiture.getModele()); %> disabled="disabled">
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <div class="col-md-6">
					                                                <div class="form-group">
					                                                    <label class="form-label" for="sale-price">Immatriculation</label>
					                                                    <div class="form-control-wrap">
					                                                        <input type="text" class="form-control" id="sale-price" disabled="disabled" value=<% out.println(Reservation.voiture.getImmatriculation()); %>>
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <div class="col-md-6">
					                                                <div class="form-group">
					                                                    <label class="form-label" for="stock">Prix Location</label>
					                                                    <div class="form-control-wrap">
					                                                        <input type="text" class="form-control" id="stock" disabled="disabled" value=<% out.println(Reservation.voiture.getPrixlocation()); %>>
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <div class="col-md-6">
					                                                <div class="form-group">
					                                                    <label class="form-label" for="SKU">Nombre Disponible</label>
					                                                    <div class="form-control-wrap">
					                                                        <input type="text" class="form-control" id="SKU" disabled="disabled" value=<% out.println(Reservation.voiture.getNbreEx()); %>>
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <div class="col-6">
					                                                <div class="form-group">
					                                                    <label class="form-label" for="category">Nombre Places</label>
					                                                    <div class="form-control-wrap">
					                                                        <input type="text" class="form-control" id="category" value=<% out.println(Reservation.voiture.getNbreplaces()); %> disabled="disabled">
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <div class="col-6">
					                                                <div class="form-group">
					                                                    <label class="form-label" for="tags">Voiture(s) Réservé(s)</label>
					                                                    <div class="form-control-wrap">
					                                                        <input type="number" value=1 class="form-control" id="tags">
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <div class="col-12">
					                                                <button class="btn btn-primary"><em class="icon ni ni-plus"></em><span>Ajouter</span></button>
					                                            </div>
					                                        </div>
					                                    </div><!-- .nk-block -->
	                                				</div>