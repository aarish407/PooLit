<?php

session_start();

include 'config.php';

$var= $_POST['signup-submit'];

if(isset($var))
{
	// echo "Signed Up";

	Signup($connection);
}

function Signup($connection)
{
    if(!empty($_POST['email']))
    {
        $pass= $_POST['password'];
        $cpass= $_POST['confirmpass'];

        $result= strcmp($pass, $cpass);

        if($result != 0)
        {
            echo "Passwords don't match.";
        }

        else {
            $query = mysqli_query($connection, "SELECT * FROM person WHERE email = '$_POST[email]' AND password = '$_POST[password]' ") or die(mysqli_error($connection));

            if(!$row = mysqli_fetch_array($query)) // or die(mysqli_error($connection)))
			{
				// echo "in the if before new user";
				NewUser($connection);
            }
            
            else {
                echo "Already Registered";
            }
        }
    }
}

function NewUser($connection)
{
    $name= $_POST['name'];
    $email= $_POST['email'];
    $password= $_POST['password'];
    $source= "";
    $destination= "";

    $query= "INSERT INTO person (name, source, destination, email, password) VALUES ('$name', '$source', '$destination', '$email', '$password')";

    $data= mysqli_query($connection, $query) or die(mysqli_error($connection));

    echo "successfully registered";

    $_SESSION['logged-in']= 1;
    $_SESSION['name']= $name;
    $_SESSION['email']= $email;

    header("location: ../index.php");
}

?>