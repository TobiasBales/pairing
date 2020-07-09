# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/pghero/all/pghero.rbi
#
# pghero-2.5.1

module PgHero
  def self.access_key_id(*args, &block); end
  def self.analyze(*args, &block); end
  def self.analyze_all(**options); end
  def self.analyze_tables(*args, &block); end
  def self.autoindex(*args, &block); end
  def self.autoindex_all(create: nil, verbose: nil); end
  def self.autovacuum_danger(*args, &block); end
  def self.best_index(*args, &block); end
  def self.blocked_queries(*args, &block); end
  def self.cache_hit_rate_threshold; end
  def self.cache_hit_rate_threshold=(arg0); end
  def self.capture_query_stats(verbose: nil); end
  def self.capture_space_stats(verbose: nil); end
  def self.clean_query_stats; end
  def self.clean_space_stats; end
  def self.config; end
  def self.config_path; end
  def self.config_path=(arg0); end
  def self.connection_sources(*args, &block); end
  def self.connection_states(*args, &block); end
  def self.connection_stats(*args, &block); end
  def self.connections(*args, &block); end
  def self.cpu_usage(*args, &block); end
  def self.create_user(*args, &block); end
  def self.database_size(*args, &block); end
  def self.databases; end
  def self.db_instance_identifier(*args, &block); end
  def self.disable_query_stats(*args, &block); end
  def self.drop_user(*args, &block); end
  def self.duplicate_indexes(*args, &block); end
  def self.each_database; end
  def self.enable_query_stats(*args, &block); end
  def self.env; end
  def self.env=(arg0); end
  def self.explain(*args, &block); end
  def self.explain_timeout_sec; end
  def self.explain_timeout_sec=(arg0); end
  def self.filter_data; end
  def self.filter_data=(arg0); end
  def self.historical_query_stats_enabled?(*args, &block); end
  def self.index_caching(*args, &block); end
  def self.index_hit_rate(*args, &block); end
  def self.index_usage(*args, &block); end
  def self.indexes(*args, &block); end
  def self.invalid_constraints(*args, &block); end
  def self.invalid_indexes(*args, &block); end
  def self.kill(*args, &block); end
  def self.kill_all(*args, &block); end
  def self.kill_long_running_queries(*args, &block); end
  def self.last_stats_reset_time(*args, &block); end
  def self.long_running_queries(*args, &block); end
  def self.long_running_query_sec; end
  def self.long_running_query_sec=(arg0); end
  def self.maintenance_info(*args, &block); end
  def self.missing_indexes(*args, &block); end
  def self.password; end
  def self.pretty_size(value); end
  def self.primary_database; end
  def self.query_stats(*args, &block); end
  def self.query_stats_available?(*args, &block); end
  def self.query_stats_enabled?(*args, &block); end
  def self.query_stats_extension_enabled?(*args, &block); end
  def self.query_stats_readable?(*args, &block); end
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.rds_stats(*args, &block); end
  def self.read_iops_stats(*args, &block); end
  def self.region(*args, &block); end
  def self.relation_sizes(*args, &block); end
  def self.replica?(*args, &block); end
  def self.replication_lag(*args, &block); end
  def self.replication_lag_stats(*args, &block); end
  def self.reset_query_stats(*args, &block); end
  def self.reset_stats(*args, &block); end
  def self.running_queries(*args, &block); end
  def self.secret_access_key(*args, &block); end
  def self.sequence_danger(*args, &block); end
  def self.sequences(*args, &block); end
  def self.settings(*args, &block); end
  def self.show_migrations; end
  def self.show_migrations=(arg0); end
  def self.slow_queries(*args, &block); end
  def self.slow_query_calls; end
  def self.slow_query_calls=(arg0); end
  def self.slow_query_ms; end
  def self.slow_query_ms=(arg0); end
  def self.space_growth(*args, &block); end
  def self.spec_supported?; end
  def self.ssl_used?(*args, &block); end
  def self.stats_connection(*args, &block); end
  def self.stats_database_url; end
  def self.suggested_indexes(*args, &block); end
  def self.suggested_indexes_by_query(*args, &block); end
  def self.suggested_indexes_enabled?(*args, &block); end
  def self.system_stats_enabled?(*args, &block); end
  def self.table_caching(*args, &block); end
  def self.table_hit_rate(*args, &block); end
  def self.table_name_prefix; end
  def self.table_stats(*args, &block); end
  def self.time_zone; end
  def self.time_zone=(time_zone); end
  def self.total_connections(*args, &block); end
  def self.total_connections_threshold; end
  def self.total_connections_threshold=(arg0); end
  def self.transaction_id_danger(*args, &block); end
  def self.unused_indexes(*args, &block); end
  def self.unused_tables(*args, &block); end
  def self.use_relative_model_naming?; end
  def self.username; end
  def self.write_iops_stats(*args, &block); end
