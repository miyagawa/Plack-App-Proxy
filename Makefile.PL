use inc::Module::Install;
name 'Plack-App-Proxy';
all_from 'lib/Plack/App/Proxy.pm';
readme_from 'lib/Plack/App/Proxy.pm';
test_requires 'Test::More' => '0.88';  # for done_testing()
test_requires 'Test::Requires';
requires 'Plack' => 0.9028; # for psgi.streaming in blocking servers
requires 'Plack::Request';
requires 'HTTP::Headers';
requires 'AnyEvent::HTTP' => 1.44; # for Host header
auto_set_repository;
WriteAll;
