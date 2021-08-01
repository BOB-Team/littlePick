$(function(){
	
	//전체 체크박스 누르면 상풍 전체 선택하기 
	var chkObj = document.getElementsByName("item_check");
	var rowCnt = chkObj.length;
	
	$("input[name='all_check']").click(function(){

		let chk_listArr = $("input[name='item_check']");
		for(let i=0; i<chk_listArr.length; i++){
			chk_listArr[i].checked = this.checked;
		}
	});
	
	$("input[name='all_check']").click(function(){
		if($("input[name='item_check':checked]").lenth == rowCnt){
			$("input[name='item_check']")[0].checked=true;
		}
		else{
			$("input[name='all_check']")[0].checked=false;
		}
	});
	
	
	//	$(".increase.cart-count").click(function(){
	//	var result = $(this).parents().find("#sst").val();
	//	alert(result);
	//})
	
	  
	  //수량 증가버튼
	  $(".increase.cart-count").click(function(){
		  var input = document.getElementById('sst'); 
		  var quantity = input.value*1;
		  if( !isNaN( quantity )) {
			  quantity += 1;
			  var price = $("#price").text() * quantity;
			  $("#product_total").text(price); 
			  input.value++;
			  //return false;
		  }
	  })
	
	
	  //수량 감소버튼
	  $(".reduced.cart-count").click(function(){
		  var input = document.getElementById('sst'); 
		  var quantity = input.value*1;	
		  //input박스 수량 감소
		  if( !isNaN( quantity ) && quantity > 1 ) {
			  quantity -= 1;
			  var price = $("#price").text() * quantity;
			  $("#product_total").text(price); 
			  input.value--;
			  //return false;  
		  }
	  })
});


//클릭이벤트-선택삭제 : 버튼 누르면 ajax로 cart_num 번호 배열을 전송 
$("#select_del").click(function(){
	var cart_num = [];
	var list_check = $("input[name='item_check']:checked");
	
	for(var i = 0; i<list_check.length; i++){
			//alert(list_check[i].value);
			cart_num[i]=list_check[i].value;
	}
	//alert("cc"+cart_num);
	if(cart_num.length==0){
		alert("선택된 상품이 없습니다.");
	}
	else{
		//var chk=confirm("정말 삭제하시겠습니까?")
		$.ajax({
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			url: "cartDeleteList.do",	//전송 url
			type: 'POST',
			traditional:true, //배열 값을 자바로 넘길 때 사용 !! 
			data:{
				cart_num : cart_num	 //보내고자 하는 data 변수 설정 
			},
			success: function(message){
				//alert(message);
				location.replace("cartList.do")
			}
			
		});
	}

})
	

