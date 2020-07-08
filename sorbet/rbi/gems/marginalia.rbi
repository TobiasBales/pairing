# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/marginalia/all/marginalia.rbi
#
# marginalia-1.8.0

module Marginalia
  def application_name; end
  def application_name=(obj); end
  def self.application_name; end
  def self.application_name=(obj); end
  def self.with_annotation(comment, &block); end
end
class Marginalia::Railtie < Rails::Railtie
  def self.insert; end
  def self.insert_into_action_controller; end
  def self.insert_into_active_job; end
  def self.insert_into_active_record; end
end
module Marginalia::Comment
  def components; end
  def components=(obj); end
  def lines_to_ignore; end
  def lines_to_ignore=(obj); end
  def prepend_comment; end
  def prepend_comment=(obj); end
  def self.action; end
  def self.application; end
  def self.clear!; end
  def self.clear_job!; end
  def self.components; end
  def self.components=(obj); end
  def self.connection_config; end
  def self.construct_comment; end
  def self.construct_inline_comment; end
  def self.controller; end
  def self.controller_with_namespace; end
  def self.database; end
  def self.db_host; end
  def self.escape_sql_comment(str); end
  def self.hostname; end
  def self.inline_annotations; end
  def self.job; end
  def self.line; end
  def self.lines_to_ignore; end
  def self.lines_to_ignore=(obj); end
  def self.marginalia_adapter; end
  def self.marginalia_adapter=(adapter); end
  def self.marginalia_controller; end
  def self.marginalia_controller=(controller); end
  def self.marginalia_job; end
  def self.marginalia_job=(job); end
  def self.pid; end
  def self.prepend_comment; end
  def self.prepend_comment=(obj); end
  def self.request_id; end
  def self.sidekiq_job; end
  def self.socket; end
  def self.update!(controller = nil); end
  def self.update_adapter!(adapter); end
  def self.update_job!(job); end
end
module Marginalia::SidekiqInstrumentation
  def self.enable!; end
end
class Marginalia::SidekiqInstrumentation::Middleware
  def call(worker, msg, queue); end
end
module Marginalia::ActiveRecordInstrumentation
  def annotate_sql(sql); end
  def exec_delete_with_marginalia(sql, name = nil, binds = nil); end
  def exec_query_with_marginalia(sql, name = nil, binds = nil, options = nil); end
  def exec_update_with_marginalia(sql, name = nil, binds = nil); end
  def execute_and_clear_with_marginalia(sql, *args, &block); end
  def execute_with_marginalia(sql, name = nil); end
  def self.included(instrumented_class); end
end
module Marginalia::ActionControllerInstrumentation
  def record_query_comment; end
  def self.included(instrumented_class); end
end
