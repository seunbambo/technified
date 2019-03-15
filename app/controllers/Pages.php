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
            'description' => 'Best choice for business process automation'
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
