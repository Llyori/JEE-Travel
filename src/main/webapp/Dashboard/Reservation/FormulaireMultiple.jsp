<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Beans.Photo" import="Servlets.Panier"
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
	                            	<div class="nk-block">
                                    <div class="card card-bordered">
                                        <div class="card-inner">
                                            <div class="row pb-5">
                                                <div class="col-lg-6">
                                                    <div class="product-gallery mr-xl-1 mr-xxl-5">
                                                        <div class="slider-init" id="sliderFor" data-slick='{"arrows": false, "fade": true, "asNavFor":"#sliderNav", "slidesToShow": 1, "slidesToScroll": 1}'>
                                                            <% for(Photo photo:Panier.listPhotoVoiture){ %>
	                                                            <div class="slider-item rounded">
	                                                                <img src=<% out.println("ImageServlet?voiture="+photo.getIdPhoto()); %> class="w-100" alt="">
	                                                            </div>
                                                            <% } %>
                                                        </div><!-- .slider-init -->
                                                        <div class="slider-init slider-nav" id="sliderNav" data-slick='{"arrows": false, "slidesToShow": 5, "slidesToScroll": 1, "asNavFor":"#sliderFor", "centerMode":true, "focusOnSelect": true, 
                                "responsive":[ {"breakpoint": 1539,"settings":{"slidesToShow": 4}}, {"breakpoint": 768,"settings":{"slidesToShow": 3}}, {"breakpoint": 420,"settings":{"slidesToShow": 2}} ]
                            }'>
                            								<% for(Photo photo:Panier.listPhotoVoiture){ %>
	                                                            <div class="slider-item">
	                                                                <div class="thumb">
	                                                                    <img src=<% out.println("ImageServlet?voiture="+photo.getIdPhoto()); %> alt="">
	                                                                </div>
	                                                            </div>
                                                            <% } %>
                                                            
                                                        </div><!-- .slider-nav -->
                                                    </div><!-- .product-gallery -->
                                                </div><!-- .col -->
                                                <form class="col-lg-6" method="Post" action="panier">
                                                    <div class="row g-gs">
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-full-name">Marque</label>
                                                                <div class="form-control-wrap">
                                                                     <input type="text" class="form-control" id="fva-full-name" name="marque" disabled="disabled" value=<% out.println(Panier.voiture.getMarque()); %>>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-email">Modèle</label>
                                                                <div class="form-control-wrap">
                                                                   <input type="text" class="form-control" id="fva-email" name="modele" value=<% out.println(Panier.voiture.getModele()); %> disabled="disabled">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fv-phone">Immatriculation</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="input-group">
                                                                        <input type="text" class="form-control" name="immatriculation" disabled="disabled" value=<% out.println(Panier.voiture.getImmatriculation()); %>>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-topics">Prix Location</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="number" class="form-control" id="fva-subject" name="prixlocation" disabled="disabled" value=<% out.println(Panier.voiture.getPrixlocation()); %>>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
	                                                        <div class="form-group">
	                                                            <label class="form-label">Nombre Places</label>
	                                                            <div class="form-control-wrap">
	                                                                <input type="number" class="form-control number-spinner" value=<% out.println(Panier.voiture.getNbreplaces()); %> name="nbreplaces" disabled="disabled">
	                                                            </div>
	                                                        </div>
                                                    	</div>
                                                    	<div class="col-sm-6">
	                                                        <div class="form-group">
	                                                            <label class="form-label">Nombre Voitures Disponibles</label>
	                                                            <div class="form-control-wrap">
	                                                                <input type="number" class="form-control number-spinner" value=<% out.println(Panier.voiture.getNbreEx()); %> disabled="disabled">
	                                                            </div>
	                                                        </div>
                                                    	</div>
                                                    	<div class="product-meta">
                                                            <ul class="d-flex flex-wrap ailgn-center g-2 pt-1">
                                                                <li class="w-140px">
                                                                    <div class="form-control-wrap number-spinner-wrap">
                                                                        <a class="btn btn-icon btn-outline-light number-spinner-btn number-minus" data-number="minus"><em class="icon ni ni-minus"></em></a>
                                                                        <input type="number" name="nombre" class="form-control number-spinner" value="0" min="1" max=<% out.println(Panier.voiture.getNbreEx()); %> >
                                                                        <a class="btn btn-icon btn-outline-light number-spinner-btn number-plus" data-number="plus"><em class="icon ni ni-plus"></em></a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <button class="btn btn-primary" type="submit">Ajouter au Panier</button>
                                                                </li>
                                                            </ul>
                                                        </div><!-- .product-meta -->
                                                    	</div>
                                                    	</form>
                                                    	</div>
                                                    </div><!-- .product-info -->
                                                </div><!-- .col -->
                                            </div><!-- .row -->
                                            <hr class="hr border-light">
                                        </div>
                                    </div>
                                </div><!-- .nk-block -->
                                <div class="nk-block nk-block-lg">
                                    <div class="nk-block-head">
                                        <div class="nk-block-between g-3">
                                            <div class="nk-block-head-content">
                                                <h3 class="nk-block-title page-title">Photos Cartes grise et Assurance du Véhicule.</h3>
                                            </div>
                                        </div>
                                    </div><!-- .nk-block-head -->
                                    <div class="slider-init row" data-slick='{"slidesToShow": 4, "centerMode": false, "slidesToScroll": 1, "infinite":false, "responsive":[ {"breakpoint": 1540,"settings":{"slidesToShow": 3}},{"breakpoint": 992,"settings":{"slidesToShow": 2}}, {"breakpoint": 576,"settings":{"slidesToShow": 1}} ]}'>
                                    	<% for(Photo photo:Panier.listPhotoCartegrise){ %>
                                        <div class="col">
                                            <div class="card card-bordered product-card">
                                                <div class="product-thumb">
                                                    <a href="#">
                                                        <img class="card-img-top" src=<% out.println("ImageServlet?carte="+photo.getIdPhoto()); %> alt="">
                                                    </a>
                                                    <ul class="product-actions">
                                                        <li><a href="#"><em class="icon ni ni-cart"></em></a></li>
                                                        <li><a href="#"><em class="icon ni ni-heart"></em></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div><!-- .col -->
                                        <% } %>
                                        <% for(Photo photo:Panier.listPhotoAssurance){ %>
                                        <div class="col">
                                            <div class="card card-bordered product-card">
                                                <div class="product-thumb">
                                                    <a href="#">
                                                        <img class="card-img-top" src=<% out.println("ImageServlet?assurance="+photo.getIdPhoto()); %> alt="">
                                                    </a>
                                                    <ul class="product-actions">
                                                        <li><a href="#"><em class="icon ni ni-cart"></em></a></li>
                                                        <li><a href="#"><em class="icon ni ni-heart"></em></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div><!-- .col -->
                                        <% } %>
                                    </div>
                                </div>
	                            </div>
	                        </div>
	                    </div>
                    </div>
</body>
</html>