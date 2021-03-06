# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/formtastic/all/formtastic.rbi
#
# formtastic-3.1.5

module Formtastic
  def deprecation; end
  def deprecation=(obj); end
  def self.deprecation; end
  def self.deprecation=(obj); end
  extend ActiveSupport::Autoload
end
class Formtastic::Engine < Rails::Engine
end
module Formtastic::Util
  def deprecated_version_of_rails?; end
  def html_safe(text); end
  def match?(version, dependency); end
  def minimum_version_of_rails; end
  def rails3?; end
  def rails4?; end
  def rails4_0?; end
  def rails4_1?; end
  def rails_version; end
  extend Formtastic::Util
end
class Formtastic::UnknownInputError < NameError
end
class Formtastic::UnknownActionError < NameError
end
class Formtastic::PolymorphicInputWithoutCollectionError < ArgumentError
end
class Formtastic::UnsupportedMethodForAction < ArgumentError
end
class Formtastic::UnsupportedEnumCollection < NameError
end
module Formtastic::Inputs
  extend ActiveSupport::Autoload
end
module Formtastic::Inputs::Base
  def builder; end
  def builder=(arg0); end
  def initialize(builder, template, object, object_name, method, options); end
  def method; end
  def method=(arg0); end
  def object; end
  def object=(arg0); end
  def object_name; end
  def object_name=(arg0); end
  def options; end
  def options=(arg0); end
  def removed_option!(old_option_name); end
  def template; end
  def template=(arg0); end
  def warn_and_correct_option!(old_option_name, new_option_name); end
  def warn_deprecated_option!(old_option_name, instructions); end
  extend ActiveSupport::Autoload
  include Formtastic::Inputs::Base::Associations
  include Formtastic::Inputs::Base::Database
  include Formtastic::Inputs::Base::Errors
  include Formtastic::Inputs::Base::Fileish
  include Formtastic::Inputs::Base::Hints
  include Formtastic::Inputs::Base::Html
  include Formtastic::Inputs::Base::Labelling
  include Formtastic::Inputs::Base::Naming
  include Formtastic::Inputs::Base::Options
  include Formtastic::Inputs::Base::Validations
  include Formtastic::Inputs::Base::Wrapping
end
module Formtastic::Inputs::Base::Html
  def dom_id; end
  def dom_index; end
  def input_html_options; end
  def to_html; end
end
module Formtastic::Inputs::Base::Options
  def formtastic_options; end
  def input_options; end
end
module Formtastic::Inputs::Base::Database
  def column; end
  def column?; end
end
module Formtastic::Inputs::Base::Errors
  def error_first_html; end
  def error_html; end
  def error_keys; end
  def error_list_html; end
  def error_none_html; end
  def error_sentence_html; end
  def errors; end
  def errors?; end
end
module Formtastic::Inputs::Base::Hints
  def hint?; end
  def hint_html; end
  def hint_text; end
  def hint_text_from_options; end
end
module Formtastic::Inputs::Base::Naming
  def as; end
  def attributized_method_name; end
  def humanized_method_name; end
  def input_name; end
  def sanitized_method_name; end
  def sanitized_object_name; end
end
module Formtastic::Inputs::Base::Validations
  def autofocus?; end
  def column_limit; end
  def limit; end
  def not_required_through_negated_validation!; end
  def not_required_through_negated_validation?; end
  def optional?; end
  def readonly?; end
  def readonly_attribute?; end
  def readonly_from_options?; end
  def required?; end
  def required_attribute?; end
  def responds_to_global_required?; end
  def validation_integer_only?; end
  def validation_limit; end
  def validation_max; end
  def validation_min; end
  def validation_step; end
  def validations; end
  def validations?; end
  def validator_relevant?(validator); end
end
class Formtastic::Inputs::Base::Validations::IndeterminableMinimumAttributeError < ArgumentError
  def message; end
end
class Formtastic::Inputs::Base::Validations::IndeterminableMaximumAttributeError < ArgumentError
  def message; end
end
module Formtastic::Inputs::Base::Fileish
  def file?; end
end
module Formtastic::Helpers
end
module Formtastic::Helpers::Reflection
  def association_macro_for_method(method); end
  def association_primary_key_for_method(method); end
  def reflection_for(method); end
