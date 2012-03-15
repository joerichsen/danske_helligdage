# -*- coding: UTF-8 -*-
# An extension to the Date class that provides some methods for working with public holidays in Denmark.
module DanskeHelligdage

  module Officielle
    
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
      def arbejdsdage_i_periode(from, to)
        (from..to).to_a.select { |date| date.arbejdsdag? }.length
      end

      def arbejdsdage(*args)
        if args[0].is_a? Fixnum
          year, month = args
          arbejdsdage_i_periode(Date.civil(year, month), (Date.civil(year, month) >> 1) - 1)
        else
          arbejdsdage_i_periode(*args)
        end
      end
    end

    # Returns true if it is a working day
    def arbejdsdag?
      !weekend? && !helligdag?
    end

    # Returns true if it is a weekend
    def weekend?
      wday == 0 || wday == 6
    end
  
    # Returns true if it is a public holiday
    def helligdag?
      not helligdag.nil?
    end

    # Returns the name of public holiday
    def helligdag
      paaskedag = easter
  
      relative_dates = {
        (paaskedag - 7)  => "Palmesøndag",	
        (paaskedag - 3)  => "Skærtorsdag",	
        (paaskedag - 2)  => "Langfredag",
        (paaskedag)      => "Påskedag",
        (paaskedag + 1)  => "2. påskedag",	
        (paaskedag + 26) => "Store Bededag",	
        (paaskedag + 39) => "Kristi himmelfartsdag",	
        (paaskedag + 49) => "Pinsedag",	
        (paaskedag + 50) => "2. pinsedag",	
      }

      absolute_dates = {
        Date.new(year, 1, 1)   => "Nytårsdag",
        Date.new(year, 12, 25) => "1. juledag",
        Date.new(year, 12, 26) => "2. juledag",
      }

      (relative_dates.merge(absolute_dates))[self]
    end

    # Returns a date representing Easter
    #
    # From http://www.dayweekyear.com/faq_holidays_calculation.jsp
    def easter
      y = year
      a = y % 19
      b = y / 100
      c = y % 100
      d = b / 4
      e = b % 4
      f = (b + 8) / 25
      g = (b - f + 1) / 3;
      h = (19 * a + b - d - g + 15) % 30
      i = c / 4
      k = c % 4
      l = (32 + 2 * e + 2 * i - h - k) % 7
      m = (a + 11 * h + 22 * l) / 451
      month = (h + l - 7 * m + 114) / 31
      day = ((h + l - 7 * m + 114) % 31) + 1
      Date.civil(year, month, day)
    end
  end
end
