@extends('layouts.client')
@section('content')
@foreach ($categogies as $cate)
<h1>{{$cate->categogyName}}</h1>
    
@endforeach
{{-- <head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<meta name="author" content="W3Layouts.com" />

	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	<!-- google fonts -->

	<link href="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/css/style-liberty.css" rel="stylesheet">
	<title>About page &#8211; Dentition &#8211; Medical Category WordPress Theme</title>
<meta name='robots' content='max-image-preview:large' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="Dentition - Medical Category WordPress Theme &raquo; Feed" href="https://wp.w3layouts.com/dentition/feed/" />
<link rel="alternate" type="application/rss+xml" title="Dentition - Medical Category WordPress Theme &raquo; Comments Feed" href="https://wp.w3layouts.com/dentition/comments/feed/" />
<script>
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/wp.w3layouts.com\/dentition\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.0.3"}};
/*! This file is auto-generated */
!function(e,a,t){var n,r,o,i=a.createElement("canvas"),p=i.getContext&&i.getContext("2d");function s(e,t){var a=String.fromCharCode,e=(p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,e),0,0),i.toDataURL());return p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,t),0,0),e===i.toDataURL()}function c(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(o=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},r=0;r<o.length;r++)t.supports[o[r]]=function(e){if(!p||!p.fillText)return!1;switch(p.textBaseline="top",p.font="600 32px Arial",e){case"flag":return s([127987,65039,8205,9895,65039],[127987,65039,8203,9895,65039])?!1:!s([55356,56826,55356,56819],[55356,56826,8203,55356,56819])&&!s([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]);case"emoji":return!s([129777,127995,8205,129778,127999],[129777,127995,8203,129778,127999])}return!1}(o[r]),t.supports.everything=t.supports.everything&&t.supports[o[r]],"flag"!==o[r]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[o[r]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(e=t.source||{}).concatemoji?c(e.concatemoji):e.wpemoji&&e.twemoji&&(c(e.twemoji),c(e.wpemoji)))}(window,document,window._wpemojiSettings);
</script>
<style>
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 0.07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
	<link rel='stylesheet' id='wp-block-library-css'  href='https://wp.w3layouts.com/dentition/wp-includes/css/dist/block-library/style.min.css?ver=6.0.3' media='all' />
<style id='global-styles-inline-css'>
body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');--wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');--wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');--wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');--wp--preset--duotone--midnight: url('#wp-duotone-midnight');--wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');--wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');--wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}
</style>
<link rel='stylesheet' id='w3layouts-style-css'  href='https://wp.w3layouts.com/dentition/wp-content/themes/dentition/style.css?ver=1.0.0' media='all' />
<link rel='stylesheet' id='fm-frontend-css'  href='https://wp.w3layouts.com/dentition/wp-content/plugins/tlp-food-menu/assets/css/foodmenu.min.css?ver=4.0.0' media='all' />
<link rel='stylesheet' id='recent-posts-widget-with-thumbnails-public-style-css'  href='https://wp.w3layouts.com/dentition/wp-content/plugins/recent-posts-widget-with-thumbnails/public.css?ver=7.1.1' media='all' />
<link rel="https://api.w.org/" href="https://wp.w3layouts.com/dentition/wp-json/" /><link rel="alternate" type="application/json" href="https://wp.w3layouts.com/dentition/wp-json/wp/v2/pages/10" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://wp.w3layouts.com/dentition/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://wp.w3layouts.com/dentition/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 6.0.3" />
<link rel="canonical" href="https://wp.w3layouts.com/dentition/about-page/" />
<link rel='shortlink' href='https://wp.w3layouts.com/dentition/?p=10' />
<link rel="alternate" type="application/json+oembed" href="https://wp.w3layouts.com/dentition/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdentition%2Fabout-page%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://wp.w3layouts.com/dentition/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdentition%2Fabout-page%2F&#038;format=xml" />
</head> --}}

