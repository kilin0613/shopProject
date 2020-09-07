$(document).ready(function() {
	var count = $('#quantity').val();
	var price = $('#product_price').val();
	var total_price = 0;

	$(function() {
		$('#btnPlus').click(function(e) {
			e.preventDefault();
			count++;
			$('#quantity').val(count);
			total_price = price * count;
			$('#total_price').val(total_price.toLocaleString());
		});

		$('#btnMinus').click(function(e) {
			if (count > 0) {
				e.preventDefault();
				count--;
				$('#quantity').val(count);
				total_price = price * count;
				$('#total_price').val(total_price.toLocaleString());
			}
		});

		$('#btnBasket, #btnOrder').click(function(e) {

			var color = $('#color_id').val();
			var size = $('#size_id').val();
			if (!size || !color || count <= 0) {
				alert("옵션을 확인해주세요");
				return false;
			}
		});
	});

});