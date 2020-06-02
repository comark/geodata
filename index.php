<?php
$servername = "localhost";
$username = "root";
$password = "root";
$db = "geodata";
// Create connection
$conn = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$conn) {
  die("Connection failed: " .  mysqli_connect_error());
}
else {
$sql = 'SELECT "iso-2", year, value FROM iso2';
$result = $conn->query($sql);

$json = "";
if ($result->num_rows > 0) {

  //$list = array(); 
  while($row = $result->fetch_assoc()) {

  	$year = strtotime($row["year"]) * 1000;
  	//dd($year);
  	//$value = $row["value"];

  	$row_1 = array($year,floatval($row["value"]));
  	$list[] = $row_1;
  }

  $json = json_encode($list);
} else {
  echo "0 results";
}
$conn->close();
}
?>

<html>
	<head>

		<title></title>
	<link href="css/examples.css" rel="stylesheet" type="text/css">
	<script language="javascript" type="text/javascript" src="js/globalize.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.canvaswrapper.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.colorhelpers.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.flot.saturated.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.flot.browser.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.flot.drawSeries.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.flot.uiConstants.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.flot.time.js"></script>

<script type="text/javascript">

	$(function() {

		var d = <?php echo $json; ?>;

		$.plot("#placeholder", [d], {
			xaxis: { mode: "time", timeBase: "milliseconds"}
		});

	});

	</script>
	</head>
<body>
<div id="content">

		<div class="demo-container">
			<div id="placeholder" class="demo-placeholder" style="padding: 0px; position: relative;">
				
			</div>
		</div>

	</div>
</body>

</html>