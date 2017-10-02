<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Stock_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
            
    }

    public function get_stocks()
    {
        
        $query = $this->db->query('SELECT * FROM stocks');
        return $query->result();
                    
    }

    public function update_stock_prices($lowest,$currentprice,$highest,$lowestpl,$currentpl,$highestpl,$ticker) 
    {

        $this->db->query("UPDATE `stocks` SET `low` = ".$lowest.", `current` = ".$currentprice.", `high` = ".$highest.", `low_pl` = ".$lowestpl.", `current_pl` = ".$currentpl.", `high_pl` = ".$highestpl." WHERE ticker = '".$ticker."'");

    }

    public function add_stock($date,$ticker,$buy_price,$stop_loss,$target_price) 
    {

        $this->db->query("INSERT INTO `stocks` (`date`,`ticker`,`buy_price`,`stop_loss`,`target_price`) VALUES (".$date.",'".$ticker."',".$buy_price.",".$stop_loss.",".$target_price.")");

    }
}
