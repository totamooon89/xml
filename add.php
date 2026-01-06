<?php
$name = $_POST['name'];
$email = $_POST['email'];
$course = $_POST['course'];

$xml = new DOMDocument();
$xml->load('trainees.xml');

$root = $xml->getElementsByTagName('trainees')-> item(0);

$trainee = $xml->createElement('trainee');

$trainee->appendChild($xml->createElement('name',$name));
$trainee->appendChild($xml->createElement('email',$email));
$trainee->appendChild($xml->createElement('course',$course));

$root->appendChild($trainee);
$xml->save('trainees.xml');
header("Location: trainees.html"); 
exit;

?>
