<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv=”X-UA-Compatible” content=”IE=edge” />
<script src=”https://www.paypalobjects.com/api/checkout.js”></script>
</head>
<body>
	<h2>hello siddhu</h2>
	<div id=”paypal-button”></div>
	<script> paypal.Button.render({
env : ‘sandbox’, // Or ‘production’
client : { sandbox : ‘ASEbOgMkFPF1J2nYV3CbDb8k7JSfWveIHDdsVjJrqEtAQeBJsvavDtuN1ULZABXREGx3UdfEyDGcVNpn’, production : ‘xxxxxxxxx’ },
commit : true, // Show a ‘Pay Now’ button
payment : function(data, actions) { return actions.payment.create({ transactions : [ { amount : { total : ‘1.00’, currency : ‘USD’ } } ] }); },
onAuthorize : function(data, actions) { return actions.payment.execute().then(function(payment) {
window.alert(“Payment done successfully!!!!!!”);
// The payment is complete! // You can now show a confirmation message to the customer }); }
}, ‘#paypal-button’); </script>
	<form>...</form>
	to your shopping cart page.

	<form action="paypal_ec_redirect.php" method="POST">

		<input type="hidden" name="PAYMENTREQUEST_0_AMT" value="10.00"></input>

		<input type="hidden" name="currencyCodeType" value="USD"></input> <input
			type="hidden" name="paymentType" value="Sale"></input> <input
			type="image"
			src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/ppcredit-logo-large.png"
			alt="PayPal Credit"> </input>

	</form>
</body>
</html>