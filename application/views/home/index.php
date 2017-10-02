<?php defined('BASEPATH') OR exit('No direct script access allowed');?>


	<h1>Stocks</h1>

	<table class="table table-striped">
	  <thead>
		<tr>
		  <th>#</th>
		  <th>Date</th>
		  <th>Ticker</th>
		  <th>Buy Price</th>
		  <th>Stop Loss</th>
		  <th>Target Price</th>
		  <th>Lowest Price</th>
		  <th>Current Price</th>
		  <th>Highest Price</th>
		  <th>Lowest P/L</th>
		  <th>Current P/L</th>
		  <th>Highest P/L</th>
		</tr>
	  </thead>
	  <tbody>

	  	<?php foreach ($stocks as $stock) { ?>

			<tr>
			  <th scope="row"><?php echo $stock->id; ?></th>
			  <td><?php echo date('d/m/y',$stock->date); ?></td>
			  <td class="stockticker"><?php echo $stock->ticker; ?></td>
			  <td><?php echo $stock->buy_price; ?></td>
			  <td class="currentprice"><?php echo $stock->stop_loss; ?></td>
			  <td><?php echo $stock->target_price; ?></td>
			  <td><?php echo $stock->low; ?></td>
			  <td><?php echo $stock->current; ?></td>
			  <td><?php echo $stock->high; ?></td>
			  <td <?php if($stock->low_pl < -10){echo 'style="color:red"';} ?>><?php echo $stock->low_pl.'%'; ?></td>
			  <td><?php echo $stock->current_pl.'%'; ?></td>
			  <td <?php if($stock->high_pl > 10){echo 'style="color:green"';} ?>><?php echo $stock->high_pl.'%'; ?></td>
			</tr>

		<?php } ?>

			<form method="post" action=""><tr>
				<th></th>
				<td><input type="text" name="date" style="width:50px"></input></td>
				<td><input type="text" name="ticker" style="width:50px"></input></td>
				<td><input type="text" name="buy_price" style="width:50px"></input></td>
				<td><input type="text" name="stop_loss" style="width:50px"></input></td>
				<td><input type="text" name="target_price" style="width:50px"></input></td>
				<td><input type="submit" name="submit" value="Add Stock"></input></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr></form>

	  </tbody>
	</table>


<!-- 	<script type="text/javascript">
	
		function reloadPrices() {
			
			var prices = [];
			
			$('.stockticker').each(function(i, obj) {
				
				var stockticker = $(this).text();
								
				console.log(stockticker);
				
				$.ajax({
					url: "<?php echo site_url('home/getstockprice'); ?>",
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
		
	</script> -->


