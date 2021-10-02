<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/votersignupStyle.css">
    <title>Voter SignUp Page</title>
    
</head>
<body class="body">
  <h1 class="h1"> <u>Register Here</u></h1>
    <div class="wrapper">
      <form action="votersignpAction.jsp" method="post" >
        <div class="fname">
         <b> First Name</b> &nbsp;&nbsp;&nbsp;<br>
          <input type="text" name="t1" required>
        </div>
        <div class="lname"><br>
         <b> Last Name </b>  &nbsp;&nbsp;&nbsp;<br>
          <input type="text" name="t2" required>
        </div>
        <div class="father"><br>
         <b> Father Name </b>  &nbsp;<br>
          <input type="text"name="t3" required>
        </div>
        <div class="dob"><br>
         <b> DOB </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input type="date" name="t4">
        </div>
        <div class="state"><br>
         <b> State </b>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br>
          <input type="text" name="t5" required>
        </div>
        <div class="city"><br>
         <b> City </b>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br>
          <input type="text" name="t6" required>
        </div>
        <div class="address"><br>
         <b> Address</b> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br>
          <textarea name="t7" required></textarea>
        </div>
        <div class="email"><br>
         <b> Email</b> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<br>
          <input type="email" name="t8">
        </div>
       
        
        
        <div class="cno">
         <b> Contact Number</b><br>
          <input type="number" name="t9" required><br>
        </div>
        <div class="pin"><br>
         <b> Pin Code</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input type="number" name="t10" required>
        </div>
        <div class="uname"><br>
        <b>  Username</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br>
          <input type="text" name="t11" required>
        </div>
        <div class="gender"><br>
          <b>Gender</b> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <select name="t12" required  style ="width: 250px; height: 30px;"><br>
            <option value="Male">Male </option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
            </select>
        </div>
        <div class="pass"><br>
         <b> Password</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input type="password" name="t13" required>
        </div>
        <div class="cpass"><br>
         <b> Confirm Password </b><br>
          <input type="password" name="t14" required>
        </div>



        <div class="question"><br>
         <b> Security Question </b>&nbsp;&nbsp;<br>
          <select name="t15" style ="width: 250px; height: 30px;" required>
            <option value="What is your date of birth?">What is your date of birth?</option>
            <option value="What was your favorite school teachers name?">What was your favorite school teachers name?</option>
            <option value="What is your favorite movie?">What is your favorite movie?</option>
            <option value="What was your first car?">What was your first car?</option>
            <option value="What is your astrological sign?">What is your astrological sign?</option>
            <option value="What is your favorite movie?">What city were you born in?</option>
            </select>
        </div>
        <div class="answer"><br>
          <b>Enter Your Answer </b>&nbsp;&nbsp;<br>
          <input type="text" name="t16" required>
        </div>
        <div class="submit"><br>
          <input type="submit" value="REGISTER" name="submit">

        </div>
        </form>
      </div>
</body>
</html>