# This is an autogenerated file for dynamic methods in SlackAccount
# Please rerun bundle exec rake rails_rbi:models[SlackAccount] to regenerate.

# typed: strong
module SlackAccount::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module SlackAccount::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(String) }
  def id; end

  sig { params(value: T.any(String, Symbol)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(String) }
  def slack_id; end

  sig { params(value: T.any(String, Symbol)).void }
  def slack_id=(value); end

  sig { returns(T::Boolean) }
  def slack_id?; end

  sig { returns(String) }
  def slack_name; end

  sig { params(value: T.any(String, Symbol)).void }
  def slack_name=(value); end

  sig { returns(T::Boolean) }
  def slack_name?; end

  sig { returns(String) }
  def slack_team; end

  sig { params(value: T.any(String, Symbol)).void }
  def slack_team=(value); end

  sig { returns(T::Boolean) }
  def slack_team?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end

  sig { returns(String) }
  def user_id; end

  sig { params(value: T.any(String, Symbol)).void }
  def user_id=(value); end

  sig { returns(T::Boolean) }
  def user_id?; end
end

module SlackAccount::GeneratedAssociationMethods
  sig { returns(::User) }
  def user; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def build_user(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_user(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_user!(*args, &block); end

  sig { params(value: ::User).void }
  def user=(value); end
end

module SlackAccount::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[SlackAccount]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[SlackAccount]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[SlackAccount]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(SlackAccount)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(SlackAccount) }
  def find_by_id!(id); end
end

class SlackAccount < ApplicationRecord
  include SlackAccount::GeneratedAttributeMethods
  include SlackAccount::GeneratedAssociationMethods
  extend SlackAccount::CustomFinderMethods
  extend SlackAccount::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(SlackAccount::ActiveRecord_Relation, SlackAccount::ActiveRecord_Associations_CollectionProxy, SlackAccount::ActiveRecord_AssociationRelation) }
end

module SlackAccount::QueryMethodsReturningRelation
  sig { returns(SlackAccount::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(SlackAccount::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SlackAccount::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: SlackAccount::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module SlackAccount::QueryMethodsReturningAssociationRelation
  sig { returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(SlackAccount::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SlackAccount::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: SlackAccount::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class SlackAccount::ActiveRecord_Relation < ActiveRecord::Relation
  include SlackAccount::ActiveRelation_WhereNot
  include SlackAccount::CustomFinderMethods
  include SlackAccount::QueryMethodsReturningRelation
  Elem = type_member(fixed: SlackAccount)
end

class SlackAccount::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include SlackAccount::ActiveRelation_WhereNot
  include SlackAccount::CustomFinderMethods
  include SlackAccount::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: SlackAccount)
end

class SlackAccount::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include SlackAccount::CustomFinderMethods
  include SlackAccount::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: SlackAccount)

  sig { params(records: T.any(SlackAccount, T::Array[SlackAccount])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(SlackAccount, T::Array[SlackAccount])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(SlackAccount, T::Array[SlackAccount])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(SlackAccount, T::Array[SlackAccount])).returns(T.self_type) }
  def concat(*records); end
end
