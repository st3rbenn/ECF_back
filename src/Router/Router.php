<?php

namespace Router;

class Router
{
    private $url;
    private $routes = [];

    public function __construct($url)
    {
        $this->url = $url;
    }

    public function get($path, $callable): Route
    {
        $route = new Route($path, $callable);
        $this->routes['GET'][] = $route;
        $this->routes['POST'][] = $route;
        return $route;
    }

    public function run(){
        foreach($this->routes[$_SERVER['REQUEST_METHOD']] as $route){
            if($route->match($this->url)){
                return $route->call();
            }
        }
    }
}

