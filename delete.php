<?php
$index = $_POST['index'];
$xml = new DOMDocument();
$xml->load('trainees.xml');

$trainees = $xml->getElementsByTagName('trainee');

$trainees->item($index)->parentNode->removeChild($trainees->item($index));

$xml->save('trainees.xml');
?>
