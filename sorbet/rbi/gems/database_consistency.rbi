# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/database_consistency/all/database_consistency.rbi
#
# database_consistency-0.8.4

module DatabaseConsistency
  def self.run; end
end
module DatabaseConsistency::Helper
  def check_inclusion?(array, element); end
  def first_level_associations(model); end
  def models; end
  def parent_models; end
  def self.check_inclusion?(array, element); end
  def self.first_level_associations(model); end
  def self.models; end
  def self.parent_models; end
end
class DatabaseConsistency::Configuration
  def colored?; end
  def configuration; end
  def debug?; end
  def enabled?(*path); end
  def initialize(filepath = nil); end
  def log_level; end
  def settings; end
end
class DatabaseConsistency::RescueError
  def call(error); end
  def filename; end
  def initialize; end
  def self.call(error); end
  def self.empty?; end
  def self.new(*arg0); end
end
module DatabaseConsistency::Writers
end
class DatabaseConsistency::Writers::BaseWriter
  def config; end
  def initialize(results, config: nil); end
  def results; end
  def self.write(results, config: nil); end
  def write?(status); end
end
class DatabaseConsistency::Writers::SimpleWriter < DatabaseConsistency::Writers::BaseWriter
  def colorize(text, color); end
  def key_text(result); end
  def msg(result); end
  def status_text(result); end
  def write; end
end
module DatabaseConsistency::Checkers
end
class DatabaseConsistency::Checkers::BaseChecker
  def check; end
  def checker_name; end
  def column_or_attribute; end
  def column_or_attribute_name; end
  def enabled?(configuration); end
  def opts; end
  def preconditions; end
  def report; end
  def report_if_enabled?(configuration); end
  def report_template(status, message = nil); end
  def self.checker_name; end
  def self.enabled?(configuration); end
  def table_or_model; end
  def table_or_model_name; end
end
class DatabaseConsistency::Checkers::AssociationChecker < DatabaseConsistency::Checkers::BaseChecker
  def association; end
  def column_or_attribute_name; end
  def initialize(model, association); end
  def model; end
  def table_or_model_name; end
end
class DatabaseConsistency::Checkers::MissingIndexChecker < DatabaseConsistency::Checkers::AssociationChecker
  def association_keys; end
  def check; end
  def index; end
  def index_keys(index); end
  def preconditions; end
end
class DatabaseConsistency::Checkers::ColumnChecker < DatabaseConsistency::Checkers::BaseChecker
  def column; end
  def column_or_attribute_name; end
  def initialize(model, column); end
  def model; end
  def table_or_model_name; end
end
class DatabaseConsistency::Checkers::NullConstraintChecker < DatabaseConsistency::Checkers::ColumnChecker
  def belongs_to_association?; end
  def check; end
  def nil_exclusion_validator?; end
  def numericality_validator_without_allow_nil?; end
  def preconditions; end
  def primary_field?; end
  def timestamp_field?; end
  def valid?; end
  def validator?(validator_class); end
end
class DatabaseConsistency::Checkers::LengthConstraintChecker < DatabaseConsistency::Checkers::ColumnChecker
  def check; end
  def postgresql_array?; end
  def preconditions; end
  def valid?(sign); end
  def validator; end
end
class DatabaseConsistency::Checkers::PrimaryKeyTypeChecker < DatabaseConsistency::Checkers::ColumnChecker
  def check; end
  def preconditions; end
  def primary_field?; end
  def sqlite?; end
  def valid?; end
end
class DatabaseConsistency::Checkers::ValidatorChecker < DatabaseConsistency::Checkers::BaseChecker
  def attribute; end
  def column_or_attribute_name; end
  def initialize(model, attribute, validator); end
  def model; end
  def table_or_model_name; end
  def validator; end
end
class DatabaseConsistency::Checkers::BelongsToPresenceChecker < DatabaseConsistency::Checkers::ValidatorChecker
  def association; end
  def check; end
  def preconditions; end
end
class DatabaseConsistency::Checkers::MissingUniqueIndexChecker < DatabaseConsistency::Checkers::ValidatorChecker
  def check; end
  def column_or_attribute_name; end
  def extract_index_columns(index_columns); end
  def index_columns; end
  def preconditions; end
  def scope_columns; end
  def sorted_index_columns; end
  def unique_index; end
  def wrapped_attribute_name; end
end
class DatabaseConsistency::Checkers::ValidatorsFractionChecker < DatabaseConsistency::Checkers::BaseChecker
  def attribute; end
  def column_or_attribute_name; end
  def initialize(model, attribute, validators); end
  def model; end
  def table_or_model_name; end
  def validators; end
end
class DatabaseConsistency::Checkers::ColumnPresenceChecker < DatabaseConsistency::Checkers::ValidatorsFractionChecker
  def check; end
  def column; end
  def filter(validator); end
  def preconditions; end
end
module DatabaseConsistency::Processors
  def self.reports(configuration); end
end
class DatabaseConsistency::Processors::BaseProcessor
  def check; end
  def configuration; end
  def enabled_checkers; end
  def initialize(configuration = nil); end
  def reports; end
end
class DatabaseConsistency::Processors::AssociationsProcessor < DatabaseConsistency::Processors::BaseProcessor
  def check; end
end
class DatabaseConsistency::Processors::ValidatorsProcessor < DatabaseConsistency::Processors::BaseProcessor
  def check; end
end
class DatabaseConsistency::Processors::ColumnsProcessor < DatabaseConsistency::Processors::BaseProcessor
  def check; end
end
class DatabaseConsistency::Processors::ValidatorsFractionsProcessor < DatabaseConsistency::Processors::BaseProcessor
  def check; end
end