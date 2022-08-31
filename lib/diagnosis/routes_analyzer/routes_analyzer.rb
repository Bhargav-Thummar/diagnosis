require 'traceroute'

class RoutesAnalyzer

  def initialize
    puts "Traceroute is ready for operation..."
  end

  def unused_routes
    @unused_routes = true
    check()
  end

  def unreachable_controller_methods
    @unreachable_controller_methods = true
    check()
  end

  private

  def check
    puts "\n \n"

    traceroute = Traceroute.new Rails.application
    traceroute.load_everything!
  
    if @unused_routes
      unused_routes = traceroute.unused_routes
      puts "Unused routes (#{unused_routes.count}):"
      unused_routes.each {|route| puts "  #{route}"}
    end
    
    if @unreachable_controller_methods
      unreachable_action_methods = traceroute.unreachable_action_methods
      puts "Unreachable action methods (#{unreachable_action_methods.count}):"
      unreachable_action_methods.each {|action| puts "  #{action}"}
    end
  
  rescue StandardError => e
    puts e.message
  end
end
