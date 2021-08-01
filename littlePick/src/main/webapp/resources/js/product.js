$(function(){
	  //[상품 상세 페이지] : 수량 변화에 따른 총합계 금액 계산 
	  $(".product_count button").click(function(){
		 
		  let quantity=$("#sst").val();
		  let total = $("#price").text() * quantity;
		  $("#product_total").text(total);
		  	  
	  })

});