$(document).ready(function () {
$("#send-contact").click(function(){
	var services = [];
	$('.services:checked').each(function(index) {
		services[index] = $(this).val() ;
	});
	var contact= {customername: $("#customerName").val(), customeremail: $("#customeremail").val(), services:services };

	$.ajax({
		type:"POST",
		url:'send-contact.php',
		data:contact
		}).done(function() {
		alert("Your contact information has been sent, we will call you soon.");
})
});
});