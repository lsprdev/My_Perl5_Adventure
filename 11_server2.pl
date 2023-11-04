#!/usr/bin/env perl

use Mojolicious::Lite;

# Define a route for the main page
get '/' => 'index';

# Define a route for handling form submission
post '/submit' => sub {
    my $c = shift;

    # Retrieve form values
    my $name    = $c->param('name')    || 'Guest';
    my $message = $c->param('message') || 'No message';
    print "Name: $name\n";
    print "Message: $message\n";
    # Render a template with the input values
    $c->render(template => 'result', name => $name, message => $message);
};

# Start the Mojolicious app
app->start;

__DATA__

@@ index.html.ep
<!DOCTYPE html>
<html>
<head>
    <title>Simple Perl Web Server</title>
</head>
<body>
    <h1>Web Server with Inputs</h1>
    <form action="/submit" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" cols="50" required></textarea>
        <br>
        <input type="submit" value="Send">
    </form>
</body>
</html>

@@ result.html.ep
<!DOCTYPE html>
<html>
<head>
    <title>Form Submission Result</title>
</head>
<body>
    <h1>Form Submission Result</h1>
    <p>Name: <%= $name %></p>
    <p>Message: <%= $message %></p>
    <p><a href="/">Go back to the main page</a></p>
</body>
</html>