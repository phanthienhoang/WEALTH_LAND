<?php

namespace App\Http\Controllers;

use App\Application\Contact\Commands\StoreFeedback;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        return view('pages.contact.contact');
    }

    public function postComment(Request $request)
    {

        $data = [
            'fullname' => $request->fullname,
            'phone' => $request->phone,
            'email' => $request->email,
            'comment' => $request->comment
        ];

        $userComment = StoreFeedback::execute($data);

        return $userComment;
    }
}
