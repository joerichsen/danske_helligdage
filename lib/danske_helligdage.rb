require 'date'
require 'danske_helligdage/officielle'

Date.send(:include, DanskeHelligdage::Officielle)
