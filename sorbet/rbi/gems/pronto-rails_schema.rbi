# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/pronto-rails_schema/all/pronto-rails_schema.rbi
#
# pronto-rails_schema-0.10.0

module Pronto
end
class Pronto::RailsSchema < Pronto::Runner
  def changes_detected?(patch); end
  def detect_added_migration_file(patch); end
  def detect_schema_file(path); end
  def detect_structure_file(path); end
  def generate_messages_for(target); end
  def migration_patches; end
  def run; end
  def schema_file_present?; end
  def structure_file_present?; end
end
