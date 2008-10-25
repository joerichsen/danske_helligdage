require 'danske_helligdage'

module DanskeHelligdage
  module Juleaftensdag

    def self.included(base)
      base.class_eval do
        alias_method :org_helligdag, :helligdag
      end
    end

    def helligdag
      (month == 12 && day == 24) ? 'Juleaftensdag' : org_helligdag
    end

  end
end

Date.send(:include, DanskeHelligdage::Juleaftensdag)
