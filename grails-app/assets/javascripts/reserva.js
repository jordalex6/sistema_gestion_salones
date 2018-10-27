function validarfech(){
	field = "fec";	
	valor = document.getElementById(field).value;
	
	var today = new Date();
	var date2 = new Date(valor);
	
	if (date2<today){
		document.getElementById(field).focus();
		alert('[ERROR] La fecha del evento debe ser mayor a la fecha actual.');
		return false;
	}else {return true;}
}