<?php
session_start();
$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);

$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);

?>


<?php if ($getJobs->deleteJobs($id)): ?>
    <script>
        alert("Votre offre a bien été supprimée");
        window.location.href = "/home/mon-espace-recruteur";
    </script>
<?php else: ?>
    <script>
        alert("Une erreur est survenue");
        window.location.href = "/home/mon-espace-recruteur";
    </script>
<?php endif; ?>