end
module Formtastic::Inputs::Base::Associations
  def association; end
  def association_primary_key; end
  def belongs_to?; end
  def has_many?; end
  def reflection; end
  include Formtastic::Helpers::Reflection
end
module Formtastic::LocalizedString
  def localized_string(key, value, type, options = nil); end
  def model_name; end
end
module Formtastic::Inputs::Base::Labelling
  def label_from_options; end
  def label_html; end
  def label_html_options; end
  def label_text; end
  def localized_label; end
  def render_label?; end
  def requirement_text; end
  def requirement_text_or_proc; end
  include Formtastic::LocalizedString
end
module Formtastic::Inputs::Base::Wrapping
  def input_wrapping(&block); end
  def wrapper_classes; end
  def wrapper_classes_raw; end
  def wrapper_dom_id; end
  def wrapper_html_options; end
  def wrapper_html_options_raw; end
end
class Formtastic::Localizer
  def builder; end
  def builder=(arg0); end
  def escape_html_entities(string); end
  def i18n_cache_lookups; end
  def i18n_lookups_by_default; end
  def initialize(current_builder); end
  def localize(key, value, type, options = nil); end
  def normalize_model_name(name); end
  def self.cache; end
end
class Formtastic::Localizer::Cache
  def cache; end
  def clear!; end
  def get(key); end
  def has_key?(key); end
  def set(key, result); end
end
module Formtastic::Actions
  extend ActiveSupport::Autoload
end
module Formtastic::HtmlAttributes
  def dom_id_namespace; end
  def humanized_attribute_name(method); end
end
module Formtastic::Helpers::Enum
  def enum_for(method); end
end
module Formtastic::Helpers::FileColumnDetection
  def is_file?(method, options = nil); end
end
module Formtastic::Helpers::InputHelper
  def column_for(method); end
  def custom_input_class_name(as); end
  def default_input_type(method, options = nil); end
  def input(method, options = nil); end
  def input_class(as); end
  def input_class_by_trying(as); end
  def input_class_deprecation_warning(method); end
  def input_class_with_const_defined(as); end
  def namespaced_input_class(as); end
  def standard_input_class_name(as); end
  include Formtastic::Helpers::Enum
  include Formtastic::Helpers::FileColumnDetection
  include Formtastic::Helpers::Reflection
end
module Formtastic::Helpers::FieldsetWrapper
  def field_set_and_list_wrapping(*args, &block); end
  def field_set_legend(html_options); end
  def parent_child_index(parent); end
end
module Formtastic::Helpers::InputsHelper
  def association_columns(*by_associations); end
  def content_columns; end
  def default_columns_for_object; end
  def field_set_title_from_args(*args); end
  def fieldset_contents_from_column_list(columns); end
  def inputs(*args, &block); end
  def inputs_for_nested_attributes(*args, &block); end
  include Formtastic::Helpers::FieldsetWrapper
  include Formtastic::LocalizedString
end
module Formtastic::Helpers::ActionHelper
  def action(method, options = nil); end
  def action_class(as); end
  def action_class_deprecation_warning(method); end
  def custom_action_class_name(as); end
  def default_action_type(method, options = nil); end
  def namespaced_action_class(as); end
  def standard_action_class_name(as); end
end
module Formtastic::Helpers::ActionsHelper
  def actions(*args, &block); end
  def default_actions; end
  include Formtastic::Helpers::FieldsetWrapper
end
module Formtastic::Helpers::ErrorsHelper
  def error_keys(method, options); end
  def has_errors?(method, options); end
  def render_inline_errors?; end
  def semantic_errors(*args); end
  include Formtastic::Helpers::FileColumnDetection
  include Formtastic::Helpers::Reflection
  include Formtastic::LocalizedString