<body id="top-gap-fixed-header" class="page-template page-template-page-templates page-template-template-aboutpage page-template-page-templatestemplate-aboutpage-php page page-id-10 no-sidebar">
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-dark-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0.49803921568627" /><feFuncG type="table" tableValues="0 0.49803921568627" /><feFuncB type="table" tableValues="0 0.49803921568627" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.54901960784314 0.98823529411765" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.71764705882353 0.25490196078431" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-red"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 0.27843137254902" /><feFuncB type="table" tableValues="0.5921568627451 0.27843137254902" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-midnight"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0" /><feFuncG type="table" tableValues="0 0.64705882352941" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-magenta-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.78039215686275 1" /><feFuncG type="table" tableValues="0 0.94901960784314" /><feFuncB type="table" tableValues="0.35294117647059 0.47058823529412" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-green"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.65098039215686 0.40392156862745" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.44705882352941 0.4" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-orange"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.098039215686275 1" /><feFuncG type="table" tableValues="0 0.66274509803922" /><feFuncB type="table" tableValues="0.84705882352941 0.41960784313725" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>	
	
<!-- inner banner -->
<section class="inner-banner py-5">
  <style>
    .inner-banner {
      background-image: url(https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/banner4.jpg);
    }
  </style>
  <div class="w3l-breadcrumb py-lg-5">
    <div class="container pt-4 pb-sm-4 AboutPageBanner">
                  <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
        About Us</h4>
      
                  <ul class="breadcrumbs-custom-path AllBreadcrumbs">
        <a href="https://wp.w3layouts.com/dentition" rel="nofollow">Home</a>&nbsp;&nbsp;&#187;&nbsp;&nbsp;About page      </ul>
          </div>
  </div>
</section>
<!-- //inner banner -->



<!-- AboutPage about section -->
<section>
  </section>

<section class="w3l-homeblock1 py-5" id="about">
  <div class="container py-md-5 py-4 AboutPageAbout">
    <div class="row align-items-center">
      <div class="col-lg-6 pe-xl-5">
        <h3 class="title-style mb-3">
          Welcome to          <span>Dentition</span>
        </h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad, quis nostrud ullamco laboris nisi ut ex ea. </p>
        <div class="mt-4">
          <ul class="service-list">

            <li class="service-link"><a href="#url"><i
                  class="fas fa-check-circle"></i>Exceptional Service</a>
            </li>

            <li class="service-link"><a href="#url"><i
                  class="fas fa-check-circle"></i>Soft & Gentle</a>
            </li>

          </ul>
        </div>
        <a href="#url"
          class="btn btn-style mt-4">Discover More</a>
      </div>
      <div class="col-lg-6 homeaboutblock mt-lg-0 mt-5">
        <img
          src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/about.jpg"
          class="img-fluid radius-image" alt="image">
      </div>
    </div>
  </div>
</section>

<!-- //AboutPage about section -->





<!-- AboutPage Features -->

<section>
  </section>

<section class="w3l-features py-5" id="features">
  <div class="container py-md-5 py-4 AboutPageFeatures">
    <h3 class="title-style text-center text-white mb-sm-5 mb-4">
      Our Awesome      <span>Features</span></h3>

    <div class="row text-center">

                  <div class="col-lg-4 col-sm-6">
        <div class="feature-gd feature-gd-2">
          <div class="icon">
            <i
              class="fas fa-hand-holding-medical"></i>
          </div>
          <div class="icon-info">
            <h5><a
                href="#url">The Quality of Used Medical Materials</a>
            </h5>
            <p> Lorem ipsum dolor sit amet, sed eiusmod
              temporinit sit.</p>
            <a href="#url"
              class="btn btn-style-primary">Learn More<i
                class="fas fa-arrow-right"></i></a>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-4 col-sm-6 mt-sm-0 mt-4">
        <div class="feature-gd feature-gd-2">
          <div class="icon">
            <i
              class="fas fa-tooth"></i>
          </div>
          <div class="icon-info">
            <h5><a
                href="#url">Dental Implants-New Teeth in One Day</a>
            </h5>
            <p> Lorem ipsum dolor sit amet, sed eiusmod
              temporinit sit.</p>
            <a href="#url"
              class="btn btn-style-primary">Learn More<i
                class="fas fa-arrow-right"></i></a>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-4 col-sm-6 mt-lg-0 mt-sm-5 mt-4">
        <div class="feature-gd feature-gd-2">
          <div class="icon">
            <i
              class="fas fa-briefcase-medical"></i>
          </div>
          <div class="icon-info">
            <h5><a
                href="#url">A Full Range of Dental Services</a>
            </h5>
            <p>Lorem ipsum dolor sit amet, sed eiusmod
              temporinit sit.</p>
            <a href="#url"
              class="btn btn-style-primary">Learn More<i
                class="fas fa-arrow-right"></i></a>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-4 col-sm-6 mt-sm-5 mt-4">
        <div class="feature-gd feature-gd-2">
          <div class="icon">
            <i
              class="far fa-money-bill-alt"></i>
          </div>
          <div class="icon-info">
            <h5><a
                href="#url">Loyalty Discounts of Regular Customers</a>
            </h5>
            <p> Lorem ipsum dolor sit amet, sed eiusmod
              temporinit sit.</p>
            <a href="#url"
              class="btn btn-style-primary">Learn More<i
                class="fas fa-arrow-right"></i></a>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-4 col-sm-6 mt-sm-5 mt-4">
        <div class="feature-gd feature-gd-2">
          <div class="icon">
            <i
              class="fas fa-syringe"></i>
          </div>
          <div class="icon-info">
            <h5><a
                href="#url">Dental Implants-New Teeth in One Day</a>
            </h5>
            <p> Lorem ipsum dolor sit amet, sed eiusmod
              temporinit sit.</p>
            <a href="#url"
              class="btn btn-style-primary">Learn More<i
                class="fas fa-arrow-right"></i></a>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-4 col-sm-6 mt-sm-5 mt-4">
        <div class="feature-gd feature-gd-2">
          <div class="icon">
            <i
              class="fas fa-teeth-open"></i>
          </div>
          <div class="icon-info">
            <h5><a
                href="#url">Modern Methods of Teeth Straightening</a>
            </h5>
            <p> Lorem ipsum dolor sit amet, sed eiusmod
              temporinit sit.</p>
            <a href="#url"
              class="btn btn-style-primary">Learn More<i
                class="fas fa-arrow-right"></i></a>
          </div>
        </div>
      </div>
      
    </div>

  </div>
