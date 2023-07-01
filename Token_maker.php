// Note: Ce fichier sert à créer un token pour la connexion avec le login. Ne pas oublier de modifier le login dans le fichier ci dessous.
<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/RT/A23/config.php';
require_once DIR_BASE.'controllers/SessionController.php';
$login="test";
$token=createToken($login);
echo"<br>";
echo "<br>";
echo "Login : $login ";
echo "<br>";
echo "Token : ";
echo $token;
?>
