$(function() {

	$("#payfor").click(function() {
		
		let num_temp = document.all.pay.length;
		//alert(num_temp)
		for (i = 0; i < num_temp; i++) {
			if (document.all.pay[i].checked == true) {
				location.href="insertOrder.do"
				break;
			}
		}
		if (i == num_temp) {
			alert("결제방법을 선택하세요");
		}
	})

})

