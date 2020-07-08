# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rails-html-sanitizer/all/rails-html-sanitizer.rbi
#
# rails-html-sanitizer-1.3.0

module Rails
end
module Rails::Html
end
class Rails::Html::Sanitizer
  def properly_encode(fragment, options); end
  def remove_xpaths(node, xpaths); end
  def sanitize(html, options = nil); end
  def self.full_sanitizer; end
  def self.link_sanitizer; end
  def self.safe_list_sanitizer; end
  def self.white_list_sanitizer; end
end
class Rails::Html::PermitScrubber < Loofah::Scrubber
  def allowed_node?(node); end
  def attributes; end
  def attributes=(attributes); end
  def initialize; end
  def keep_node?(node); end
  def scrub(node); end
  def scrub_attribute(node, attr_node); end
  def scrub_attribute?(name); end
  def scrub_attributes(node); end
  def scrub_css_attribute(node); end
  def scrub_node(node); end
  def skip_node?(node); end
  def tags; end
  def tags=(tags); end
  def validate!(var, name); end
end
class Rails::Html::TargetScrubber < Rails::Html::PermitScrubber
  def allowed_node?(node); end
  def scrub_attribute?(name); end
end
class Rails::Html::TextOnlyScrubber < Loofah::Scrubber
  def initialize; end
  def scrub(node); end
end
class Rails::Html::FullSanitizer < Rails::Html::Sanitizer
  def sanitize(html, options = nil); end
end
class Rails::Html::LinkSanitizer < Rails::Html::Sanitizer
  def initialize; end
  def sanitize(html, options = nil); end
end
class Rails::Html::SafeListSanitizer < Rails::Html::Sanitizer
  def allowed_attributes(options); end
  def allowed_tags(options); end
  def initialize; end
  def sanitize(html, options = nil); end
  def sanitize_css(style_string); end
  def self.allowed_attributes; end
  def self.allowed_attributes=(arg0); end
  def self.allowed_tags; end
  def self.allowed_tags=(arg0); end
end
module ActionView
end
module ActionView::Helpers
end
module ActionView::Helpers::SanitizeHelper
end
module ActionView::Helpers::SanitizeHelper::ClassMethods
  def deprecate_option(name); end
  def sanitized_allowed_attributes=(attributes); end
  def sanitized_allowed_css_keywords; end
  def sanitized_allowed_css_keywords=(_); end
  def sanitized_allowed_css_properties; end
  def sanitized_allowed_css_properties=(_); end
  def sanitized_allowed_protocols; end
  def sanitized_allowed_protocols=(_); end
  def sanitized_allowed_tags=(tags); end
  def sanitized_bad_tags; end
  def sanitized_bad_tags=(_); end
  def sanitized_protocol_separator; end
  def sanitized_protocol_separator=(_); end
  def sanitized_shorthand_css_properties; end
  def sanitized_shorthand_css_properties=(_); end
  def sanitized_uri_attributes; end
  def sanitized_uri_attributes=(_); end
end