</section>

<section>
  </section>

<!-- //AboutPage Features -->





<!-- AboutPage team -->

<section>
  </section>

<section class="w3l-team py-5">
  <div class="container py-md-5 py-4 AboutPageTeam">
    <h3 class="title-style text-center mb-5">
      Meet Our      <span>Doctors</span></h3>
    <div class="row text-center">

                  <div class="col-lg-3 col-sm-6">
        <div class="team-block-single">
          <div class="team-grids">
            <a href="#team-single">
              <img
                src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/team1.jpg"
                class="img-fluid" alt="">
              <div class="team-info">

                <div class="social-icons-section">

                                                      <a class="fac" href="https://www.facebook.com/w3layouts/">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                  
                                                      <a class="twitter mx-2" href="https://twitter.com/W3layouts">
                    <i class="fab fa-twitter"></i>
                  </a>
                  
                                                      <a class="google"
                    href="https://w3layouts.com/tag/email-templates/">
                    <i class="fab fa-google-plus-g"></i>
                  </a>
                  
                </div>

              </div>
            </a>
          </div>
          <div class="team-bottom-block p-4">
            <h5 class="member mb-1"><a
                href="#url">Olive Yew</a>
            </h5>
            <small>Dentist</small>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-3 col-sm-6 mt-sm-0 mt-4">
        <div class="team-block-single">
          <div class="team-grids">
            <a href="#team-single">
              <img
                src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/team2.jpg"
                class="img-fluid" alt="">
              <div class="team-info">
                <div class="social-icons-section">
                                                      <a class="fac" href="https://www.facebook.com/w3layouts/">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                  
                                                      <a class="twitter mx-2" href="https://twitter.com/W3layouts">
                    <i class="fab fa-twitter"></i>
                  </a>
                  
                                                      <a class="google"
                    href="https://w3layouts.com/tag/email-templates/">
                    <i class="fab fa-google-plus-g"></i>
                  </a>
                  
                </div>
              </div>
            </a>
          </div>
          <div class="team-bottom-block p-4">
            <h5 class="member mb-1 active"><a
                href="#url">Aida Joe</a>
            </h5>
            <small>Orthodontist</small>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-3 col-sm-6 mt-lg-0 mt-4">
        <div class="team-block-single">
          <div class="team-grids">
            <a href="#team-single">
              <img
                src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/team3.jpg"
                class="img-fluid" alt="">
              <div class="team-info">
                <div class="social-icons-section">

                                                      <a class="fac" href="https://www.facebook.com/w3layouts/">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                  
                                                      <a class="twitter mx-2" href="https://twitter.com/W3layouts">
                    <i class="fab fa-twitter"></i>
                  </a>
                  
                                                      <a class="google"
                    href="https://w3layouts.com/tag/email-templates/">
                    <i class="fab fa-google-plus-g"></i>
                  </a>
                  
                </div>
              </div>
            </a>
          </div>
          <div class="team-bottom-block p-4">
            <h5 class="member mb-1"><a
                href="#url">Teri Dac</a>
            </h5>
            <small>Hygienist</small>
          </div>
        </div>
      </div>
      
                  <div class="col-lg-3 col-sm-6 mt-lg-0 mt-4">
        <div class="team-block-single">
          <div class="team-grids">
            <a href="#team-single">
              <img
                src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/team4.jpg"
                class="img-fluid" alt="">
              <div class="team-info">
                <div class="social-icons-section">

                                                      <a class="fac" href="https://www.facebook.com/w3layouts/">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                  
                                                      <a class="twitter mx-2" href="https://twitter.com/W3layouts">
                    <i class="fab fa-twitter"></i>
                  </a>
                  
                                                      <a class="google"
                    href="https://w3layouts.com/tag/email-templates/">
                    <i class="fab fa-google-plus-g"></i>
                  </a>
                                  </div>
              </div>
            </a>
          </div>
          <div class="team-bottom-block p-4">
            <h5 class="member mb-1"><a
                href="#url">Anton Bne</a>
            </h5>
            <small>Dentist</small>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</section>

