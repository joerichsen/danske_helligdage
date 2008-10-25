require 'danske_helligdage'

module DanskeHelligdage
  module Grundlovsdag

    def self.included(base)
      base.class_eval do
        alias_method :org_helligdag, :helligdag
      end
    end

    def helligdag
      (month == 6 && day == 5) ? 'Grundlovsdag' : org_helligdag
    end

  end
end

Date.send(:include, DanskeHelligdage::Grundlovsdag)
