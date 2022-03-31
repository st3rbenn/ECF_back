<?php

namespace Class;

class Alert
{

    public function getSuccess($titreMsg, $msg): string
    {
        return '<div class="alert alert-success alert-dismissible animate animate__fadeIn animate__animated animate__delay-0.5s containers" role="alert">
              <strong>' .$titreMsg .'</strong>' . $msg .
            '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>';
    }
    public function getError($titreMsg, $msg): string
    {
       return '
            <div class="alert alert-danger alert-dismissible animate animate__fadeIn animate__animated animate__delay-0.5s containers" role="alert">
                <strong>' . $titreMsg . ' </strong>' . $msg .
             '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        ';
    }

    public function getWarning($titreMsg, $msg): string
    {
        return '
            <div class="alert alert-warning alert-dismissible animate animate__fadeIn animate__animated animate__delay-0.5s containers" role="alert">
                <strong>' . $titreMsg . ' </strong>' . $msg .
               '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        ';
    }







}