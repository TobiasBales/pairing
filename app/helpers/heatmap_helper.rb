# typed: strict
# frozen_string_literal: true

module HeatmapHelper
  extend T::Sig

  sig { params(value: Numeric).returns(String) }
  def heatmap_color(value)
    "hsl(210, 100%, #{100 - 50 * value}%, 0.15)"
  end
end
