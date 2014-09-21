# Susan Gilbert's on-line artist portfolio.

This currently uses [Middleman](http://middlemanapp.com/) to generate a static web site based on the 
content (primarily) in ```source/galleries``` and ```source/about```.

## Building

To build the web site requires
* Ruby
* The [Ruby Bundler gem](http://bundler.io/)

After cloning the project go into the project directory and use ```bundle``` to install the various other 
gems that project depends on.

The command ```middleman build``` with build the site based on the files in the ```source``` directory and 
place the results in the ```build``` directory.

More useful in development is the ```middleman server``` command, which will start a local webserver to display
the site, automatically updating the site whenever you save changes. Use the URL in the output of ```middleman serve```
to connect to the web server and view the live updates.

The command ```middleman help``` will give you some information on the various options available. 
[The Middleman site](http://middlemanapp.com/) has quite a lot of additional documentation.

## Modifying content

The content for the site is all in the ```source``` directory, mostly in ```source/galleries``` and ```source/about```.
To modify a gallery, edit the header information (in [YAML format](http://www.yaml.org/spec/1.2/spec.html)). To create 
a new gallery create a file in ```source/galleries``` with header structure and contents like the existing galleries, 
and that should automatically be picked up and added to the menus and the web site.