<section>
  </section>

<!-- AboutPage team -->





<!-- AboutPage Testimonials -->

<section>
  </section>

<section class="w3l-testimonials pb-5" id="testimonials">
  <div class="container py-md-5 py-4 AboutPageTestimonials">
    <h3 class="title-style text-center mb-5">
      What Our      <span>Patients</span>
      Say!</h3>
    <div class="owl-testimonial owl-carousel owl-theme mx-auto" style="max-width:1000px">

                  <div class="item">
        <div class="slider-info">
          <div class="img-circle">
            <img
              src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/testi1.jpg"
              class="img-fluid rounded" alt="client image">
          </div>
          <div class="message-info">
            <span class="fa fa-quote-left mr-2"></span>
            <div class="message">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea sit id
              accusantium officia quod quasi necessitatibus perspiciatis Harum error provident
              quibusdam tenetur dolor sit amet.Nulla mollis dapibus nunc, ut rhoncus turpis sodales
              quis. Integer sit amet mattis quam. Lorem ipsum, dolor sit
              amet consectetur adipisicing elit.</div>
            <div class="name">
              - Johnson            </div>
            <div class="desp ms-2">
              Businessman            </div>
          </div>
        </div>
      </div>
      

                  <div class="item">
        <div class="slider-info">
          <div class="img-circle">
            <img
              src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/testi2.jpg"
              class="img-fluid rounded" alt="client image">
          </div>
          <div class="message-info">
            <span class="fa fa-quote-left mr-2"></span>
            <div class="message">Hpsum dolor sit amet consectetur adipisicing elit. Ea sit id
              accusantium officia quod quasi necessitatibus perspiciatis Harum error provident
              quibusdam tenetur.Nulla mollis dapibus nunc, ut rhoncus turpis sodales quis. Integer sit
              amet mattis quam.consectetur adipisicing elit.Lorem ipsum, dolor sit amet consectetur
              adipisicing elit.</div>
            <div class="name">
              - Sami Wade            </div>
            <div class="desp ms-2">
              Manager            </div>
          </div>
        </div>
      </div>
      
                  <div class="item">
        <div class="slider-info">
          <div class="img-circle">
            <img src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/images/testi3.jpg" class="img-fluid rounded" alt="client image">
          </div>
          <div class="message-info">
            <span class="fa fa-quote-left mr-2"></span>
            <div class="message">Morem ipsum dolor sit amet consectetur adipisicing elit. Ea sit id
              accusantium officia quod quasi necessitatibus perspiciatis Harum error provident
              quibusdam tenetur.Nulla mollis dapibus nunc, ut rhoncus turpis sodales quis. Integer sit
              amet mattis quam.consectetur adipisicing elitLorem ipsum, dolor sit amet consectetur
              adipisicing elit.</div>
            <div class="name">- Smith roy</div>
            <div class="desp ms-2">Employee</div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</section>

