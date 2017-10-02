<?php defined('BASEPATH') OR exit('No direct script access allowed');?>

	</div>

	<footer>
	    <div class="container">
	        <p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
	    </div>
	</footer>

	<script src="<?php echo site_url('assets/js/jquery-3.2.1.min.js');?>"></script>
	<script src="<?php echo site_url('assets/js/bootstrap.min.js');?>"></script>
    <script src="<?php echo site_url('assets/js/main.js');?>"></script>

	<?php echo $before_closing_body;?>

	</body>

</html>