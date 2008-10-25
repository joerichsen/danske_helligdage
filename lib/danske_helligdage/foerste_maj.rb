require 'danske_helligdage'

module DanskeHelligdage
  module FoersteMaj

    def self.included(base)
      base.class_eval do
        alias_method :org_helligdag, :helligdag
      end
    end

    def helligdag
      (month == 5 && day == 1) ? '1. maj' : org_helligdag
    end

  end
end

Date.send(:include, DanskeHelligdage::FoersteMaj)
