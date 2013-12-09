require_relative '../lib/pascal_triangle_series'

pascal_triangle_series = PascalTriangleSeries.new
pascal_triangle_series.print_upto(6) { |pascal_series_term| print " #{ pascal_series_term } "}