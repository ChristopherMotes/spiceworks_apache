class spiceworks_apache (
# This a simple class, calling the convoluted apache module
# We could put some fancy parameters here, if I wanted to write
# hiera data. Just a note, all parameteres but the last one should
# be follow by a comma.
) {
# Let's leverage the work of puppet labs
  include apache

  apache::vhost { 'test.example.com':
  	port    => '80',
	rewrites => [ { rewrite_rule => ['^test$ index.html'] } ]
  	docroot => '/var/www/test',
  } # end apache


  file { '/var/www/test/index.html':
	ensure 	=> present,
	owner	=> 'apache',
	group	=> 'apache',
	mode	=> '444',
	source 	=> 'puppet:///modules/spiceworks_apache/index.html'
  } #end file
} # endd class
