<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Beans.ReservationE" import="Servlets.Reservation" import="Servlets.LogIn"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Bons Reservation</title>
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
	 								<div class="nk-block-head">
		                                    <div class="nk-block-between g-3">
		                                        <div class="nk-block-head-content">
		                                            <h3 class="nk-block-title page-title">Facture <strong class="text-primary small">#<% out.println(Reservation.reservation.getIdReservation()); %></strong></h3>
		                                            <div class="nk-block-des text-soft">
		                                                <ul class="list-inline">
		                                                    <li>Réservé le: <span class="text-base"><% out.println(Reservation.reservation.getDateReservation()); %></span></li>
		                                                </ul>
		                                            </div>
		                                        </div>
		                                        <div class="nk-block-head-content">
		                                            <a href="html/invoice-list.html" class="btn btn-outline-light bg-white d-none d-sm-inline-flex"><em class="icon ni ni-arrow-left"></em><span>Back</span></a>
		                                            <a href="html/invoice-list.html" class="btn btn-icon btn-outline-light bg-white d-inline-flex d-sm-none"><em class="icon ni ni-arrow-left"></em></a>
		                                        </div>
		                                    </div>
		                                </div><!-- .nk-block-head -->
		                                <div class="nk-block">
		                                    <div class="invoice">
		                                        <div class="invoice-action">
		                                            <a class="btn btn-icon btn-lg btn-white btn-dim btn-outline-primary" href="html/invoice-print.html" target="_blank"><em class="icon ni ni-printer-fill"></em></a>
		                                        </div><!-- .invoice-actions -->
		                                        <div class="invoice-wrap">
		                                            <div class="invoice-brand text-center">
		                                                <img src="./images/logo-dark.png" srcset="./images/logo-dark2x.png 2x" alt="">
		                                            </div>
		                                            <div class="invoice-head">
		                                                <div class="invoice-contact">
		                                                    <span class="overline-title">Facture à</span>
		                                                    <div class="invoice-contact-info">
		                                                        <h4 class="title"><% out.println(LogIn.user.getNom()+", "+LogIn.user.getEmail()); %></h4>
		                                                        <ul class="list-plain">
		                                                            <li><em class="icon ni ni-map-pin-fill"></em><span>House #65, 4328 Marion Street<br>Newbury, VT 05051</span></li>
		                                                            <li><em class="icon ni ni-call-fill"></em><span><% out.println(LogIn.user.getTelephone()); %></span></li>
		                                                        </ul>
		                                                    </div>
		                                                </div>
		                                                <div class="invoice-desc">
		                                                    <h3 class="title">Facture</h3>
		                                                    <ul class="list-plain">
		                                                        <li class="invoice-id"><span>ID Facture</span>:<span><% out.println(Reservation.reservation.getIdReservation()); %></span></li>
		                                                        <li class="invoice-date"><span>Date</span>:<span>26 Jan, 2020</span></li>
		                                                    </ul>
		                                                </div>
		                                            </div><!-- .invoice-head -->
		                                            <div class="invoice-bills">
		                                                <div class="table-responsive">
		                                                    <table class="table table-striped">
		                                                        <thead>
		                                                            <tr>
		                                                                <th class="w-150px">Voiture</th>
		                                                                <th class="w-60">Description</th>
		                                                                <th>Prix</th>
		                                                                <th>Nombre Voitures</th>
		                                                                <th>Montant Total</th>
		                                                            </tr>
		                                                        </thead>
		                                                        <tbody>
		                                                            <tr>
		                                                                <td><% out.println(Reservation.reservation.getIdVoiture().getMarque()); %></td>
		                                                                <td><% out.println(Reservation.reservation.getIdVoiture().getImmatriculation()+" , "+Reservation.reservation.getIdVoiture().getModele()); %> </td>
		                                                                <td><% out.println(Reservation.reservation.getIdVoiture().getPrixlocation()); %></td>
		                                                                <td><% out.println(Reservation.reservation.getNbreVoiture()); %></td>
		                                                                <td><% out.println(Reservation.reservation.getNbreVoiture()*Reservation.reservation.getIdVoiture().getPrixlocation()+" FCFA"); %></td>
		                                                            </tr>
		                                                        </tbody>
		                                                        <tfoot>
		                                                            <tr>
		                                                                <td colspan="2"></td>
		                                                                <td colspan="2">Subtotal</td>
		                                                                <td><% out.println(Reservation.reservation.getNbreVoiture()*Reservation.reservation.getIdVoiture().getPrixlocation()+" FCFA"); %></td>
		                                                            </tr>
		                                                            <tr>
		                                                                <td colspan="2"></td>
		                                                                <td colspan="2">TAX</td>
		                                                                <td>0.00 FCFA</td>
		                                                            </tr>
		                                                            <tr>
		                                                                <td colspan="2"></td>
		                                                                <td colspan="2">Grand Total</td>
		                                                                <td><% out.println(Reservation.reservation.getNbreVoiture()*Reservation.reservation.getIdVoiture().getPrixlocation()+" FCFA"); %></td>
		                                                            </tr>
		                                                        </tfoot>
		                                                    </table>
		                                                    <div class="nk-notes ff-italic fs-12px text-soft"> Invoice was created on a computer and is valid without the signature and seal. </div>
		                                                </div>
		                                            </div><!-- .invoice-bills -->
		                                        </div><!-- .invoice-wrap -->
		                                    </div><!-- .invoice -->
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