<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Untitled</title>

        <!-- TODO!!! -->
        
        <!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/bootstrap.min.css">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css"> -->

		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/smartadmin-production-plugins.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/smartadmin-skins.min.css">

		<!-- SmartAdmin RTL Support -->
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.min.css">  -->

		<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/demo.min.css">
 -->
		<!-- FAVICONS -->
		<!-- <link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon"> -->

		<!-- GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

		<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->

		<!-- <link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png">
		<link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png">
		<link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png">
		<link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png"> -->
		
		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		<!-- Startup image for web apps -->

		<!-- <link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)"> -->
		

		<!-- DataTables CSS -->
		<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.css">

        <link rel="stylesheet" href="css/style.css">
        <link rel="author" href="humans.txt">
    </head>
    <body>

	    <div class="jarviswidget" id="wid-id-11" data-widget-colorbutton="false" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-custombutton="false">
									<!-- widget options:
										usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
										
										data-widget-colorbutton="false"	
										data-widget-editbutton="false"
										data-widget-togglebutton="false"
										data-widget-deletebutton="false"
										data-widget-fullscreenbutton="false"
										data-widget-custombutton="false"
										data-widget-collapsed="true" 
										data-widget-sortable="false"
										
									-->
		<header>
			
			
			<ul id="widget-tab-1" class="nav nav-tabs pull-left">

				<li class="active">

					<a data-toggle="tab" href="#hr1"> <i class="fa fa-lg fa-arrow-circle-o-down"></i> <span class="hidden-mobile hidden-tablet"> Tab 1 </span> </a>

				</li>

				<li>
					<a data-toggle="tab" href="#hr2"> <i class="fa fa-lg fa-arrow-circle-o-up"></i> <span class="hidden-mobile hidden-tablet"> Tab 2 </span></a>
				</li>

			</ul>	
			
		</header>

		<!-- widget div-->
		<div>
			
			<!-- widget edit box -->
		<!-- 	<div class="jarviswidget-editbox">
				This area used as dropdown edit box
				
			</div> -->
			<!-- end widget edit box -->
			
			<!-- widget content -->
			<div class="widget-body no-padding">

				<!-- widget body text-->
				
				<div class="tab-content padding-10">
					<div class="tab-pane fade in active" id="hr1">
						<table class="test" class="display">
						    <thead>
						        <tr>
						            <th>Column 1</th>
						            <th>Column 2</th>
						        </tr>
						    </thead>
						    <tbody>
						        <tr>
						            <td>Row 1 Data 1</td>
						            <td>Row 1 Data 2</td>
						        </tr>
						        <tr>
						            <td>Row 2 Data 1</td>
						            <td>Row 2 Data 2</td>
						        </tr>
						    </tbody>
						</table>
					</div>

					<div class="tab-pane fade" id="hr2">
						<table class="test" class="display">
						    <thead>
						        <tr>
						            <th>Column 1</th>
						            <th>Column 2</th>
						        </tr>
						    </thead>
						    <tbody>
						        <tr>
						            <td>Row 1 Data 1</td>
						            <td>Row 1 Data 2</td>
						        </tr>
						        <tr>
						            <td>Row 2 Data 1</td>
						            <td>Row 2 Data 2</td>
						        </tr>
						    </tbody>
						</table>
					</div>
				</div>
				
				<!-- end widget body text-->
				
				<!-- widget footer -->
				<!-- <div class="widget-footer text-right">
					
					<span class="onoffswitch-title">
						<i class="fa fa-check"></i> Show Tabs
					</span>
					<span class="onoffswitch">
						<input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-tabs" checked="checked">
						<label class="onoffswitch-label" for="show-tabs"> 
							<span class="onoffswitch-inner" data-swchon-text="True" data-swchoff-text="NO"></span> 
							<span class="onoffswitch-switch"></span> 
						</label> 
					</span>
			
				</div> -->
				<!-- end widget footer -->
				
			</div>
			<!-- end widget content -->
			
		</div>
		<!-- end widget div -->
		
	</div>
	<!-- end widget -->


		

    </body>
</html>