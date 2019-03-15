<?php

class Pages extends Controller {
    public function __construct(){
        
    }

    public function index(){
        if (isLoggedIn()) {
            redirect('posts');
        }

        $data = [
            'title' => 'Technified',
            'description' => 'Your number 1 choice for automation of business processes'
        ];
        
        $this->view('pages/index', $data);
    }

    public function about(){
        $data = [
            'title' => 'About Us',
            'description' => 'The best you can get around'
        ];
        $this->view('pages/about', $data);
    }
}
