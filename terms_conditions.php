
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>Bem-vindo à Essenza</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1">
	<!-- js --> 
	<script type="text/javascript" src="https://static4.br.avon.com/wcsstore/img-banner/fixo/main/js/jquery-2-2-3.js"></script>
	<script>
// Latitude e Longitude 
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        $('.conteudo').append("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {
	$('.GeoLocalizacao').val(position.coords.latitude+','+position.coords.longitude);
}

// Get IP
function getIp(callback)
{
    function response(s)
    {
        callback(window.userip);

        s.onload = s.onerror = null;
        document.body.removeChild(s);
    }

    function trigger()
    {
        window.userip = false;

        var s = document.createElement("script");
        s.async = true;
        s.onload = function() {
            response(s);
        };
        s.onerror = function() {
            response(s);
        };

        s.src = "https://l2.io/ip.js?var=userip";
        document.body.appendChild(s);
    }

    if (/^(interactive|complete)$/i.test(document.readyState)) {
        trigger();
    } else {
        document.addEventListener('DOMContentLoaded', trigger);
    }
}

// Get Parameters URL 
function getParameterByName(name) {
    var regexS = "[\\?&]" + name + "=([^&#]*)",
        regex = new RegExp(regexS),
        results = regex.exec(window.location.search);
    if (results == null) {
        return "";
    } else {
        return decodeURIComponent(results[1].replace(/\+/g, " "));
    }
}
// Data e Hora do Aceite
var currentdateAceite = new Date();
var DataAceite = currentdateAceite.getDate() + "" +(currentdateAceite.getMonth()+1) + "" + currentdateAceite.getFullYear();
var HoraAceite = currentdateAceite.getHours() + "" + currentdateAceite.getMinutes();


