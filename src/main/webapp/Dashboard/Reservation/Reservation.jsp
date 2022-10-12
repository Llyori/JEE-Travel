<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Reservation</title>
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
                                            <h2 class="nk-block-title fw-normal">Réservation de Véhicule</h2>
                                            <div class="nk-block-des">
                                                <p class="lead">Utilisez la <a href="https://jqueryvalidation.org/" target="_blank">Plateforme de Réservation en ligne</a> de vos véhicules, pour éviter les problèmes de dernières minutes. Vous pouvez faire vos Réservation deux semaines à l'avance. Pour toutes vos questions, veillez <a href="#">Nous contacter</a>.</p>
                                            </div>
                                        </div>
                                    </div><!-- .nk-block-head -->
                                    <div class="nk-block nk-block-lg">
                                        <div class="card card-bordered">
                                            <div class="card-inner">
                                                <form action="#" class="form-validate is-alter">
                                                    <div class="row g-gs">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-full-name">Full Name</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="text" class="form-control" id="fva-full-name" name="fva-full-name" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-email">Email address</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="form-icon form-icon-right">
                                                                        <em class="icon ni ni-mail"></em>
                                                                    </div>
                                                                    <input type="text" class="form-control" id="fva-email" name="fva-email" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fv-phone">Phone</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="input-group">
                                                                        <div class="input-group-prepend">
                                                                            <span class="input-group-text" id="fv-phone">+880</span>
                                                                        </div>
                                                                        <input type="text" class="form-control" required>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fv-phone">Sex / Gender</label>
                                                                <div class="form-control-wrap">
                                                                    <ul class="custom-control-group">
                                                                        <li>
                                                                            <div class="custom-control custom-radio custom-control-pro no-control">
                                                                                <input type="radio" class="custom-control-input" name="fv-sex" id="alt-sex-male" required>
                                                                                <label class="custom-control-label" for="alt-sex-male">Male</label>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="custom-control custom-radio custom-control-pro no-control">
                                                                                <input type="radio" class="custom-control-input" name="fv-sex" id="alt-sex-female" required>
                                                                                <label class="custom-control-label" for="alt-sex-female">Female</label>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="custom-control custom-radio custom-control-pro no-control">
                                                                                <input type="radio" class="custom-control-input" name="fv-sex" id="alt-sex-other" required>
                                                                                <label class="custom-control-label" for="alt-sex-other">Others</label>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-subject">Subject</label>
                                                                <div class="form-control-wrap">
                                                                    <input type="text" class="form-control" id="fva-subject" name="fva-subject" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-topics">Topics</label>
                                                                <div class="form-control-wrap ">
                                                                    <select class="form-control form-select" id="fva-topics" name="fva-topics" data-placeholder="Select a option" required>
                                                                        <option label="empty" value=""></option>
                                                                        <option value="fva-gq">General Question</option>
                                                                        <option value="fva-tq">Tachnical Question</option>
                                                                        <option value="fva-ab">Account &amp; Billing</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label class="form-label" for="fva-message">Message</label>
                                                                <div class="form-control-wrap">
                                                                    <textarea class="form-control form-control-sm" id="fva-message" name="fva-message" placeholder="Write your message" required></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label class="form-label">Communication</label>
                                                                <ul class="custom-control-group g-3 align-center">
                                                                    <li>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input type="checkbox" class="custom-control-input" name="fva-com" id="fva-com-email" required>
                                                                            <label class="custom-control-label" for="fva-com-email">Email</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input type="checkbox" class="custom-control-input" name="fva-com" id="fva-com-sms" required>
                                                                            <label class="custom-control-label" for="fva-com-sms">SMS</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input type="checkbox" class="custom-control-input" name="fva-com" id="fva-com-phone" required>
                                                                            <label class="custom-control-label" for="fva-com-phone">Phone</label>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <button type="submit" class="btn btn-lg btn-primary">Save Informations</button>
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