#!/usr/bin/env ruby

require "test/unit"
require_relative "../lib/plan_optimizer"

class TestPlanOptimizer < Test::Unit::TestCase

  def test_sample_one
    plan = PlanOptimizer.new([20, 10, 50, 5, 1])
    assert_equal(71, plan.optimize())
  end

  def test_sample_two
    plan = PlanOptimizer.new([20, 50, 10, 1, 5])
    assert_equal(55, plan.optimize())
  end

end
