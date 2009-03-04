IntergalacticFlash
==================

This plugin allows to send flash messages between rails apps

Installation
------------

    ruby script/plugin install git://github.com/roberto/intergalactic_flash.git

or

    git submodule add git://github.com/roberto/intergalactic_flash.git vendor/plugins/intergalactic_flash

Setup
-----

Include the IntergalacticFlash module in your controller:

    class ApplicationController < ActionController::Base
      
      include IntergalacticFlash
      
    end

Use
---

    flash[:notice] = "Intergalactic Planetary Planetary Intergalactic"
    redirect_away("http://another_dimension.com")


Credits
-------

* Code: Roberto Soares http://peakhut.com
* Idea: Bruno Miranda http://brunomiranda.com
* Name: Chris Saylor http://twitter.com/cwsaylor

Copyright (c) 2009 Roberto Soares, released under the MIT license
