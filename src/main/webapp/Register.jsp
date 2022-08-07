<!DOCTYPE html>
<html lang="zxx" class="js">

	<jsp:include page="Partiel/base.jsp"/>


<body class="nk-body bg-white npc-general pg-auth">
    <div class="nk-app-root">
        <div class="nk-main ">
            <div class="nk-wrap nk-wrap-nosidebar">
                <div class="nk-content ">
                    <div class="nk-block nk-block-middle nk-auth-body wide-xs">
                        <div class="brand-logo pb-4 text-center">
                            <a href="html/index.html" class="logo-link">
                                <img class="logo-light logo-img logo-img-lg" src="./images/logo.png" srcset="./images/logo2x.png 2x" alt="logo">
                                <img class="logo-dark logo-img logo-img-lg" src="./images/logo-dark.png" srcset="./images/logo-dark2x.png 2x" alt="logo-dark">
                            </a>
                        </div>
                        <div class="card card-bordered">
                            <div class="card-inner card-inner-lg">
                                <div class="nk-block-head">
                                	<%
										String message = (String) request.getAttribute("message");
  										if(message != null){
											if(message == "Reussi"){
												out.println("<div class='alert alert-fill alert-icon alert-success' role='alert'> <em class='icon ni ni-alert-circle'></em> <strong>Compte créé avec succès.</div>");
											}else
												out.println("<div class='alert alert-fill alert-icon alert-danger' role='alert'> <em class='icon ni ni-alert-circle'></em> <strong>"+message+".</div>");
										}
										
									%>
                                    <div class="nk-block-head-content">
                                        <h4 class="nk-block-title">Register</h4>
                                        <div class="nk-block-des">
                                            <p>Créer un Compte</p>
                                        </div>
                                    </div>
                                </div>
                                <form action="register" method="post">
                                    <div class="form-group">
                                        <label class="form-label" for="name">Nom</label>
                                        <div class="form-control-wrap">
                                            <input type="text" name="name" class="form-control form-control-lg" id="name" placeholder="Entez votre Nom">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="email">Email</label>
                                        <div class="form-control-wrap">
                                            <input type="text" name="email" class="form-control form-control-lg" id="email" placeholder="Entrez votre Adresse Mail">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="email">Telephone</label>
                                        <div class="form-control-wrap">
                                            <input type="text" name="telephone" class="form-control form-control-lg" id="email" placeholder="Entrez votre Numéro de Téléphone">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="password">Passcode</label>
                                        <div class="form-control-wrap">
                                            <a href="#" class="form-icon form-icon-right passcode-switch lg" data-target="password">
                                                <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                                <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                                            </a>
                                            <input type="password" name="passcode" class="form-control form-control-lg" id="password" placeholder="Entrez votre mot de passe">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="password">Confirm Passcode</label>
                                        <div class="form-control-wrap">
                                            <a href="#" class="form-icon form-icon-right passcode-switch lg" data-target="password">
                                                <em class="passcode-icon icon-show icon ni ni-eye"></em>
                                                <em class="passcode-icon icon-hide icon ni ni-eye-off"></em>
                                            </a>
                                            <input type="password" name="Cpasscode" class="form-control form-control-lg" id="Cpassword" placeholder="Repetez votre mot de passe">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-control-xs custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="checkbox" required>
                                            <label class="custom-control-label" for="checkbox">J'accepte les <a href="#">Termes</a> &amp; <a href="#"> Police de Confidentialités.</a></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-lg btn-primary btn-block">Register</button>
                                    </div>
                                </form>
                                <div class="form-note-s2 text-center pt-4"> Avez-vous déjà un compte? <a href="index.jsp"><strong>Se connecter maintenant ?</strong></a>
                                </div>
                                <div class="text-center pt-4 pb-3">
                                    <h6 class="overline-title overline-title-sap"><span>OR</span></h6>
                                </div>
                                <ul class="nav justify-center gx-8">
                                    <li class="nav-item"><a class="nav-link" href="#">Facebook</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Google</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
        </div>
    </div>

</html>