end
class Formtastic::FormBuilder < ActionView::Helpers::FormBuilder
  def action_class_finder; end
  def action_class_finder=(val); end
  def action_class_finder?; end
  def action_namespaces; end
  def action_namespaces=(val); end
  def action_namespaces?; end
  def all_fields_required_by_default; end
  def all_fields_required_by_default=(val); end
  def all_fields_required_by_default?; end
  def auto_index; end
  def collection_label_methods; end
  def collection_label_methods=(val); end
  def collection_label_methods?; end
  def collection_value_methods; end
  def collection_value_methods=(val); end
  def collection_value_methods?; end
  def custom_namespace; end
  def custom_namespace=(val); end
  def custom_namespace?; end
  def default_commit_button_accesskey; end
  def default_commit_button_accesskey=(val); end
  def default_commit_button_accesskey?; end
  def default_error_list_class; end
  def default_error_list_class=(val); end
  def default_error_list_class?; end
  def default_hint_class; end
  def default_hint_class=(val); end
  def default_hint_class?; end
  def default_inline_error_class; end
  def default_inline_error_class=(val); end
  def default_inline_error_class?; end
  def default_text_area_height; end
  def default_text_area_height=(val); end
  def default_text_area_height?; end
  def default_text_area_width; end
  def default_text_area_width=(val); end
  def default_text_area_width?; end
  def default_text_field_size; end
  def default_text_field_size=(val); end
  def default_text_field_size?; end
  def escape_html_entities_in_hints_and_labels; end
  def escape_html_entities_in_hints_and_labels=(val); end
  def escape_html_entities_in_hints_and_labels?; end
  def file_metadata_suffixes; end
  def file_metadata_suffixes=(val); end
  def file_metadata_suffixes?; end
  def file_methods; end
  def file_methods=(val); end
  def file_methods?; end
  def i18n_cache_lookups; end
  def i18n_cache_lookups=(val); end
  def i18n_cache_lookups?; end
  def i18n_localizer; end
  def i18n_localizer=(val); end
  def i18n_localizer?; end
  def i18n_lookups_by_default; end
  def i18n_lookups_by_default=(val); end
  def i18n_lookups_by_default?; end
  def include_blank_for_select_by_default; end
  def include_blank_for_select_by_default=(val); end
  def include_blank_for_select_by_default?; end
  def initialize(object_name, object, template, options, block = nil); end
  def inline_errors; end
  def inline_errors=(val); end
  def inline_errors?; end
  def input_class_finder; end
  def input_class_finder=(val); end
  def input_class_finder?; end
  def input_namespaces; end
  def input_namespaces=(val); end
  def input_namespaces?; end
  def label_str_method; end
  def label_str_method=(val); end
  def label_str_method?; end
  def optional_string; end
  def optional_string=(val); end
  def optional_string?; end
  def perform_browser_validations; end
  def perform_browser_validations=(val); end
  def perform_browser_validations?; end
  def priority_countries; end
  def priority_countries=(val); end
  def priority_countries?; end
  def priority_time_zones; end
  def priority_time_zones=(val); end
  def priority_time_zones?; end
  def required_string; end
  def required_string=(val); end
  def required_string?; end
  def self.action_class_finder; end
  def self.action_class_finder=(val); end
  def self.action_class_finder?; end
  def self.action_namespaces; end
  def self.action_namespaces=(val); end
  def self.action_namespaces?; end
  def self.all_fields_required_by_default; end
  def self.all_fields_required_by_default=(val); end
  def self.all_fields_required_by_default?; end
  def self.collection_label_methods; end
  def self.collection_label_methods=(val); end
  def self.collection_label_methods?; end
  def self.collection_value_methods; end
  def self.collection_value_methods=(val); end
  def self.collection_value_methods?; end
  def self.configure(name, default = nil); end
  def self.custom_namespace; end
  def self.custom_namespace=(val); end
  def self.custom_namespace?; end
  def self.default_commit_button_accesskey; end
  def self.default_commit_button_accesskey=(val); end
  def self.default_commit_button_accesskey?; end
  def self.default_error_list_class; end
  def self.default_error_list_class=(val); end
  def self.default_error_list_class?; end
  def self.default_hint_class; end
  def self.default_hint_class=(val); end
  def self.default_hint_class?; end
  def self.default_inline_error_class; end
  def self.default_inline_error_class=(val); end
  def self.default_inline_error_class?; end
  def self.default_text_area_height; end
  def self.default_text_area_height=(val); end
  def self.default_text_area_height?; end
  def self.default_text_area_width; end
  def self.default_text_area_width=(val); end
  def self.default_text_area_width?; end
  def self.default_text_field_size; end
  def self.default_text_field_size=(val); end
  def self.default_text_field_size?; end
  def self.escape_html_entities_in_hints_and_labels; end
  def self.escape_html_entities_in_hints_and_labels=(val); end
  def self.escape_html_entities_in_hints_and_labels?; end
  def self.file_metadata_suffixes; end
  def self.file_metadata_suffixes=(val); end
  def self.file_metadata_suffixes?; end
  def self.file_methods; end
  def self.file_methods=(val); end
  def self.file_methods?; end
  def self.i18n_cache_lookups; end
  def self.i18n_cache_lookups=(val); end
  def self.i18n_cache_lookups?; end
  def self.i18n_localizer; end
  def self.i18n_localizer=(val); end
  def self.i18n_localizer?; end
  def self.i18n_lookups_by_default; end
  def self.i18n_lookups_by_default=(val); end
  def self.i18n_lookups_by_default?; end
  def self.include_blank_for_select_by_default; end
  def self.include_blank_for_select_by_default=(val); end
  def self.include_blank_for_select_by_default?; end
  def self.inline_errors; end
  def self.inline_errors=(val); end
  def self.inline_errors?; end
  def self.input_class_finder; end
  def self.input_class_finder=(val); end
  def self.input_class_finder?; end
  def self.input_namespaces; end
  def self.input_namespaces=(val); end
  def self.input_namespaces?; end
  def self.label_str_method; end
  def self.label_str_method=(val); end
  def self.label_str_method?; end
  def self.optional_string; end
  def self.optional_string=(val); end
  def self.optional_string?; end
  def self.perform_browser_validations; end
  def self.perform_browser_validations=(val); end
  def self.perform_browser_validations?; end
  def self.priority_countries; end
  def self.priority_countries=(val); end
  def self.priority_countries?; end
  def self.priority_time_zones; end
  def self.priority_time_zones=(val); end
  def self.priority_time_zones?; end
  def self.required_string; end
  def self.required_string=(val); end
  def self.required_string?; end
  def self.skipped_columns; end
  def self.skipped_columns=(val); end
  def self.skipped_columns?; end
  def self.use_required_attribute; end
  def self.use_required_attribute=(val); end
  def self.use_required_attribute?; end
  def semantic_fields_for(record_or_name_or_array, *args, &block); end
  def skipped_columns; end
  def skipped_columns=(val); end
  def skipped_columns?; end
  def template; end
  def use_required_attribute; end
  def use_required_attribute=(val); end
  def use_required_attribute?; end
  include Formtastic::Helpers::ActionHelper
  include Formtastic::Helpers::ActionsHelper
  include Formtastic::Helpers::ErrorsHelper
  include Formtastic::Helpers::InputHelper
  include Formtastic::Helpers::InputsHelper
  include Formtastic::HtmlAttributes
