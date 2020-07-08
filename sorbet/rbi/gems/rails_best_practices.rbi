# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rails_best_practices/all/rails_best_practices.rbi
#
# rails_best_practices-1.20.0

module RailsBestPractices
end
module RailsBestPractices::Core
end
class RailsBestPractices::Core::Check < CodeAnalyzer::Checker
  def add_error(message, filename = nil, line_number = nil); end
  def errors; end
  def initialize(options = nil); end
  def is_ignored?(node_file); end
  def is_interesting_file?(node_file); end
  def method_missing(method_name, *args); end
  def parse_file?(node_file); end
  def regex_ignored_files; end
  def self.debug; end
  def self.debug?; end
  def self.url(url = nil); end
  def url; end
end
module RailsBestPractices::Core::Check::Classable
  def classable_modules; end
  def current_class_name; end
  def current_extend_class_name; end
  def klasses; end
  def self.included(base); end
end
module RailsBestPractices::Core::Check::Moduleable
  def current_module_name; end
  def moduleable_modules; end
  def self.included(base); end
end
module RailsBestPractices::Core::Check::Callable
  def self.included(base); end
end
module RailsBestPractices::Core::Check::InheritedResourcesable
  def self.included(base); end
end
module RailsBestPractices::Core::Check::Exceptable
  def self.included(base); end
  def self.matches(method, except_method); end
end
module RailsBestPractices::Core::Check::Accessable
  def current_access_control; end
  def self.included(base); end
end
class RailsBestPractices::Core::ChecksLoader
  def checks_from_config; end
  def initialize(config); end
  def instantiate_check(block, check_name, options); end
  def load_check_class(check_name); end
  def load_checks_from_config(&block); end
  def load_lexicals; end
  def load_reviews; end
end
class RailsBestPractices::Core::Configs < Hash
end
class RailsBestPractices::Core::Klasses < Array
  def include?(class_name); end
end
class RailsBestPractices::Core::Klass
  def class_name; end
  def extend_class_name; end
  def initialize(class_name, extend_class_name, modules); end
  def to_s; end
end
class RailsBestPractices::Core::Controllers < RailsBestPractices::Core::Klasses
end
class RailsBestPractices::Core::Error < CodeAnalyzer::Warning
  def first_line_number; end
  def git_commit; end
  def git_commit=(arg0); end
  def git_username; end
  def git_username=(arg0); end
  def hg_commit; end
  def hg_commit=(arg0); end
  def hg_username; end
  def hg_username=(arg0); end
  def initialize(options = nil); end
  def short_filename; end
  def type; end
  def url; end
end
class RailsBestPractices::Core::Gems < Array
  def gem_version(gem_name); end
  def has_gem?(gem_name); end
end
class RailsBestPractices::Core::Gem
  def initialize(name, version); end
  def name; end
  def to_s; end
  def version; end
end
class RailsBestPractices::Core::Modules < Array
  def add_module_descendant(module_name, descendant); end
end
class RailsBestPractices::Core::Mod
  def add_descendant(descendant); end
  def descendants; end
  def initialize(module_name, modules); end
  def to_s; end
end
class RailsBestPractices::Core::Helpers < RailsBestPractices::Core::Modules
end
class RailsBestPractices::Core::Mailers < RailsBestPractices::Core::Klasses
end
class RailsBestPractices::Core::Methods
  def add_method(class_name, method_name, meta = nil, access_control = nil); end
  def get_all_unused_methods(access_control = nil); end
  def get_method(class_name, method_name, access_control = nil); end
  def get_methods(class_name, access_control = nil); end
  def has_method?(class_name, method_name, access_control = nil); end
  def initialize; end
  def mark_parent_class_method_used(class_name, method_name); end
  def mark_parent_class_methods_publicize(class_name, method_name); end
  def mark_publicize(class_name, method_name); end
  def mark_subclasses_method_used(class_name, method_name); end
  def methods(class_name); end
  def possible_public_used(method_name); end
end
class RailsBestPractices::Core::Method
  def access_control; end
  def class_name; end
  def file; end
  def initialize(class_name, method_name, access_control, meta); end
  def line_number; end
  def mark_used; end
  def method_name; end
  def publicize; end
  def used; end
end
class RailsBestPractices::Core::ModelAssociations
  def add_association(model_name, association_name, association_meta, association_class = nil); end
  def each; end
  def get_association(model_name, association_name); end
  def get_association_class_name(table_name, association_name); end
  def initialize; end
  def is_association?(model_name, association_name); end
end
class RailsBestPractices::Core::ModelAttributes
  def add_attribute(model_name, attribute_name, attribute_type); end
  def get_attribute_type(model_name, attribute_name); end
  def initialize; end
  def is_attribute?(model_name, attribute_name); end
