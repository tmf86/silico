<?php
function chemin ($ch){
    return "../public/".$ch;
}
?>
<!DOCTYPE html>

<html lang="en">
	<!--begin::Head-->
	<head>
		<!-- Google Tag Manager -->
		<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&amp;l='+l:'';j.async=true;j.src= 'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f); })(window,document,'script','dataLayer','GTM-5FS8GGP');</script>
		<!-- End Google Tag Manager -->
		<meta charset="utf-8" />
		<title>Login Page 3 | Keenthemes</title>
		<meta name="description" content="Login page example" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!--begin::Page Vendors Styles(used by this page)-->
        <link href="<?= chemin("css/fullcalendar.bundle.css")?>" rel="stylesheet" type="text/css" />
        <!--end::Page Vendors Styles-->
        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="<?= chemin("css/plugins.bundle.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?= chemin("css/prismjs.bundle.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?= chemin("css/style.bundle.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?= chemin("fontawesome/css/all.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?= chemin("css/login-4.css")?>" rel="stylesheet" type="text/css" />

        <link href="<?=chemin("fonts/ki.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?=chemin("public/css/flaticon_font/flaticon.css")?>" rel="stylesheet" type="text/css" />
        <!--end::Global Theme Styles-->
        <!--begin::Layout Themes(used by all pages)-->
        <link href="<?=chemin("css/light.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?=chemin("css/light1.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?=chemin("css/dark.css")?>" rel="stylesheet" type="text/css" />
        <link href="<?=chemin("css/dark1.css")?>" rel="stylesheet" type="text/css" />

        <!--end::Layout Themes-->
        <link rel="shortcut icon" href="<?= chemin("images/favicon.ico")?>" />
				<script>(function(h,o,t,j,a,r){ h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)}; h._hjSettings={hjid:1070954,hjsv:6}; a=o.getElementsByTagName('head')[0]; r=o.createElement('script');r.async=1; r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv; a.appendChild(r); })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');</script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
		<!-- Google Tag Manager (noscript) -->
		<noscript>
			<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5FS8GGP" height="0" width="0" style="display:none;visibility:hidden"></iframe>
		</noscript>
		<!-- End Google Tag Manager (noscript) -->
        <!--begin::Main-->
        <div class="d-flex flex-column flex-root">
            <!--begin::Login-->
            <div class="login login-4 login-signin-on d-flex flex-row-fluid" id="kt_login">
                <div class="d-flex flex-center flex-row-fluid bgi-size-cover bgi-position-top bgi-no-repeat" style="background-image: url('/metronic/theme/html/demo1/dist/assets/media/bg/bg-3.jpg');">
                    <div class="login-form text-center p-7 position-relative overflow-hidden">
                        <!--begin::Login Header-->
                        <div class="d-flex flex-center mb-15">
                            <a href="#">
                                <img src="/metronic/theme/html/demo1/dist/assets/media/logos/logo-letter-13.png" class="max-h-75px" alt="" />
                            </a>
                        </div>
                        <!--end::Login Header-->
                        <!--begin::Login Sign in form-->
                        <div class="login-signin">
                            <div class="mb-20">
                                <h3>Sign In To Admin</h3>
                                <div class="text-muted font-weight-bold">Enter your details to login to your account:</div>
                            </div>
                            <form class="form" id="kt_login_signin_form">
                                <div class="form-group mb-5">
                                    <input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Email" name="username" autocomplete="off" />
                                </div>
                                <div class="form-group mb-5">
                                    <input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Password" name="password" />
                                </div>
                                <div class="form-group d-flex flex-wrap justify-content-between align-items-center">
                                    <div class="checkbox-inline">
                                        <label class="checkbox m-0 text-muted">
                                            <input type="checkbox" name="remember" />
                                            <span></span>Remember me</label>
                                    </div>
                                    <a href="javascript:;" id="kt_login_forgot" class="text-muted text-hover-primary">Forget Password ?</a>
                                </div>
                                <button id="kt_login_signin_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-4">Sign In</button>
                            </form>
                            <div class="mt-10">
                                <span class="opacity-70 mr-4">Don't have an account yet?</span>
                                <a href="javascript:;" id="kt_login_signup" class="text-muted text-hover-primary font-weight-bold">Sign Up!</a>
                            </div>
                        </div>
                        <!--end::Login Sign in form-->
                        <!--begin::Login Sign up form-->
                        <div class="login-signup">
                            <div class="mb-20">
                                <h3>Sign Up</h3>
                                <div class="text-muted font-weight-bold">Enter your details to create your account</div>
                            </div>
                            <form class="form" id="kt_login_signup_form">
                                <div class="form-group mb-5">
                                    <input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Fullname" name="fullname" />
                                </div>
                                <div class="form-group mb-5">
                                    <input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Email" name="email" autocomplete="off" />
                                </div>
                                <div class="form-group mb-5">
                                    <input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Password" name="password" />
                                </div>
                                <div class="form-group mb-5">
                                    <input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Confirm Password" name="cpassword" />
                                </div>
                                <div class="form-group mb-5 text-left">
                                    <div class="checkbox-inline">
                                        <label class="checkbox m-0">
                                            <input type="checkbox" name="agree" />
                                            <span></span>I Agree the
                                            <a href="#" class="font-weight-bold ml-1">terms and conditions</a>.</label>
                                    </div>
                                    <div class="form-text text-muted text-center"></div>
                                </div>
                                <div class="form-group d-flex flex-wrap flex-center mt-10">
                                    <button id="kt_login_signup_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-2">Sign Up</button>
                                    <button id="kt_login_signup_cancel" class="btn btn-light-primary font-weight-bold px-9 py-4 my-3 mx-2">Cancel</button>
                                </div>
                            </form>
                        </div>
                        <!--end::Login Sign up form-->
                        <!--begin::Login forgot password form-->
                        <div class="login-forgot">
                            <div class="mb-20">
                                <h3>Forgotten Password ?</h3>
                                <div class="text-muted font-weight-bold">Enter your email to reset your password</div>
                            </div>
                            <form class="form" id="kt_login_forgot_form">
                                <div class="form-group mb-10">
                                    <input class="form-control form-control-solid h-auto py-4 px-8" type="text" placeholder="Email" name="email" autocomplete="off" />
                                </div>
                                <div class="form-group d-flex flex-wrap flex-center mt-10">
                                    <button id="kt_login_forgot_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-2">Request</button>
                                    <button id="kt_login_forgot_cancel" class="btn btn-light-primary font-weight-bold px-9 py-4 my-3 mx-2">Cancel</button>
                                </div>
                            </form>
                        </div>
                        <!--end::Login forgot password form-->
                    </div>
                </div>
            </div>
            <!--end::Login-->
        </div>
        <!--end::Main-->
		<script>var HOST_URL = "/metronic/theme/html/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1400 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#E4E6EF", "dark": "#181C32" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#EBEDF3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#3F4254", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
        <!--begin::Global Theme Bundle(used by all pages)-->
        <script src="<?= chemin("js/plugins.bundle.js")?>"></script>
        <script src="<?= chemin("js/prismjs.bundle.js")?>"></script>
        <script src="<?= chemin("js/scripts.bundle.js")?>"></script>
        <!--end::Global Theme Bundle-->
        <!--begin::Page Vendors(used by this page)-->
        <script src="<?= chemin("js/fullcalendar.bundle.js")?>"></script>
        <script src="<?= chemin("js/login-general.js")?>"></script>

        <script src="<?= chemin("js/login-4.js")?>"></script>

        <!--end::Page Vendors-->
        <!--begin::Page Scripts(used by this page)-->
        <script src="<?= chemin("js/widgets.js")?>"></script>
        <!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>