<?php
include('../MODELS/conexion.php');
abrirConexion();

$message = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombres = $_POST['nombres'] ?? '';
    $apellidos = $_POST['apellidos'] ?? '';
    $telefono = $_POST['telefono'] ?? '';
    $correo = $_POST['correo'] ?? '';
    $municipio = $_POST['municipio'] ?? '';

    $consulta = "INSERT INTO tblusuarios (nombres, apellidos, telefono, correo, municipio) VALUES (?, ?, ?, ?, ?)";
    if ($stmt = $conexion->prepare($consulta)) {
        $stmt->bind_param("sssss", $nombres, $apellidos, $telefono, $correo, $municipio);

        if ($stmt->execute()) {
            $mensaje = "Registrado con éxito";
        } else {
            echo "Error al ejecutar la consulta: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Error en la preparación de la consulta: " . $conexion->error;
    }
}

// Obtener departamentos
$sql = "SELECT codigo, nombre FROM tbldepartamento";
$result = $conexion->query($sql);
$departamentos = [];
while ($row = $result->fetch_assoc()) {
    $departamentos[$row['codigo']] = $row['nombre'];
}

// Obtener municipios agrupados por departamento
$sql = "SELECT codigo, nombre, departamento FROM tblmunicipio";
$result = $conexion->query($sql);
$municipios = [];
while ($row = $result->fetch_assoc()) {
    $municipios[$row['departamento']][] = [
        'codigo' => $row['codigo'],
        'nombre' => $row['nombre']
    ];
}

$conexion->close();
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/formulario.css">
    <title>Formulario de Registro</title>
</head>

<body>
    <main>
        <div>
            <?php if (!empty($mensaje)) : ?>
                <div class='message'><?php echo htmlspecialchars($mensaje); ?></div>
            <?php endif; ?>
            <form class="form" id="formulario" action="formulario.php" method="POST" enctype="multipart/form-data">
                <div>
                    <h2 class="title">Registro</h2>
                </div>
                <div class="flex">
                    <div class="form-group">
                        <label for="nombres">Nombres <span>*</span>:</label>
                        <input type="text" id="nombres" name="nombres" value="" required>
                    </div>
                    <div class="form-group">
                        <label for="apellidos">Apellidos <span>*</span>:</label>
                        <input type="text" id="apellidos" name="apellidos" value="" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono <span>*</span>:</label>
                    <input type="text" id="telefono" name="telefono" value="" required>
                </div>
                <div class="form-group">
                    <label for="correo">Correo Electrónico <span>*</span>:</label>
                    <input type="email" id="correo" name="correo" value="" required>
                </div>
                <div class="form-group">
                    <label for="departamento">Departamento <span>*</span>:</label>
                    <select id="departamento" name="departamento" required onchange="cargarMunicipios()">
                        <option value="">Selecciona una opción...</option>
                        <?php foreach ($departamentos as $codigo => $nombredepartamento): ?>
                            <option value="<?php echo htmlspecialchars($codigo); ?>">
                                <?php echo htmlspecialchars($nombredepartamento); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="municipio">Localidad / Ciudad <span>*</span>:</label>
                    <select id="municipio" name="municipio" required>
                        <option value="">Selecciona una opción...</option>
                    </select>
                </div>

                <div class="form-group">
                    <input class="btn-enviar" type="submit" value="Registrarme">
                </div>
            </form>
        </div>
    </main>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const message = document.querySelector('.message');
            if (message) {
                setTimeout(() => {
                    message.style.display = 'none';
                }, 5000); 
            }    
        });
        
        const municipios = <?php echo json_encode($municipios); ?>;

        function cargarMunicipios() {
            const departamentoSelect = document.getElementById('departamento');
            const municipioSelect = document.getElementById('municipio');

            municipioSelect.innerHTML = '<option value="">Selecciona una opción...</option>';

            const departamentoSeleccionado = departamentoSelect.value;

            if (municipios[departamentoSeleccionado]) {
                municipios[departamentoSeleccionado].forEach(municipio => {
                    const option = document.createElement('option');
                    option.value = municipio.codigo;
                    option.textContent = municipio.nombre;
                    municipioSelect.appendChild(option);
                });
            }
        }
    </script>
</body>

</html>