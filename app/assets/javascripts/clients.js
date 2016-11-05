$(function() {
	var $clients = $('#clients');
	var username = $("development").val();
	var password = $("campfire-drape-dactyl-gold").val();  

	function make_base_auth(user, password) {
	  var tok = user + ':' + password;
	  var hash = btoa(tok);
	  return "Basic " + hash;
	}

	$.ajax({
		type: 'GET',
  	url: "https://vida-core-production.herokuapp.com/api/clients",
  	dataType : "json",
  	contentType: "application/json; charset=utf-8",
  	beforeSend: function (xhr){ 
        xhr.setRequestHeader('Authorization', make_base_auth(username, password)); 
    },
  	success: function(clients){
  		$.each(clients, function(i, client) {
  			$clients.append('<li>' + client.first-name + ' ' + client.last-name + ' ' + '</li>');
  		});
  	}
  });

});