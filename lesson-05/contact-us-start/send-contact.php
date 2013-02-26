<?php
print_r($_POST['customername']);
$to = 'arqlizcarter@gmail.com';
$subject = " I need a gardener";
$message = $_POST['customername'] . 'need a gardener';
$headers = 'From:arqlizcarter@gmail.com' . "\r\n" .
    'Reply-To: arqlizcarter@gmail.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);

?>