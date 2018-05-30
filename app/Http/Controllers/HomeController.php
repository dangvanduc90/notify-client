<?php

namespace App\Http\Controllers;

// require lib
require __DIR__ .'/../../../vendor/autoload.php';

use Illuminate\Http\Request;

use ElephantIO\Client;
use ElephantIO\Engine\SocketIO\Version2X;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $client = new Client(new Version2X('http://localhost:3000/', [
            'headers' => [
                'X-My-Header: websocket rocks',
                'Authorization: Bearer 12b3c4d5e6f7g8h9i'
            ]
        ]));
        $client->initialize();
        $client->emit('register-laravel', ['email' => "HomeController"]);
        $client->close();

        return view('home');
    }
}
