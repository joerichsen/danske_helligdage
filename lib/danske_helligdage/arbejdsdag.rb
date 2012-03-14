# -*- coding: utf-8 -*-

require 'danske_helligdage'

module DanskeHelligdage
  module Arbejdsdag

    # Calculate the following working day.
    #
    # ==== Parameters
    # [<tt>num</tt>]  Integer. Number of working days forward (>0).
    #
    # Returns Date of the next working day.
    #
    # Note: returns a new Date object and does not change current object.
    def arbejdsdag(num=1)
      d = self+1
      until(d.arbejdsdag?) do
        d = d+1
      end

      # recursively find next working day(s)
      num > 1 ? d.arbejdsdag(num-1) : d
    end

  end
end

Date.send(:include, DanskeHelligdage::Arbejdsdag)
