# typed: strict
# frozen_string_literal: true

module HeatmapHelper
  extend T::Sig

  sig { params(value: Float).returns(String) }
  def heatmap_color(value)
    "hsl(211, 100%, #{100 - 50.0 * value}%, 0.15)"
  end
end
