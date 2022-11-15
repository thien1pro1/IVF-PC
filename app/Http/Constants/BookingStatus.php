<?php
namespace App\Http\Constants;

class BookingStatus
{
    public static $WAITING = -1;
    public static $CONFIRMED_EMAIL = 0;
    public static $CONFIRMED_STAFF = 1;
    public static $FINISHED = 2;
    public static $CANCELED = 3;

}