<?php

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
  <body>
  
  
  
    <div class="container">
	
		<h1>Stocks</h1>
		
		<table class="table table-striped">
		  <thead>
			<tr>
			  <th>#</th>
			  <th>Stock</th>
			  <th>Ticker</th>
			  <th>Buy Price</th>
			  <th>Current Price</th>
			  <th>Sell Price</th>
			</tr>
		  </thead>
		  <tbody>
			<tr>
			  <th scope="row">1</th>
			  <td>Microsoft</td>
			  <td class="stockticker">MSFT</td>
			  <td>70</td>
			  <td class="currentprice"></td>
			  <td>75</td>
			</tr>
			<tr>
			  <th scope="row">2</th>
			  <td>Apple</td>
			  <td class="stockticker">AAPL</td>
			  <td>150</td>
			  <td class="currentprice"></td>
			  <td>160</td>
			</tr>
			<tr>
			  <th scope="row">3</th>
			  <td>Alphabet</td>
			  <td class="stockticker">GOOG</td>
			  <td>920</td>
			  <td class="currentprice"></td>
			  <td>960</td>
			</tr>
		  </tbody>
		</table>
	
	</div>
	
	
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	
		function reloadPrices() {
			
			var prices = [];
			
			$('.stockticker').each(function(i, obj) {
				
				var stockticker = $(this).text();
								
				console.log(stockticker);
				
				$.ajax({
					url: "getstockprice.php",
					type: "post",
					data: 'stockticker=' + stockticker,
					async: false,
					success: function (response) {
					   prices.push(response);               
					}
				});				
				
			});
			
			$('.currentprice').each(function(i, value) {
				$(this).text(prices[i]);
			});
			
			console.log(prices);
			
		}
		
		window.onload = function () {
			reloadPrices(); //Make sure the function fires as soon as the page is loaded
			setInterval(reloadPrices, 600000); //Then set it to run again after ten minutes
		}
		
	</script>
	
  </body>
</html>