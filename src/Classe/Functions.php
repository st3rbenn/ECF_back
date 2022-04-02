<?php

namespace Class;

class Functions
{

    public function checkDayOrNight()
    {
        $date = date('H');
        if ($date >= 6 && $date < 18) {
            return true;
        }
        return false;
    }

}