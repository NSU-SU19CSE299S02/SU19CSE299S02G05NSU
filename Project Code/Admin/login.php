<html lang="en">
  <head>
    <title>Admin login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
  <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark" style="background-color: #4bf2cb !important;">
  <h1  style="color: #1a1919">Admin Portal</h1>
    <ul class="navbar-nav ml-auto">
    </ul>
</nav>
</head>
<body>
<div style="height:00px;">
     <form method="post" enctype="multipart/form-data" style="width: 1519px; height: 600px;">
      <div class="content">
        <br><br>
</div>
<table width="100%" style="margin: 0 auto; border:3px solid;text-align:center">

<tr><td class="lefttd"><h3>Username:</h3></td><td><input type="text" name="t1" required="required" title="Please enter your username"/></td></tr>
<tr><td class="lefttd"><h3>Password:</h3></td><td><input type="password"name="t2"  required="required" pattern="[a-zA-Z0-9]{2,10}" title="please enter only character or numbers between 2 to 10 for password"  /></td></tr>

<tr><td>&nbsp;</td><td><input type="submit" value="Log In" name="sbmt" style="border:0px; background:#2D7FDE; width:125px; height:40px;  box-shadow:2px 2px 10px black; color:#E2ECF8; font-weight:bold; font-size:20px;"></td></tr><br>
</table>

<?php include 'DBconnection.php'; ?>
