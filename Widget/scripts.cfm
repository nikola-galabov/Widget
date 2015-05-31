<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="libs/js/plugin/pace/pace.min.js"></script>

		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
			}
		</script>

		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

		<!-- IMPORTANT: APP CONFIG -->
		<script src="libs/js/app.config.js"></script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
		<script src="libs/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 

		<!-- BOOTSTRAP JS -->
		<script src="libs/js/bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="libs/js/notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<script src="libs/js/smartwidgets/jarvis.widget.min.js"></script>

		<!-- EASY PIE CHARTS -->
		<script src="libs/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="libs/js/plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="libs/js/plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="libs/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY SELECT2 INPUT -->
		<script src="libs/js/plugin/select2/select2.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="libs/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="libs/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="libs/js/plugin/fastclick/fastclick.min.js"></script>

		<!--[if IE 8]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- MAIN APP JS FILE -->
		<script src="libs/js/app.min.js"></script>

		<!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
		<!-- Voice command : plugin -->
		<script src="libs/js/speech/voicecommand.min.js"></script>

		<!-- SmartChat UI : plugin -->
		<script src="libs/js/smart-chat-ui/smart.chat.ui.min.js"></script>
		<script src="libs/js/smart-chat-ui/smart.chat.manager.min.js"></script>

		<!-- PAGE RELATED PLUGIN(S) 
		<script src="..."></script>-->

		<!-- DataTables -->
		<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.js"></script>

		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();
			
			// PAGE RELATED SCRIPTS
		
			// switch style change
			$('input[name="checkbox-style"]').change(function() {
				//alert($(this).val())
				$this = $(this);
		
				if ($this.attr('value') === "switch-1") {
					$("#switch-1").show();
					$("#switch-2").hide();
				} else if ($this.attr('value') === "switch-2") {
					$("#switch-1").hide();
					$("#switch-2").show();
				}
		
			}); 
			
			// tab - pills toggle
			$('#show-tabs').click(function() {
				$this = $(this);
				if($this.prop('checked')){
					$("#widget-tab-1").removeClass("nav-pills").addClass("nav-tabs");
				} else {
					$("#widget-tab-1").removeClass("nav-tabs").addClass("nav-pills");
				}
				
			});			
		
		});

		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
				_gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
				_gaq.push(['_trackPageview']);
			
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();

		</script>
		<!--<script src="script.js"></script>-->

		<!--- datatables --->
		















