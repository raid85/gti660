$(document).ready(function(){

//Cette fonction permet dans la page Search.html d'ouvrir un formulaire lorsque le bouton est cliqué.
	$('.row .btn').on('click', function(e) {
		e.preventDefault();
		var $this = $(this);
		var $collapse = $this.closest('.collapse-group').find('.collapse');
		$collapse.collapse('toggle');
	});
	
//Cette fonction permet d'afficher les résultats	
	$('#submitFMovie').click(function(){
	 alert('Please wait while form is submitting');
	 $('#FMovie').submit();
	});

	
});