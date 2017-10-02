<?php

	if (isset($_POST['stockticker'])) {
		
		$stockprice = json_decode(file_get_contents("https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=".$_POST['stockticker']."&interval=1min&apikey=6LUN0XUIMENB1Y4C"),true);

		$currentprice = (reset($stockprice['Time Series (1min)']));
		
		echo $currentprice["4. close"];
	
	};
	

