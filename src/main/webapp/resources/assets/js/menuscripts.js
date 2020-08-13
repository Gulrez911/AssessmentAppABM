$(function(){
		$('#pract_drp').hover(function(){
			$('#pract_drpdn').css('display','block');
		},
		function(){
			$('#pract_drpdn').css('display','none');
		});
		
		$('#pract_drpdn').hover(function(){
			$('#pract_drpdn').css('display','block');
		},
		function(){
			$('#pract_drpdn').css('display','none');
		});
		
		$('#coding_drp').hover(function(){
			$('#code_drpdn').css('display','block');
		},
		function(){
			$('#code_drpdn').css('display','none');
		});
		
		$('#code_drpdn').hover(function(){
			$('#code_drpdn').css('display','block');
		},
		function(){
			$('#code_drpdn').css('display','none');
		});
});

function loadPage(skn){
	window.location.href = "userpractice?skilln="+skn;
}