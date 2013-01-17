require 'date'
require 'danske_helligdage/version'
require 'danske_helligdage/officielle'

Date.send(:include, DanskeHelligdage::Officielle)