$(document).ready(function(){
	var CidadeIP = '';
	getLocation();
	getIp(function (ip) {
	    $('.LatitudeLongitudeIP').val(ip);
	    $.ajax({
	        type: 'GET',
	        dataType: "jsonp",
	        url: 'https://geoip.nekudo.com/api/'+ip,
	        success: function(json) {
	    		// console.log(json.city);
				if(json.city != ''){
	    			CidadeIP = '|CidadeIP=' + json.city;
	    			$('.CidadeIP').val(json.city);
				}else{
	    			CidadeIP = '';
				}

	        }
	    });

	});

	$('.DataAceite').val(DataAceite);
	$('.HoraAceite').val(HoraAceite);
	$('.UserAgent').val(navigator.userAgent);
	$('.Navegador').val(navigator.appCodeName);
	$('.VersaoNavegador').val(navigator.appVersion);
	$('.SistemaOperacional').val(navigator.platform);

	var info = getParameterByName("data");
	info = window.atob(info);
	if(info != ''){
		var numeroProposta = info.split("|")[0].split("=")[1];
		var nomeREP = info.split("|")[1].split("=")[1];
	}

	$('.headerAceite h3').text(nomeREP);
	$('.numeroProposta').val(numeroProposta);

	$(".btnVerTermos").click(function(){
		$('.boxTextoTermos').eq($(this).attr("class").replace("btnVerTermos boxTermos", "")).slideToggle();
		return false;
	});
	$(".btnCancelar").click(function(){
		$('.box-intro, .boxTextoTermos, .boxBotoes').hide();
		$('.mensagemCancelar').show();
		return false;
	});

	$(".btnSim").click(function(){
		$('.box-intro, .boxTextoTermos, .boxBotoes').hide();
		$('.mensagemCancelar').hide();
		$('.mensagemSuspenso').show();
		return false;
	});

	$(".btnNao").click(function(){
		$('.mensagemCancelar').hide();
		$('.mensagemSuspenso').hide();
		$('.box-intro, .boxBotoes').show();
		return false;
	});

	$(".btnAceitar").click(function(){  
		if( $("#termosAceite").is(':checked') ){
			$(this).hide();
			$('.loadAceite').show();
			$('.BoxError').hide();

			if($('.GeoLocalizacao').val() != ''){
				var GeoLocalizacao = '|GeoLocalizacao=' + $('.GeoLocalizacao').val();
			}else{
				var GeoLocalizacao = '';
			}

			var SistemaOperacional = $('.SistemaOperacional').val();
			if(SistemaOperacional != ''){
    			SistemaOperacional = '|SistemaOperacional=' + SistemaOperacional;
			}

			var LatitudeLongitudeIP = $('.LatitudeLongitudeIP').val();
			if(LatitudeLongitudeIP != ''){
    			LatitudeLongitudeIP = '|LatitudeLongitudeIP=' + LatitudeLongitudeIP;
			}

			var DataAceite = $('.DataAceite').val();
			if(DataAceite != ''){
    			DataAceite = '|DataAceite=' + DataAceite;
			}

			var HoraAceite = $('.HoraAceite').val();
			if(HoraAceite != ''){
    			HoraAceite = '|HoraAceite=' + HoraAceite;
			}

			var Navegador = $('.Navegador').val();
			if(Navegador != ''){
    			Navegador = '|Navegador=' + Navegador;
			}

			var VersaoNavegador = $('.VersaoNavegador').val();
			if(VersaoNavegador != ''){
    			VersaoNavegador = '|VersaoNavegador=' + VersaoNavegador;
			}

			var UserAgent = $('.UserAgent').val();
			if(UserAgent != ''){
    			UserAgent = '|UserAgent=' + UserAgent;
			}

			var valores = 'numeroProposta='+$('.numeroProposta').val()+''+SistemaOperacional+''+LatitudeLongitudeIP+''+DataAceite+''+HoraAceite+''+Navegador+''+VersaoNavegador+''+UserAgent+''+GeoLocalizacao+''+CidadeIP;
			// var valores = 'numeroProposta='+$('.numeroProposta').val()+'|SistemaOperacional=' + $('.SistemaOperacional').val() + '|LatitudeLongitudeIP=' + $('.LatitudeLongitudeIP').val() + '|DataAceite=' + $('.DataAceite').val() + '|HoraAceite=' + $('.HoraAceite').val()+''+GeoLocalizacao+''+CidadeIP+'|Navegador=' + $('.Navegador').val() + '|VersaoNavegador=' + $('.VersaoNavegador').val()+'|UserAgent=' + $('.UserAgent').val();
			valores = window.btoa(valores);

			$.ajax({
				url: 'https://pco-uat-cornerstone.serasaexperian.com.br/avon/v1?workflow=ConfirmaSMS&data='+valores,
				// url: 'https://pco-cornerstone.serasaexperian.com.br/avon/v1?workflow=ConfirmaSMS&data='+valores,
			    type: "GET",
			    dataType : "jsonp",
			    jsonp: "callback",
			}).done(function(json) {
				if(json.proposta.status == 01 || json.proposta.status == 02 ){
					$('.box-intro, .boxTextoTermos, .boxBotoes').hide();
					$('.mensagemRetorno p').text(json.proposta.message);
					$('.mensagemRetorno').show();
				}
			}).fail(function() {
			    $('.box-intro, .boxTextoTermos, .boxBotoes').hide();
				$('.mensagemRetorno p').text(json.proposta.message);
				$('.mensagemRetorno').show();
			});


		} else {
			$('.BoxError p').text('Campo não selecionado!');
			$('.BoxError').show();
		}
	});

});
	</script>

	<style>
		body {margin: 0; position: relative;}
		* {-webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; }
		.box-termos-aceite {width: 100%; max-width: 800px; margin: 0 auto;}
		.box-termos-aceite table td {font-size:12px;}
		.box-termos-aceite .headerAceite {width: 100%; max-width: 800px; height: 160px; position: relative; padding-top: 25px; overflow: hidden;}
		.box-termos-aceite .circulo {width: 800px; height: 800px; -webkit-border-radius: 800px; border-radius: 800px; background-color: #ff7600; position: absolute; top: -650px; left: 50%; margin-left: -400px;}
		.box-termos-aceite h2 {font-size: 24px; font-family: Arial; color: #FFF; position: relative; text-align: center; font-weight: normal; margin: 0 0 10px 0; line-height: 32px;}
		.box-termos-aceite h3 {font-size: 18px; font-family: Arial; color: #FFF; position: relative; text-align: center; font-weight: normal; margin: 0; line-height: 28px;}
		.box-termos-aceite .box-intro {width: 90%; padding-top: 30px; margin: 0 auto;}
		.box-termos-aceite .box-intro.box2,.box-termos-aceite .box-intro.box3 {padding-top: 0;}
		.box-termos-aceite .box-intro p {text-align: center; color: #666666; font-size: 16px; font-family: Arial; margin: 0 0 15px 0; line-height: 26px;}
		.box-termos-aceite .box-intro div {padding: 30px 0 15px 0;}
		.box-termos-aceite .box-intro.box2 div,.box-termos-aceite .box-intro.box3 div {padding: 0px 0 15px 0;}
		.box-termos-aceite .box-intro div p {margin-bottom: 5px;}
		.box-termos-aceite .box-intro div p a {color: #666666}
		.box-termos-aceite .boxTextoTermos {width: 83%; height: 300px; overflow-y: auto; font-size: 14px; font-family: Arial; color: #666666; display: none; margin: 0 auto 30px; padding-right: 3%;}
		.box-termos-aceite .boxTextoTermos h2 {font-size: 14px; font-family: Arial; color: #666666;}
		.box-termos-aceite .olPadrao {font-size:12px;}
		.box-termos-aceite .olLatin {list-style: lower-latin;font-size:12px;}
		.box-termos-aceite .boxTextoTermos h3 {font-size: 12px; font-family: Arial; color: #666666; text-align: left;}
		.box-termos-aceite .boxTextoTermos p, .box-termos-aceite .boxTextoTermos ul li {font-size: 12px; font-family: Arial;}
		.box-termos-aceite .boxBotoes {width: 80%; margin: 40px auto 30px; overflow: hidden;}
		.box-termos-aceite .boxBotoes .btnCancelar {width: auto; height: 34px; line-height: 34px; font-size: 16px; text-align: center; background-color: #8C99AA; float: left; color: #FFF; border: none; display: block; cursor: pointer; padding: 0 15px;}
		.box-termos-aceite .boxBotoes .btnAceitar {width: auto; height: 34px; line-height: 34px; font-size: 16px; text-align: center; background-color: #019CA1; float: right; color: #FFF; border: none; display: block; cursor: pointer; padding: 0 25px;}
		.box-termos-aceite .boxBotoes .loadAceite {float: right; color: #FFF; border: none; display: block; cursor: pointer; margin: 7px 50px 0 0; display: none;}
		.box-termos-aceite .mensagemRetorno {width: 90%;display: none; padding-top: 30px; margin: 0 auto; overflow: hidden}
		.box-termos-aceite .mensagemRetorno .congrats {width: 40%; display: block; margin: 0 auto;}
		.box-termos-aceite .mensagemRetorno p {text-align: center; color: #666666; font-size: 16px; font-family: Arial; margin: 0 0 15px 0; line-height: 32px;}
		.box-termos-aceite .mensagemRetorno a.linkVideo {text-align: center; color: #EB3D60; font-size: 16px; font-family: Arial; margin: 10px auto 15px; line-height: 28px; text-align: center; display: block;}
		.box-termos-aceite .mensagemCancelar {width: 90%;display: none; padding-top: 30px; margin: 0 auto; overflow: hidden}
		.box-termos-aceite .mensagemCancelar .heart {width: 40%; display: block; margin: 0 auto;}
		.box-termos-aceite .mensagemCancelar p {text-align: center; color: #666666; font-size: 16px; font-family: Arial; margin: 0 0 15px 0; line-height: 32px;}
		.box-termos-aceite .mensagemCancelar .btnNao {width: 103px; height: 34px; line-height: 34px; font-size: 16px; text-align: center; background-color: #FFF; float: left; color: #b0b0b0; border: none; display: block; cursor: pointer;}
		.box-termos-aceite .mensagemCancelar .btnSim {width: 103px; height: 34px; line-height: 34px; font-size: 16px; text-align: center; background-color: #019CA1; float: right; color: #FFF; border: none; display: block; cursor: pointer;}
		.box-termos-aceite .box-intro .BoxError {display: none; padding: 0;}
		.box-termos-aceite .box-intro .BoxError p {text-align: center; color: #F00; font-size: 12px; font-family: Arial; margin: 0 0 15px 0;}
		.box-termos-aceite .mensagemSuspenso {width: 90%;display: none; padding-top: 30px; margin: 0 auto;}
		.box-termos-aceite .mensagemSuspenso p {text-align: center; color: #666666; font-size: 16px; font-family: Arial; margin: 0 0 15px 0; line-height: 32px;}
		.box-termos-aceite .mensagemSuspenso p a {text-align: center; color: #666666; font-size: 16px; font-family: Arial; margin: 0 0 15px 0; line-height: 32px;}
	</style>


</head>
<body>
	
	<div class="box-termos-aceite">
		<div class="headerAceite">
			<span class="circulo"></span>
			<h2>Seja bem-vindo(a)!</h2>
			<h3></h3>
		</div>
		<div class="box-intro">
			<p>Para darmos continuidade ao seu cadastro como Nova Revendedora Essenza, é necessário que leia e aceite os termos e condições comerciais abaixo:</p>
			<div>
				<p><label><!-- <input type="checkbox" name="termosAceite" id="termosAceite" checked="true" /> Eu li e aceito os  --><a href="#" class="btnVerTermos boxTermos0">TERMOS E CONDIÇÕES PARA REVENDEDORES(AS)</a></label></p>
				<div class="BoxError"><p></p></div>
			</div>
		</div>
		<div class="boxTextoTermos">
			...
		</div>

	</div>


<div class="conteudo"></div>

	
</body>
</html>