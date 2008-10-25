= DanskeHelligdage

* http://github.com/joerichsen/danske_helligdage/

== DESCRIPTION:

Add support for public holidays in Denmark in the Date class

== FEATURES/PROBLEMS:

Uses the list of public holidays in Denmark found in
https://www.borger.dk/Emner/samfundogrettigheder/kirkeogtro/Sider/officiellehelligedage.aspx

== SYNOPSIS:

Require it
  require 'danske_helligdage'

Get the name of a public holiday
  Date.civil(2008, 12, 25).helligdag returns 'Juledag'

Ask whether a date is a public holiday
  Date.civil(2008, 12, 25).helligdag? returns true
  
Ask whether a date is a working day
  Date.civil(2008, 12, 25).arbejdsdag? returns false
  
Get the number of working days for a given month
  Date.arbejdsdage(2008, 1) returns 22

Or for a specific period
  Date.arbejdsdage_i_periode(Date.civil(2008, 1, 1), Date.civil(2008, 12, 31)) returns 253

Note that 1. maj, grundlovsdag and juleaftensdag are not official Danish public holidays, so to enable them you do something like this
  require 'danske_helligdage'
  require 'danske_helligdage/juleaftensdag'

Then all of the methods above will take juleaftensdag into consideration.

== REQUIREMENTS:

* None

== INSTALL:

* sudo gem install joerichsen-danske_helligdage

== LICENSE:

(The MIT License)

Copyright (c) 2008 Jørgen Orehøj Erichsen

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
