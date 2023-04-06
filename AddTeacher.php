<html lang="en">
<head>
    <link rel = "stylesheet" href = "style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Primary School Database</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #DDD0C8;
}

.navbar {
  overflow: hidden;
  background-color: #323232;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: #323232;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: lightslategray;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #323232;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
    <hr>
    <hr>
    <h1 style="text-align: center; color: #323232;">Rishton Primary School</h1>
    <hr>
    <hr>
    <div class="navbar">
      <a href="index.html">Home</a>
      <div class="dropdown">
          <button class="dropbtn">View
              <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
              <a href="ViewStudent.php">Pupils</a>
              <a href="ViewParent.php">Parent</a>
              <a href="ViewTeacher.php">Teacher</a>
              <a href="ViewClass.php">Class</a>
          </div>
      </div>
      <div class="dropdown">
          <button class="dropbtn">Add
              <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
              <a href="AddStudent.php">Pupils</a>
              <a href="AddParent.php">Parent</a>
              <a href="AddTeacher.php">Teacher</a>
              <a href="AddClass.php">Class</a>
          </div>
      </div>
      <div class="dropdown">
        <button class="dropbtn">Delete
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="delStudent.php">Pupils</a>
            <a href="delParent.php">Parent</a>
            <a href="delTeacher.php">Teacher</a>
            <a href="delClass.php">Class</a>
        </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">Update
          <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
          <a href="Updatestudent.php">Pupils</a>
          <a href="UpdateParent.php">Parent</a>
          <a href="UpdateTeacher.php">Teacher</a>
          <a href="UpdateClass.php">Class</a>
      </div>
  </div>
  </div>
  </div>
  <hr>
	
	<h3>Add a New Teacher</h3>

	<form method="post" action="AddTeacher.php">
	
		<label>Teacher Name:</label>
		<input type="text" name="TeachersName">
		<br>
	
		<label>Address:</label>
		<input type="text" name="Teach_Address">
		<br>
	
		<label>Medical Info:</label>
		<input type="text" name="Teach_MedInfo">
		<br>

    <label>Telephone:</label>
		<input type="text" name="Teach_Phone">
		<br>

    <label>Salary:</label>
		<input type="text" name="AnnualSalary">
		<br>

    <label>Backround:</label>
		<input type="text" name="BackroundCheck">
		<br>
  
		<br>
		<input type="submit" name="submit">
	
	</form>
  
  <?php
	
	$link = mysqli_connect("sdb-56.hosting.stackcp.net", "student26-353031333d11", "ua92-studentAc", "student26-353031333d11");
	// Check connection
	if ($link === false) {
		die("Connection failed: ");
	}
	?>
	
	<?php

	if (isset($_POST['submit'])) {

		$TeachersName = $_POST['TeachersName'];
    $Teach_Address = $_POST['Teach_Address'];
    $Teach_MedInfo = $_POST['Teach_MedInfo'];
    $Teach_Phone = $_POST['Teach_Phone'];
    $AnnualSalary = $_POST['AnnualSalary'];
    $BackgroundCheck = $_POST['BackroundCheck'];
		
		$sql = "INSERT INTO Teachers (TeachersName, Teach_Address, Teach_MedInfo, Teach_Phone, AnnualSalary, BackgroundCheck) VALUES ('$TeachersName', '$Teach_Address', '$Teach_MedInfo', '$Teach_Phone', '$AnnualSalary', '$BackgroundCheck')";
		if (mysqli_query($link, $sql)) {
		echo "New record created successfully";
		} else {
		echo "Error adding record ";
		}
	
	}
	
	$link->close();
	?>

<hr>
</body>
</html>