end
module PgHero::Methods
end
module PgHero::Methods::Basic
  def add_source(sql); end
  def connection; end
  def database_name; end
  def execute(sql); end
  def insert_stats(table, columns, values); end
  def quote(value); end
  def quote_ident(value); end
  def quote_table_name(value); end
  def select_all(sql, conn: nil, query_columns: nil); end
  def select_all_size(sql); end
  def select_all_stats(sql, **options); end
  def select_one(sql, conn: nil); end
  def select_one_stats(sql); end
  def server_version; end
  def server_version_num; end
  def squish(str); end
  def ssl_used?; end
  def stats_connection; end
  def table_exists?(table); end
  def unquote(part); end
  def with_transaction(lock_timeout: nil, statement_timeout: nil, rollback: nil); end
end
module PgHero::Methods::Connections
  def connection_sources; end
  def connection_states; end
  def connections; end
  def total_connections; end
end
module PgHero::Methods::Constraints
  def invalid_constraints; end
end
module PgHero::Methods::Explain
  def explain(sql); end
  def explain_safe?; end
end
module PgHero::Methods::Indexes
  def duplicate_indexes(indexes: nil); end
  def index_bloat(min_size: nil); end
  def index_caching; end
  def index_covers?(indexed_columns, columns); end
  def index_hit_rate; end
  def index_usage; end
  def indexes; end
  def invalid_indexes(indexes: nil); end
  def last_stats_reset_time; end
  def missing_indexes; end
  def reset_stats; end
  def unused_indexes(max_scans: nil, across: nil); end
end
module PgHero::Methods::Kill
  def kill(pid); end
  def kill_all; end
  def kill_long_running_queries(min_duration: nil); end
end
module PgHero::Methods::Maintenance
  def analyze(table, verbose: nil); end
  def analyze_tables(verbose: nil, min_size: nil, tables: nil); end
  def autovacuum_danger; end
  def maintenance_info; end
  def transaction_id_danger(threshold: nil, max_value: nil); end
  def vacuum_progress; end
end
module PgHero::Methods::Queries
  def blocked_queries; end
  def long_running_queries; end
  def running_queries(min_duration: nil, all: nil); end
end
module PgHero::Methods::QueryStats
  def capture_query_stats(raise_errors: nil); end
  def combine_query_stats(grouped_stats); end
  def current_query_stats(limit: nil, sort: nil, database: nil, query_hash: nil); end
  def disable_query_stats; end
  def enable_query_stats; end
  def explainable?(query); end
  def historical_query_stats(sort: nil, start_at: nil, end_at: nil, query_hash: nil); end
  def historical_query_stats_enabled?; end
  def missing_query_stats_columns; end
  def normalize_query(query); end
  def query_hash_stats(query_hash, user: nil); end
  def query_stats(historical: nil, start_at: nil, end_at: nil, min_average_time: nil, min_calls: nil, **options); end
  def query_stats_available?; end
  def query_stats_enabled?; end
  def query_stats_extension_enabled?; end
  def query_stats_readable?; end
  def query_stats_table_exists?; end
  def reset_query_stats(raise_errors: nil); end
  def slow_queries(query_stats: nil, **options); end
  def supports_query_hash?; end
end
module PgHero::Methods::Replication
  def feature_support; end
  def replica?; end
  def replicating?; end
  def replication_lag; end
  def replication_slots; end
  def with_feature_support(cache_key, default = nil); end
end
module PgHero::Methods::Sequences
  def add_sequence_attributes(sequences); end
  def parse_default_value(default_value); end
  def sequence_danger(threshold: nil, sequences: nil); end
  def sequences; end
  def unquote_ident(value); end
end
module PgHero::Methods::Settings
  def autovacuum_settings; end
  def fetch_settings(names); end
  def settings; end
  def vacuum_settings; end
end
module PgHero::Methods::Space
  def capture_space_stats; end
  def database_size; end
  def relation_sizes; end
  def relation_space_stats(relation, schema: nil); end
  def space_growth(days: nil, relation_sizes: nil); end
  def space_stats_enabled?; end
  def table_sizes; end