end
class RailsBestPractices::Core::Models < RailsBestPractices::Core::Klasses
end
class RailsBestPractices::Core::Routes < Array
  def add_route(namespaces, controller_name, action_name); end
end
class RailsBestPractices::Core::Route
  def action_name; end
  def controller_name; end
  def controller_name_with_namespaces; end
  def initialize(namespaces, controller_name, action_name); end
  def namespaces; end
  def to_s; end
end
class RailsBestPractices::Core::Runner
  def after_lexical; end
  def after_prepare; end
  def after_review; end
  def checks; end
  def errors; end
  def initialize(options = nil); end
  def lexical(filename, content); end
  def load_plugin_reviews; end
  def load_prepares; end
  def parse_html_template(filename, content); end
  def prepare(filename, content); end
  def review(filename, content); end
  def self.base_path; end
  def self.base_path=(path); end
  def self.config_path; end
  def self.config_path=(path); end
end
module Erubis
end
class Erubis::OnlyRuby < Erubis::Eruby
  def add_expr_debug(src, code); end
  def add_expr_escaped(src, code); end
  def add_expr_literal(src, code); end
  def add_postamble(src); end
  def add_preamble(src); end
  def add_stmt(src, code); end
  def add_text(src, text); end
end
class RailsBestPractices::Colorize
  def self.green(message); end
  def self.red(message); end
end
class RailsBestPractices::Analyzer
  def analyze; end
  def analyze_source_codes; end
  def analyze_vcs; end
  def display_bar?; end
  def error_types; end
  def errors; end
  def expand_dirs_to_files(*dirs); end
  def file_accept(files, patterns); end
  def file_ignore(files, pattern); end
  def file_sort(files); end
  def generate; end
  def initialize(path, options = nil); end
  def load_git_info; end
  def load_hg_info; end
  def output; end
  def output_html_errors; end
  def output_json_errors; end
  def output_terminal_errors; end
  def output_xml_errors; end
  def output_yaml_errors; end
  def parse_files; end
  def path; end
  def plain_output(message, color); end
  def process(process); end
  def runner; end
  def runner=(arg0); end
end
module RailsBestPractices::Lexicals
end
class RailsBestPractices::Lexicals::LongLineCheck < RailsBestPractices::Core::Check
  def check(filename, content); end
  def initialize(options = nil); end
end
class RailsBestPractices::Lexicals::RemoveTabCheck < RailsBestPractices::Core::Check
  def check(filename, content); end
end
class RailsBestPractices::Lexicals::RemoveTrailingWhitespaceCheck < RailsBestPractices::Core::Check
  def check(filename, content); end
end
module RailsBestPractices::Prepares
  def self.clear; end
  def self.configs; end
  def self.controller_methods; end
  def self.controllers; end
  def self.gems; end
  def self.helper_methods; end
  def self.helpers; end
  def self.klasses; end
  def self.mailers; end
  def self.model_associations; end
  def self.model_attributes; end
  def self.model_methods; end
  def self.models; end
  def self.routes; end
end
class RailsBestPractices::Prepares::ConfigPrepare < RailsBestPractices::Core::Check
  def initialize; end
end
class RailsBestPractices::Prepares::ControllerPrepare < RailsBestPractices::Core::Check
  def initialize; end
  include RailsBestPractices::Core::Check::Accessable
  include RailsBestPractices::Core::Check::Classable
  include RailsBestPractices::Core::Check::InheritedResourcesable
end
class RailsBestPractices::Prepares::GemfilePrepare < RailsBestPractices::Core::Check
  def check(_filename, content); end
  def initialize; end
end
class RailsBestPractices::Prepares::HelperPrepare < RailsBestPractices::Core::Check
  def initialize; end
  include RailsBestPractices::Core::Check::Accessable
  include RailsBestPractices::Core::Check::Moduleable
end
class RailsBestPractices::Prepares::InitializerPrepare < RailsBestPractices::Core::Check
  def include_forbidden_attributes_protection?(node); end
  def initialize; end
end
class RailsBestPractices::Prepares::MailerPrepare < RailsBestPractices::Core::Check
  def initialize; end
  include RailsBestPractices::Core::Check::Classable
end
class RailsBestPractices::Prepares::ModelPrepare < RailsBestPractices::Core::Check
  def initialize; end
  def remember_association(node); end
  include RailsBestPractices::Core::Check::Accessable
  include RailsBestPractices::Core::Check::Classable
end
class RailsBestPractices::Prepares::RoutePrepare < RailsBestPractices::Core::Check
  def add_customize_routes; end
  def add_resource_routes(node); end
  def add_resources_routes(node); end
  def current_controller_name; end
  def current_namespaces; end
  def get_resource_actions(action_names); end
  def get_resources_actions(action_names); end
  def initialize; end
