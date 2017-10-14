<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('stock_model');
        
    }

	public function index()
	{

		$this->data['page_title'] = "Home";
		$this->data['page_description'] = "The Home Page";

		if($this->input->post('submit')) {

			$date = strtotime($this->input->post('date'));
			$ticker = $this->input->post('ticker');
			$buy_price = $this->input->post('buy_price');
			$stop_loss = $this->input->post('stop_loss');
			$target_price = $this->input->post('target_price');

			$this->stock_model->add_stock($date,$ticker,$buy_price,$stop_loss,$target_price);

		}

		$this->data['stocks'] = $this->stock_model->get_stocks();

		$this->render('home/index');
	}

	public function getstockprice()
	{
	
		$stocks = $this->stock_model->get_stocks();

		foreach ($stocks as $stock) {

			if($stock->date > 1501550000)
			{

				$lowest = 999999999999;
				$highest = 1;

				$json_results = json_decode(file_get_contents("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=".$stock->ticker."&apikey=6LUN0XUIMENB1Y4C"),true);

				$stockprice = $json_results['Time Series (Daily)'];

				$most_recent = (reset($stockprice));
				
				$currentprice = $most_recent["4. close"];

				foreach ($stockprice as $date => $prices) {

					if (($stock->date - 10) < strtotime($date)) {

						if ($prices['3. low'] < $lowest) {

							$lowest = $prices['3. low'];

						}

						if ($prices['2. high'] > $highest) {

							$highest = $prices['2. high'];

						}

					}

				}
						
				$lowestpl = round(((($lowest - $stock->buy_price)/($stock->buy_price)) * 100), 2);

				$currentpl = round(((($currentprice - $stock->buy_price)/($stock->buy_price)) * 100), 2);

				$highestpl = round(((($highest - $stock->buy_price)/($stock->buy_price)) * 100), 2);

				$this->stock_model->update_stock_prices($lowest,$currentprice,$highest,$lowestpl,$currentpl,$highestpl,$stock->ticker);
			
			}

		}

		redirect('');
	}
}