end
module PgHero::Methods::SuggestedIndexes
  def autoindex(create: nil); end
  def best_index(statement); end
  def best_index_helper(statements); end
  def best_index_structure(statement); end
  def column_stats(schema: nil, table: nil); end
  def parse_sort(sort_clause); end
  def parse_table(tree); end
  def parse_where(tree); end
  def row_estimates(stats, total_rows, rows_left, op); end
  def suggested_indexes(suggested_indexes_by_query: nil, **options); end
  def suggested_indexes_by_query(queries: nil, query_stats: nil, indexes: nil); end
  def suggested_indexes_enabled?; end
end
module PgHero::Methods::System
  def add_missing_data(data, start_time, end_time, period); end
  def azure_stats(metric_name, duration: nil, period: nil, offset: nil, series: nil); end
  def connection_stats(**options); end
  def cpu_usage(**options); end
  def free_space(quota, used); end
  def free_space_stats(**options); end
  def gcp_stats(metric_name, duration: nil, period: nil, offset: nil, series: nil); end
  def rds_stats(metric_name, duration: nil, period: nil, offset: nil, series: nil); end
  def read_iops_stats(**options); end
  def replication_lag_stats(**options); end
  def system_stats(metric_key, **options); end
  def system_stats_enabled?; end
  def system_stats_provider; end
  def write_iops_stats(**options); end
end
module PgHero::Methods::Tables
  def table_caching; end
  def table_hit_rate; end
  def table_stats(schema: nil, table: nil); end
  def unused_tables; end
end
module PgHero::Methods::Users
  def create_user(user, password: nil, schema: nil, database: nil, readonly: nil, tables: nil); end
  def drop_user(user, schema: nil, database: nil); end
  def random_password; end
  def table_grant_commands(privilege, tables, user); end
end
class PgHero::Database
  def access_key_id; end
  def aws_access_key_id; end
  def aws_db_instance_identifier; end
  def aws_region; end
  def aws_secret_access_key; end
  def azure_resource_id; end
  def build_connection_model; end
  def cache_hit_rate_threshold; end
  def capture_query_stats?; end
  def config; end
  def connection_model; end
  def db_instance_identifier; end
  def explain_timeout_sec; end
  def filter_data; end
  def gcp_database_id; end
  def id; end
  def index_bloat_bytes; end
  def initialize(id, config); end
  def long_running_query_sec; end
  def name; end
  def region; end
  def secret_access_key; end
  def slow_query_calls; end
  def slow_query_ms; end
  def total_connections_threshold; end
  include PgHero::Methods::Basic
  include PgHero::Methods::Connections
  include PgHero::Methods::Constraints
  include PgHero::Methods::Explain
  include PgHero::Methods::Indexes
  include PgHero::Methods::Kill
  include PgHero::Methods::Maintenance
  include PgHero::Methods::Queries
  include PgHero::Methods::QueryStats
  include PgHero::Methods::Replication
  include PgHero::Methods::Sequences
  include PgHero::Methods::Settings
  include PgHero::Methods::Space
  include PgHero::Methods::SuggestedIndexes
  include PgHero::Methods::System
  include PgHero::Methods::Tables
  include PgHero::Methods::Users
end
class PgHero::Engine < Rails::Engine
end
module Anonymous_Module_77
end
module Anonymous_Module_78
end
class PgHero::Error < StandardError
end
class PgHero::NotEnabled < PgHero::Error
end
module PgHero::HomeHelper
  def pghero_js_var(name, value); end
  def pghero_pretty_ident(table, schema: nil); end
  def pghero_remove_index(query); end
end
class PgHero::HomeController < ActionController::Base
  def _layout(lookup_context, formats); end
  def chart_library_options; end
  def check_api; end
  def connection_stats; end
  def connections; end
  def cpu_usage; end
  def default_url_options; end
  def enable_query_stats; end
  def ensure_query_stats; end
  def explain; end
  def free_space_stats; end
  def group_connections(connections, keys); end
  def group_connections_by_key(connections, key); end
  def index; end
  def index_bloat; end
  def kill; end
  def kill_all; end
  def kill_long_running_queries; end
  def live_queries; end
  def load_stats; end
  def maintenance; end
  def queries; end
  def redirect_backward(options = nil); end
  def relation_space; end
  def render_text(message); end
  def replication_lag_stats; end
  def reset_query_stats; end
  def self.__callbacks; end
  def self._helpers; end
  def self._layout; end
  def self._layout_conditions; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def set_database; end
  def set_query_stats_enabled; end
  def set_show_details; end
  def set_suggested_indexes(min_average_time = nil, min_calls = nil); end
  def show_query; end
  def space; end
  def system; end
  def system_params; end
  def tune; end
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_79
end
module Anonymous_Module_79
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_77
  extend Anonymous_Module_78
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_77
  include Anonymous_Module_78
end