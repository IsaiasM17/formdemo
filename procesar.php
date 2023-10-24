<?php
// Conexión a la base de datos (ajusta estos valores)
$servername = "localhost";
$username = "root";
$password = "";
$database = "desis";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Conexión a la base de datos fallida: " . $conn->connect_error);
}

// Procesar los datos del formulario
$name = $_POST['name'];
$apellido = $_POST['apellido'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$candidato = $_POST['candidato'];
$web = $_POST['web'];
$tv = $_POST['tv'];
$redes = $_POST['redes'];
$amigo = $_POST['amigo'];

// Validación de Alias
if (strlen($alias) <= 5 || !preg_match('/^[a-zA-Z0-9]+$/', $alias)) {
    die("Alias no válido. Debe contener al menos 6 caracteres alfanuméricos.");
}

// Validación de RUT
if (!validarRUT($rut)) {
    die("RUT no válido.");
}

// Validación de Email
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    die("Email no válido.");
}

if (existeRUT($rut, $conn)) {
    die("Ya has votado antes con este RUT.");
}

// Si todas las validaciones pasan, puedes proceder a procesar los datos en la base de datos
// ...

// Función para validar el RUT (Formato Chile)
function validarRUT($rut) {
    $rut = str_replace(array('.', '-'), '', $rut);
    if (preg_match('/^[0-9]+[0-9kK]{1}$/', $rut)) {
        $dv = substr($rut, -1);
        $rut = substr($rut, 0, -1);

        $factor = 2;
        $suma = 0;

        for ($i = strlen($rut) - 1; $i >= 0; $i--) {
            $suma += $rut[$i] * $factor;
            $factor = $factor == 7 ? 2 : $factor + 1;
        }

        $dv_esperado = 11 - ($suma % 11);
        $dv_esperado = ($dv_esperado == 11) ? 0 : $dv_esperado;
        $dv_esperado = ($dv_esperado == 10) ? 'K' : $dv_esperado;

        return strtoupper($dv) === strtoupper($dv_esperado);
    }

    return false;

    
}

function existeRUT($rut, $conn) {
    $sql = "SELECT COUNT(*) AS count FROM registro WHERE rut = '$rut'";
    $result = $conn->query($sql);

    if ($result && $row = $result->fetch_assoc()) {
        return intval($row['count']) > 0;
    }

    return false;
}

// Insertar los datos en la base de datos
$sql = "INSERT INTO registro (nombre, apellido, alias, rut, email, region, comuna, candidato, web, tv, redes, amigo) VALUES ('$name', '$apellido', '$alias','$rut', '$email', '$region', '$comuna', '$candidato', '$web', '$tv', '$redes', '$amigo')";


if ($conn->query($sql) === TRUE) {
    echo "Mensaje enviado con éxito.";
} else {
    echo "Error al enviar el mensaje: " . $conn->error;
}

$conn->close();
?>