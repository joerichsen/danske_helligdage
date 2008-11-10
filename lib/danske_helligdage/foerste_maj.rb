require 'danske_helligdage'

module DanskeHelligdage
  module FoersteMaj

    def self.included(base)
      base.class_eval do
        alias_method :helligdag_without_foerste_maj, :helligdag
        alias_method :helligdag, :helligdag_with_foerste_maj
      end
    end

    def helligdag_with_foerste_maj
      (month == 5 && day == 1) ? '1. maj' : helligdag_without_foerste_maj
    end

  end
end

Date.send(:include, DanskeHelligdage::FoersteMaj)
