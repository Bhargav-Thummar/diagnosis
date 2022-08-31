# frozen_string_literal: true

# require different diagnosis modules

# 1. Traceroute
# Traceroute is a route cleaning tool for Rails applications. It provides a simple rake task for checking which routes are mapped to non existing controller actions, and finds out which controller actions are not reachable.
require 'diagnosis/routes_analyzer/routes_analyzer.rb'
require 'pry'

class Diagnosis
  def self.diagnose(*arr)
    puts "Sit Tight! Diagnosis is in process..."

    arr.each do |ele|
      if ele == "unused_routes"
        routes_analyzer = RoutesAnalyzer.new
        routes_analyzer.unused_routes
      end

      if ele == "unreachable_controller_methods"
        routes_analyzer = RoutesAnalyzer.new
        routes_analyzer.unreachable_controller_methods
      end
    end
  end
end
