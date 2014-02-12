#!/usr/bin/env ruby

class PlanOptimizer
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
      for j in (0...i-1)
        if results[j] > max
          max = results[j]
        end
      end
      results[i] = max + @home_list[i]
    end

    max = results.max
    return max
  end
end
