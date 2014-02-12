#!/usr/bin/env ruby

require_relative "../lib/plan_optimizer"

homes = $stdin.gets.chomp.split.map{|e| e.to_i}

plan = PlanOptimizer.new(homes)
best_outcome = plan.optimize

puts best_outcome

