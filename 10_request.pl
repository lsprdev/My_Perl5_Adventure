#!/usr/bin/env perl

use strict;
use warnings;
use Plack::Request;
use Plack::Response;
use JSON::MaybeXS;

my $app = sub {
    my $env = shift;

    # Create a Plack::Request object
    my $req = Plack::Request->new($env);

    # Get the HTTP method (GET, POST, etc.)
    my $method = $req->method;

    # Get the path requested
    my $path = $req->path_info;

    my $response;

    # Handle different endpoints
    if ($method eq 'GET' && $path eq '/api/greet') {
        $response = greet_endpoint($req);
    } else {
        $response = response_not_found();
    }

    return $response->finalize;
};

sub greet_endpoint {
    my $req = shift;

    # Get query parameters
    my $name = $req->param('name') || 'Guest';

    # Create a Plack::Response object
    my $res = Plack::Response->new(200);
    $res->content_type('application/json');

    my $message = { message => "Hello, $name!" };

    # Encode the message as JSON using JSON::MaybeXS
    $res->body(encode_json($message));

    return $res;
}

sub response_not_found {
    my $res = Plack::Response->new(404);
    $res->body('Not Found');
    return $res;
}

use Plack::Builder;
builder {
    enable 'Plack::Middleware::JSONP';
    $app;
};