require 'danske_helligdage'

module DanskeHelligdage
  module Grundlovsdag

    def self.included(base)
      base.class_eval do
        alias_method :helligdag_without_grundlovsdag, :helligdag
        alias_method :helligdag, :helligdag_with_grundlovsdag
      end
    end

    def helligdag_with_grundlovsdag
      (month == 6 && day == 5) ? 'Grundlovsdag' : helligdag_without_grundlovsdag
    end

  end
end

Date.send(:include, DanskeHelligdage::Grundlovsdag)
