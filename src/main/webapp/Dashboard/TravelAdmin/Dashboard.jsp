<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="Servlets.LogIn"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dashboard Admin</title>
		<jsp:include page="../../Menus/base.jsp"/>
	</head>
	<body class="nk-body bg-lighter npc-general has-sidebar">
		<div class="nk-app-root">
        	<div class="nk-main ">
            <!-- wrap @s -->
            
            	<jsp:include page="../../Menus/MenuVertiAdmin.jsp"/>
            
            	<div class="nk-wrap">
           			<jsp:include page="../../Menus/MenuHori.jsp"/>
           			 <div class="nk-content nk-content-fluid">
                    <div class="container-xl wide-lg">
                        <div class="nk-content-body">
                            <div class="nk-block-head">
                                <div class="nk-block-head-sub"><span>Bienvenue !</span>
                                </div>
                                <div class="nk-block-between-md g-4">
                                    <div class="nk-block-head-content">
                                        <h2 class="nk-block-title fw-normal"><% out.println(Servlets.LogIn.user.getNom()); %></h2>
                                        <div class="nk-block-des">
                                            <p>En un coup d'oeil, résumé de votre compte.</p>
                                        </div>
                                    </div><!-- .nk-block-head-content -->
                                </div><!-- .nk-block-between -->
                            </div><!-- .nk-block-head -->
                            <div class="nk-block">
                                <div class="row gy-gs">
                                    <div class="col-lg-5 col-xl-4">
                                        <div class="nk-block">
                                            <div class="nk-block-head-xs">
                                                <div class="nk-block-head-content">
                                                    <h5 class="nk-block-title title">Vue d'ensemble</h5>
                                                </div>
                                            </div><!-- .nk-block-head -->
                                            <div class="nk-block">
                                                <div class="card card-bordered text-light is-dark h-100">
                                                    <div class="card-inner">
                                                        <div class="nk-wg7">
                                                            <div class="nk-wg7-stats">
                                                                <div class="nk-wg7-title">Nombre Véhicules</div>
                                                                <div class="number-lg amount">20</div>
                                                            </div>
                                                            <div class="nk-wg7-stats-group">
                                                                <div class="nk-wg7-stats w-50">
                                                                    <div class="nk-wg7-title">Disponibles</div>
                                                                    <div class="number-lg">5</div>
                                                                </div>
                                                                <div class="nk-wg7-stats w-50">
                                                                    <div class="nk-wg7-title">Réservés</div>
                                                                    <div class="number">15</div>
                                                                </div>
                                                            </div>
                                                            <div class="nk-wg7-foot">
                                                                <span class="nk-wg7-note">Dernière Activitée <span>19 Nov, 2022</span></span>
                                                            </div>
                                                        </div><!-- .nk-wg7 -->
                                                    </div><!-- .card-inner -->
                                                </div><!-- .card -->
                                            </div><!-- .nk-block -->
                                        </div><!-- .nk-block -->
                                    </div><!-- .col -->
                                    <div class="col-lg-7 col-xl-8">
                                        <div class="nk-block">
                                            <div class="nk-block-head-xs">
                                                <div class="nk-block-between-md g-2">
                                                    <div class="nk-block-head-content">
                                                        <h5 class="nk-block-title title">Clients</h5>
                                                    </div>
                                                </div>
                                            </div><!-- .nk-block-head -->
                                            <div class="row g-2">
                                                <div class="col-sm-4">
                                                    <div class="card bg-light">
                                                        <div class="nk-wgw sm">
                                                            <a class="nk-wgw-inner" href="html/crypto/wallet-bitcoin.html">
                                                                <div class="nk-wgw-name">
                                                                    <div class="nk-wgw-icon">
                                                                        <em class="icon ni ni-sign-btc"></em>
                                                                    </div>
                                                                    <h5 class="nk-wgw-title title">NioWallet</h5>
                                                                </div>
                                                                <div class="nk-wgw-balance">
                                                                    <div class="amount">4.434953<span class="currency currency-nio">NIO</span></div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- .col -->
                                                <div class="col-sm-4">
                                                    <div class="card bg-light">
                                                        <div class="nk-wgw sm">
                                                            <a class="nk-wgw-inner" href="html/crypto/wallet-bitcoin.html">
                                                                <div class="nk-wgw-name">
                                                                    <div class="nk-wgw-icon">
                                                                        <em class="icon ni ni-sign-btc"></em>
                                                                    </div>
                                                                    <h5 class="nk-wgw-title title">Bitcoin Wallet</h5>
                                                                </div>
                                                                <div class="nk-wgw-balance">
                                                                    <div class="amount">4.434953<span class="currency currency-btc">BTC</span></div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- .col -->
                                                <div class="col-sm-4">
                                                    <div class="card bg-light">
                                                        <div class="nk-wgw sm">
                                                            <a class="nk-wgw-inner" href="html/crypto/wallet-bitcoin.html">
                                                                <div class="nk-wgw-name">
                                                                    <div class="nk-wgw-icon">
                                                                        <em class="icon ni ni-sign-eth"></em>
                                                                    </div>
                                                                    <h5 class="nk-wgw-title title">Ethereum Wallet</h5>
                                                                </div>
                                                                <div class="nk-wgw-balance">
                                                                    <div class="amount">0.000560<span class="currency currency-eth">ETH</span></div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- .col -->
                                            </div><!-- .row -->
                                        </div><!-- .nk-block -->
                                        <div class="nk-block nk-block-md">
                                            <div class="nk-block-head-xs">
                                                <div class="nk-block-between-md g-2">
                                                    <div class="nk-block-head-content">
                                                        <h6 class="nk-block-title title">Personnel</h6>
                                                    </div>
                                                </div>
                                            </div><!-- .nk-block-head -->
                                            <div class="row g-2">
                                                <div class="col-sm-4">
                                                    <div class="card bg-light">
                                                        <div class="nk-wgw sm">
                                                            <a class="nk-wgw-inner" href="html/crypto/wallet-bitcoin.html">
                                                                <div class="nk-wgw-name">
                                                                    <div class="nk-wgw-icon">
                                                                        <em class="icon ni ni-sign-btc"></em>
                                                                    </div>
                                                                    <h5 class="nk-wgw-title title">Chauffeur</h5>
                                                                </div>
                                                                <div class="nk-wgw-balance">
                                                                    <div class="amount">4.434953<span class="currency currency-nio">NIO</span></div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- .col -->
                                                <div class="col-sm-4">
                                                    <div class="card bg-light">
                                                        <div class="nk-wgw sm">
                                                            <a class="nk-wgw-inner" href="html/crypto/wallet-bitcoin.html">
                                                                <div class="nk-wgw-name">
                                                                    <div class="nk-wgw-icon">
                                                                        <em class="icon ni ni-sign-btc"></em>
                                                                    </div>
                                                                    <h5 class="nk-wgw-title title">Bitcoin Wallet</h5>
                                                                </div>
                                                                <div class="nk-wgw-balance">
                                                                    <div class="amount">4.434953<span class="currency currency-btc">BTC</span></div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- .col -->
                                                <div class="col-sm-4">
                                                    <div class="card bg-light">
                                                        <div class="nk-wgw sm">
                                                            <a class="nk-wgw-inner" href="html/crypto/wallet-bitcoin.html">
                                                                <div class="nk-wgw-name">
                                                                    <div class="nk-wgw-icon">
                                                                        <em class="icon ni ni-sign-eth"></em>
                                                                    </div>
                                                                    <h5 class="nk-wgw-title title">Ethereum Wallet</h5>
                                                                </div>
                                                                <div class="nk-wgw-balance">
                                                                    <div class="amount">0.000560<span class="currency currency-eth">ETH</span></div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div><!-- .col -->
                                            </div><!-- .row -->
                                        </div> <!-- .nk-block -->
                                    </div><!-- .col -->
                                </div><!-- .row -->
                            </div><!-- .nk-block -->
                        </div>
                    </div>
                </div>
           		</div>
           	</div>
         </div>
	</body>
</html>