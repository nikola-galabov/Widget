<div class="jarviswidget" role="widget">
	<header role="heading">
		<!--- Some heading must be placed here if there is any need --->	
		
		<ul id="widget-tab-1" class="nav nav-tabs">
			<li class="active">
				<a href='/fakeModel.cfc?method=getResponse' data-target="#" data-toggle='tab' class='ajax-request'> 
					<i class="fa fa-lg fa-arrow-circle-o-down"></i> 
					<span class="hidden-mobile hidden-tablet"> IT </span> 
				</a>
			</li>

			<li>
				<a href='/fakeModel.cfc?method=getOtherResponse' data-target="#" data-toggle='tab' class='ajax-request'> 
					<i class="fa fa-lg fa-arrow-circle-o-up"></i> 
					<span class="hidden-mobile hidden-tablet"> Teachers </span>
				</a>
			</li>
		</ul>	
		
		<span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span>
	</header>

	<!-- widget div-->
	<div role="content">
		
		<!-- widget content -->
		<div class="widget-body no-padding">

			<!-- widget body text-->			
			<div class="tab-content padding-10" id="some-id">

			</div>

		</div>
		<!-- end widget content -->
		
	</div>
	<!-- end widget div -->
	
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.js"></script>
<script src="/widget.js"></script>