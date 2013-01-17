require 'danske_helligdage'

module DanskeHelligdage
  module FredagEfterKrh

    def self.included(base)
      base.class_eval do
        alias_method :helligdag_without_fredag_efter_krh, :helligdag
        alias_method :helligdag, :helligdag_with_fredag_efter_krh
      end
    end

    def helligdag_with_fredag_efter_krh
      fekrh = easter + 40
      (month == fekrh.month && day == fekrh.day) ? "Fredag e. Kristi himmelfartsdag" : helligdag_without_fredag_efter_krh
    end

  end
end

Date.send(:include, DanskeHelligdage::FredagEfterKrh)