end
class RailsBestPractices::Prepares::SchemaPrepare < RailsBestPractices::Core::Check
  def initialize; end
end
module RailsBestPractices::Reviews
end
class RailsBestPractices::Reviews::Review < RailsBestPractices::Core::Check
  def model_associations; end
  def model_attributes; end
  def models; end
  def remember_variable_use_count(node); end
  def reset_variable_use_count; end
  def variable(node); end
  def variable_use_count; end
end
class RailsBestPractices::Reviews::AddModelVirtualAttributeReview < RailsBestPractices::Reviews::Review
  def assign(node); end
  def assignments(receiver); end
  def call_assignment(node); end
  def dups(nodes); end
  def params_dup?(nodes); end
end
class RailsBestPractices::Reviews::AlwaysAddDbIndexReview < RailsBestPractices::Reviews::Review
  def combine_polymorphic_foreign_keys; end
  def greater_than_or_equal(more_array, less_array); end
  def initialize(options = nil); end
  def not_indexed?(table, column); end
  def remember_foreign_key_columns(node); end
  def remember_index_columns_inside_table(node); end
  def remember_index_columns_outside_table(node); end
  def remember_table_nodes(node); end
  def remove_only_type_foreign_keys; end
  def remove_table_not_exist_foreign_keys; end
end
class RailsBestPractices::Reviews::CheckDestroyReturnValueReview < RailsBestPractices::Reviews::Review
  def model_classnames; end
  def return_value_is_used?(node); end
  include RailsBestPractices::Core::Check::Classable
end
class RailsBestPractices::Reviews::CheckSaveReturnValueReview < RailsBestPractices::Reviews::Review
  def model_classnames; end
  def return_value_is_used?(node); end
  include RailsBestPractices::Core::Check::Classable
end
class RailsBestPractices::Reviews::DefaultScopeIsEvilReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::DryBundlerInCapistranoReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::HashSyntaxReview < RailsBestPractices::Reviews::Review
  def empty_hash?(node); end
  def hash_is_18?(node); end
  def valid_keys?(node); end
end
class RailsBestPractices::Reviews::IsolateSeedDataReview < RailsBestPractices::Reviews::Review
  def initialize(options = nil); end
  def new_record?(node); end
  def remember_new_variable(node); end
end
class RailsBestPractices::Reviews::KeepFindersOnTheirOwnModelReview < RailsBestPractices::Reviews::Review
  def other_finder?(node); end
end
class RailsBestPractices::Reviews::LawOfDemeterReview < RailsBestPractices::Reviews::Review
  def is_association_attribute?(association_class, association_name, attribute_name); end
  def need_delegate?(node); end
end
class RailsBestPractices::Reviews::MoveCodeIntoControllerReview < RailsBestPractices::Reviews::Review
  def finder?(node); end
end
class RailsBestPractices::Reviews::MoveCodeIntoHelperReview < RailsBestPractices::Reviews::Review
  def complex_select_options?(node); end
  def initialize(options = nil); end
end
class RailsBestPractices::Reviews::MoveCodeIntoModelReview < RailsBestPractices::Reviews::Review
  def initialize(options = nil); end
end
class RailsBestPractices::Reviews::MoveFinderToNamedScopeReview < RailsBestPractices::Reviews::Review
  def finder?(node); end
end
class RailsBestPractices::Reviews::MoveModelLogicIntoModelReview < RailsBestPractices::Reviews::Review
  def initialize(options = nil); end
end
class RailsBestPractices::Reviews::NeedlessDeepNestingReview < RailsBestPractices::Reviews::Review
  def initialize(options = nil); end
  def recursively_check(node); end
end
class RailsBestPractices::Reviews::NotRescueExceptionReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::NotUseDefaultRouteReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::NotUseTimeAgoInWordsReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::OveruseRouteCustomizationsReview < RailsBestPractices::Reviews::Review
  def initialize(options = nil); end
  def member_and_collection_count_for_rails3(node); end
end
class RailsBestPractices::Reviews::ProtectMassAssignmentReview < RailsBestPractices::Reviews::Review
  def check_active_record(const_path_ref_node); end
  def check_activerecord_version; end
  def check_authlogic(node); end
  def check_devise(command_node); end
  def check_include_forbidden_attributes_protection_config; end
  def check_rails_builtin(node); end
  def check_strong_parameters(command_node); end
  def check_whitelist_attributes_config; end
end
class RailsBestPractices::Reviews::RemoveEmptyHelpersReview < RailsBestPractices::Reviews::Review
  def empty_body?(module_node); end
