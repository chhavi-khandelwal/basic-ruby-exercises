require_relative '../lib/PascalTriangleSeries'

pascalTriangleSeries = PascalTriangleSeries.new
pascalTriangleSeries.print_upto(6) { |pascal_series_term| print " #{ pascal_series_term } "}