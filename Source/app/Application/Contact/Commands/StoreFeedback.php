<?php

namespace App\Application\Contact\Commands;

use App\AppUserComment;

class StoreFeedback {
    public static function execute($args) {
        $userComment = new AppUserComment();
        $userComment->uName = $args['fullname'];
        $userComment->uPhone = $args['phone'];
        $userComment->uAddress = $args['email'];
        $userComment->uComment = $args['comment'];

        $userComment->save();

        return $userComment;
    }
}