end
class Formtastic::NamespacedClassFinder
  def class_name(as); end
  def find(as); end
  def find_by_trying(class_name); end
  def find_with_const_defined(class_name); end
  def finder(class_name); end
  def initialize(namespaces); end
  def namespaces; end
  def resolve(as); end
  def self.use_const_defined?; end
end
class Formtastic::NamespacedClassFinder::NotFoundError < NameError
end
class Formtastic::InputClassFinder < Formtastic::NamespacedClassFinder
  def class_name(as); end
  def initialize(builder); end
end
class Formtastic::ActionClassFinder < Formtastic::NamespacedClassFinder
  def class_name(as); end
  def initialize(builder); end
end
module Formtastic::Helpers::FormHelper
  def builder; end
  def builder=(obj); end
  def default_form_class; end
  def default_form_class=(obj); end
  def default_form_model_class_proc; end
  def default_form_model_class_proc=(obj); end
  def formtastic_field_error_proc; end
  def formtastic_field_error_proc=(obj); end
  def self.builder; end
  def self.builder=(obj); end
  def self.default_form_class; end
  def self.default_form_class=(obj); end
  def self.default_form_model_class_proc; end
  def self.default_form_model_class_proc=(obj); end
  def self.formtastic_field_error_proc; end
  def self.formtastic_field_error_proc=(obj); end
  def semantic_fields_for(record_name, record_object = nil, options = nil, &block); end
  def semantic_form_for(record_or_name_or_array, *args, &proc); end
  def with_custom_field_error_proc(&block); end
end
