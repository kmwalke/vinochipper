# Vinochipper API
A Ruby API for the Vinoshipper public JSON API.

# Installation
From the CLI:

    gem install vinochipper
Or add to your Gemfile:

    gem 'vinochipper'

## Setup
    require 'vinochipper'

# Usage

## Wine Lists

To retrieve a wine list from Vinoshipper:

    wine_list = Vinochipper.wine_list(<your vinoshipper id>)

Vinochipper returns data storage objects. If you inspect them,
you will see something like this:

    wine_list.winery
    
    => #<Winery:0x000055df1285c8b0
     @deets=
      {"id"=>3005,
       "name"=>"Slaymaker Cellars",
       "img"=>"//storage.googleapis.com/cdn.vinoshipper.com/winery/358fd6b1-22ee-4ffa-9365-406c8971de67.png",
       "url"=>"/json-api/v2/wine-list?id=3005",
       "key"=>"slaymaker_cellars",
       "website"=>"http://www.slaymakercellars.com",
       "phone"=>nil,
       "email"=>nil,
       "allowsPickup"=>false,
       "facebookPixel"=>nil}>

You can call any of these array keys as a method on the parent 
object (camelCase methods should be called as snake_case):

    wine_list.winery.name
    
    =>"Slaymaker Cellars"
    
    wine_list.winery.allows_pickup
    
    =>false