use strict;
use warnings;
use HTTP::Server::Simple;
package MyWebServer;
use base qw(HTTP::Server::Simple::CGI);

sub handle_request {
    my ($self, $cgi) = @_;
    print "HTTP/1.0 200 OK\r\n";
    print $cgi->header, $cgi->start_html('Perl'), $cgi->h1('Hello from Perl Web Server!'), $cgi->end_html;

}

# Run the server on port 8080
my $port = 8080;
my $server = MyWebServer->new($port);
print "Server started at http://localhost:$port/\n";
$server->run();
