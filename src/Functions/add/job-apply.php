<?php

session_start();
$database = new Database\DB;
$db = $database::getConnection();
$id = explode('/', $_SERVER['HTTP_REFERER'])[6];
$addCandidate = new Controller\Functions($db);
if($addCandidate->applyJobs($id)) {
    header('location: /home/job?id='.$id);
}
