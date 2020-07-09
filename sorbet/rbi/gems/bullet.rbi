# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/bullet/all/bullet.rbi
#
# bullet-6.1.0

class Object < BasicObject
  def bullet_key; end
  def bullet_primary_key_value; end
end
class String
  def bullet_class_name; end
end
module Bullet
  def self.add_footer; end
  def self.add_footer=(arg0); end
  def self.add_whitelist(options); end
  def self.airbrake=(arg); end
  def self.alert=(arg); end
  def self.app_root; end
  def self.bugsnag=(arg); end
  def self.build_request_uri(env); end
  def self.bullet_logger=(active); end
  def self.clear_whitelist; end
  def self.console=(arg); end
  def self.console_enabled?; end
  def self.counter_cache_enable=(arg0); end
  def self.counter_cache_enable?; end
  def self.customized_logger=(arg); end
  def self.debug(title, message); end
  def self.delete_whitelist(options); end
  def self.enable=(enable); end
  def self.enable?; end
  def self.end_request; end
  def self.footer_info; end
  def self.for_each_active_notifier_with_notification; end
  def self.gather_inline_notifications; end
  def self.get_whitelist_associations(type, class_name); end
  def self.growl=(arg); end
  def self.honeybadger=(arg); end
  def self.n_plus_one_query_enable=(arg0); end
  def self.n_plus_one_query_enable?; end
  def self.notification?; end
  def self.notification_collector; end
  def self.orm_patches_applied; end
  def self.orm_patches_applied=(arg0); end
  def self.perform_out_of_channel_notifications(env = nil); end
  def self.profile; end
  def self.rails_logger=(arg); end
  def self.raise=(should_raise); end
  def self.reset_whitelist; end
  def self.rollbar=(arg); end
  def self.sentry=(arg); end
  def self.skip_html_injection=(arg0); end
  def self.skip_html_injection?; end
  def self.slack=(arg); end
  def self.stacktrace_excludes; end
  def self.stacktrace_excludes=(arg0); end
  def self.stacktrace_includes; end
  def self.stacktrace_includes=(arg0); end
  def self.start?; end
  def self.start_request; end
  def self.terminal_notifier=(arg); end
  def self.text_notifications; end
  def self.unused_eager_loading_enable=(arg0); end
  def self.unused_eager_loading_enable?; end
  def self.warnings; end
  def self.whitelist; end
  def self.xmpp=(arg); end
  extend Bullet::Dependency
end
module Bullet::Dependency
  def active_record40?; end
  def active_record41?; end
  def active_record42?; end
  def active_record4?; end
  def active_record50?; end
  def active_record51?; end
  def active_record52?; end
  def active_record5?; end
  def active_record60?; end
  def active_record6?; end
  def active_record?; end
  def active_record_version; end
  def mongoid4x?; end
  def mongoid5x?; end
  def mongoid6x?; end
  def mongoid7x?; end
  def mongoid?; end
  def mongoid_version; end
end
module Bullet::StackTraceFilter
  def caller_in_project; end
  def excluded_stacktrace_path?; end
  def location_as_path(location); end
  def pattern_matches?(location, pattern); end
  def ruby_19?; end
  def select_caller_locations; end
end
module Bullet::Detector
end
class Bullet::Detector::Base
end
class Bullet::Detector::Association < Bullet::Detector::Base
  def self.add_call_object_associations(object, associations); end
  def self.add_object_associations(object, associations); end
  def self.call_object_associations; end
  def self.eager_loadings; end
  def self.impossible_objects; end
  def self.inversed_objects; end
  def self.object_associations; end
  def self.possible_objects; end
end
class Bullet::Detector::NPlusOneQuery < Bullet::Detector::Association
  def self.add_impossible_object(object); end
  def self.add_inversed_object(object, association); end
  def self.add_possible_objects(object_or_objects); end
  def self.association?(object, associations); end
  def self.call_association(object, associations); end
  def self.conditions_met?(object, associations); end
  def self.create_notification(callers, klazz, associations); end
  def self.impossible?(object); end
  def self.possible?(object); end
  extend Bullet::Dependency
  extend Bullet::StackTraceFilter
end
class Bullet::Detector::UnusedEagerLoading < Bullet::Detector::Association
  def self.add_eager_loadings(objects, associations); end
  def self.call_associations(bullet_key, associations); end
  def self.check_unused_preload_associations; end
  def self.create_notification(callers, klazz, associations); end
  def self.diff_object_associations(bullet_key, associations); end
  extend Bullet::Dependency
  extend Bullet::StackTraceFilter
end
class Bullet::Detector::CounterCache < Bullet::Detector::Base
  def self.add_counter_cache(object, associations); end
  def self.add_impossible_object(object); end
  def self.add_possible_objects(object_or_objects); end
  def self.conditions_met?(object, _associations); end
  def self.create_notification(klazz, associations); end
  def self.impossible_objects; end
  def self.possible_objects; end
end
class Bullet::BulletRailtie < Rails::Railtie
end
class Bullet::Rack
  def append_to_html_body(response_body, content); end
  def call(env); end
  def empty?(response); end
  def file?(headers); end
  def footer_div_attributes; end
  def footer_header; end
  def footer_note; end
  def html_request?(headers, response); end
  def initialize(app); end
  def response_body(response); end
  def set_header(headers, header_name, header_array); end
  def sse?(headers); end
  def xhr_script; end
  include Bullet::Dependency
end
module Bullet::SaveWithBulletSupport
  def _create_record(*arg0); end
end
module Bullet::ActiveRecord
  def self.enable; end
end
module Bullet::Notification
end
class Bullet::Notification::UnoptimizedQueryError < StandardError
end