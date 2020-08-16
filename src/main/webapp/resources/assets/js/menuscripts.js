$(function(){
	//for practice dropdown
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
	//end
	//for coding dropdown
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
	//end
	//for compete dropdown
		$('#comp_drp').hover(function(){
			$('#comp_drpdn').css('display','block');
		},
		function(){
			$('#comp_drpdn').css('display','none');
		});
		
		$('#comp_drpdn').hover(function(){
			$('#comp_drpdn').css('display','block');
		},
		function(){
			$('#comp_drpdn').css('display','none');
		});
	//end
});

function loadPage(skn){
	window.location.href = "userpractice?skilln="+skn;
}