<section>
  </section>

<!-- //AboutPage Testimonials -->




<!-- AboutPage Booking Number -->

<section>
  </section>

<!-- call section -->
<section class="w3l-call-to-action-6">
  <div class="container py-md-5 py-sm-4 py-5 AboutPageBookingNumber">
    <div class="d-sm-flex align-items-center justify-content-between">
      <div class="left-content-call">
        <h3 class="title-big">
          Visit Now!</h3>
        <p class="text-white mt-1">
          Begin the change today        </p>
      </div>
      <div class="right-content-call mt-sm-0 mt-4">
        <ul class="buttons">
          <li class="phone-sec me-lg-4"><i
              class="fas fa-phone-volume"></i>
            <a class="call-style-w3"
              href="tel:+1(23) 456 789 0000">+1(23) 456 789 0000</a>
          </li>
          <li><a href="appointment"
              class="btn btn-style btn-style-2 mt-lg-0 mt-3">Book Now</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- //call section -->

<section>
  </section>

<!-- //AboutPage Booking Number -->
















<!-- Js scripts -->
<!-- move top -->
<button onclick="topFunction()" id="movetop" title="Go to top">
  <span class="fas fa-level-up-alt" aria-hidden="true"></span>
</button>
<script>
  // When the user scrolls down 20px from the top of the document, show the button
  window.onscroll = function () {
    scrollFunction()
  };

  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      document.getElementById("movetop").style.display = "block";
    } else {
      document.getElementById("movetop").style.display = "none";
    }
  }

  // When the user clicks on the button, scroll to the top of the document
  function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
</script>
<!-- //move top -->

<!-- common jquery plugin -->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/jquery-3.3.1.min.js"></script>
<!-- //common jquery plugin -->

<!-- banner slider -->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/jquery.min.js"></script>
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/modernizr-2.6.2.min.js"></script>
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/jquery.zoomslider.min.js"></script>
<!-- //banner slider -->

<!-- for services carousel slider -->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/owl.carousel.js"></script>
<script>
  $(document).ready(function () {
    $('.owl-three').owlCarousel({
      loop: true,
      stagePadding: 20,
      margin: 20,
      autoplay: true,
      autoplayTimeout: 5000,
      autoplaySpeed: 1000,
      autoplayHoverPause: false,
      nav: false,
      responsive: {
        0: {
          items: 1
        },
        600: {
          items: 2
        },
        991: {
          items: 3
        },
        1200: {
          items: 4
        }
      }
    })
  })
</script>
<!-- //for services carousel slider -->

    <!-- script for testimonials -->
    <script>
        $(document).ready(function () {
            $('.owl-testimonial').owlCarousel({
                loop: true,
                margin: 0,
                nav: true,
                responsiveClass: true,
                autoplay: true,
                autoplayTimeout: 5000,
                autoplaySpeed: 1000,
                autoplayHoverPause: false,
                responsive: {
                    0: {
                        items: 1,
                        nav: false
                    },
                    480: {
                        items: 1,
                        nav: false
                    },
                    667: {
                        items: 1,
                        nav: true
                    },
                    1000: {
                        items: 1,
                        nav: true
                    }
                }
            })
        })
    </script>
    <!-- //script for testimonials -->

    
<!-- counter for stats -->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/counter.js"></script>
<!-- //counter for stats -->

<!-- theme switch js (light and dark)-->
<script src="https://wp.w3layouts.com/dentition/wp-content/themes/dentition/assets/js/theme-change.js"></script>
<!-- //theme switch js (light and dark)-->

<!-- MENU-JS -->
<script>
  $(window).on("scroll", function () {
    var scroll = $(window).scrollTop();

    if (scroll >= 80) {
      $("#site-header").addClass("nav-fixed");
    } else {
      $("#site-header").removeClass("nav-fixed");
    }
  });

  //Main navigation Active Class Add Remove
  $(".navbar-toggler").on("click", function () {
    $("header").toggleClass("active");
  });
  $(document).on("ready", function () {
    if ($(window).width() > 991) {
      $("header").removeClass("active");
    }
    $(window).on("resize", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
    });
  });
</script>
<!-- //MENU-JS -->

<!-- disable body scroll which navbar is in active -->
<script>
  $(function () {
    $('.navbar-toggler').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>


@endsection