end
class RailsBestPractices::Reviews::RemoveUnusedMethodsInControllersReview < RailsBestPractices::Reviews::Review
  def call_method(method_name, class_name = nil); end
  def except_methods; end
  def excepted?(method); end
  def initialize(options = nil); end
  def internal_except_methods; end
  def mark_publicize(method_name, class_name = nil); end
  def mark_used(method_node); end
  def methods; end
  def skip_command_callback_nodes; end
  include RailsBestPractices::Core::Check::Callable
  include RailsBestPractices::Core::Check::Classable
  include RailsBestPractices::Core::Check::Exceptable
  include RailsBestPractices::Core::Check::InheritedResourcesable
  include RailsBestPractices::Core::Check::Moduleable
end
class RailsBestPractices::Reviews::RemoveUnusedMethodsInHelpersReview < RailsBestPractices::Reviews::Review
  def call_method(method_name, class_name = nil); end
  def except_methods; end
  def excepted?(method); end
  def initialize(options = nil); end
  def internal_except_methods; end
  def mark_used(method_node); end
  def methods; end
  def skip_command_callback_nodes; end
  include RailsBestPractices::Core::Check::Callable
  include RailsBestPractices::Core::Check::Exceptable
  include RailsBestPractices::Core::Check::Moduleable
end
class RailsBestPractices::Reviews::RemoveUnusedMethodsInModelsReview < RailsBestPractices::Reviews::Review
  def call_method(method_name, class_name = nil); end
  def except_methods; end
  def excepted?(method); end
  def initialize(options = nil); end
  def internal_except_methods; end
  def mark_used(method_node); end
  def methods; end
  def skip_command_callback_nodes; end
  include RailsBestPractices::Core::Check::Callable
  include RailsBestPractices::Core::Check::Classable
  include RailsBestPractices::Core::Check::Exceptable
end
class RailsBestPractices::Reviews::ReplaceComplexCreationWithFactoryMethodReview < RailsBestPractices::Reviews::Review
  def check_variable_save(node); end
  def initialize(options = nil); end
end
class RailsBestPractices::Reviews::ReplaceInstanceVariableWithLocalVariableReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::RestrictAutoGeneratedRoutesReview < RailsBestPractices::Reviews::Review
  def _check(node, methods); end
  def _methods(node, methods); end
  def check_method_add_block?(node); end
  def check_resource(node); end
  def check_resources(node); end
  def controller_name(node); end
  def friendly_route_name(node); end
  def hash_key_exist?(node, key); end
  def initialize(options = nil); end
  def module_option(node); end
  def namespaced_class_name(name); end
  def option_with_hash(node); end
  def resource_methods; end
  def resources_methods; end
end
class RailsBestPractices::Reviews::SimplifyRenderInControllersReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::SimplifyRenderInViewsReview < RailsBestPractices::Reviews::Review
  def include_partial?(hash_node); end
  def valid_hash?(hash_node); end
end
class RailsBestPractices::Reviews::UseBeforeFilterReview < RailsBestPractices::Reviews::Review
  def initialize(options = nil); end
  def remember_first_sentence(node); end
end
class RailsBestPractices::Reviews::UseModelAssociationReview < RailsBestPractices::Reviews::Review
  def attribute_assignment(node); end
  def call_assignment(node); end
end
class RailsBestPractices::Reviews::UseMultipartAlternativeAsContentTypeOfEmailReview < RailsBestPractices::Reviews::Review
  def mailer_directory; end
  def mailer_files(name); end
  def rails3_canonical_mailer_views?(name); end
  def rails_canonical_mailer_views?(name); end
end
class RailsBestPractices::Reviews::UseObserverReview < RailsBestPractices::Reviews::Review
  def callback_method?(node); end
  def deliver_mailer?(node); end
  def initialize(options = nil); end
  def mailers; end
  def remember_callback(node); end
end
class RailsBestPractices::Reviews::UseParenthesesInMethodDefReview < RailsBestPractices::Reviews::Review
  def has_parameters?(def_node); end
  def no_parentheses_around_parameters?(def_node); end
end
class RailsBestPractices::Reviews::UseQueryAttributeReview < RailsBestPractices::Reviews::Review
  def compare_with_empty_string?(node); end
  def is_model?(variable_node); end
  def model_attribute?(variable_node, message); end
  def possible_query_attribute?(node); end
  def query_attribute_node(conditional_statement_node); end
end
class RailsBestPractices::Reviews::UseSayWithTimeInMigrationsReview < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::Reviews::UseScopeAccessReview < RailsBestPractices::Reviews::Review
  def current_user?(node); end
  def current_user_redirect?(node); end
end
class RailsBestPractices::Reviews::UseTurboSprocketsRails3Review < RailsBestPractices::Reviews::Review
end
class RailsBestPractices::OptionParser
  def self.parse!(argv = nil); end
end
class RailsBestPractices::CLI
  def self.run(argv); end
end
