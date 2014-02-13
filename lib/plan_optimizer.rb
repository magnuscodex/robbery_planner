#!/usr/bin/env ruby

class PlanOptimizer
  # PlanOptimizer is initialized with a list of home values.
  def initialize(homes)
    @home_list = []
    for e in homes
      @home_list << e
    end
  end

  def optimize()
    results = []
    for i in (0...@home_list.size)
      max = 0
      # For the two "earlier" homes other than the immediately prior home
      # check which one is the tail end of the most valuable string
      # of robberies and use that as the previous robbery.
      orig = i-3 > 0 ? i-3 : 0
      for j in (orig...i-1)
        if results[j] > max
          max = results[j]
        end
      end
      # Each result element is the maximum possible value of a string of
      # robberies ending at the ith house.
      results[i] = max + @home_list[i]
    end

    max = results.max
    if max.nil?
      max = 0
    end
    return max
  end
end
