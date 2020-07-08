# This is an autogenerated file for dynamic methods in ActiveAdmin::Comment
# Please rerun bundle exec rake rails_rbi:models[ActiveAdmin::Comment] to regenerate.

# typed: strong
module ActiveAdmin::Comment::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ActiveAdmin::Comment::GeneratedAttributeMethods
  sig { returns(T.nilable(Integer)) }
  def author_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def author_id=(value); end

  sig { returns(T::Boolean) }
  def author_id?; end

  sig { returns(T.nilable(String)) }
  def author_type; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def author_type=(value); end

  sig { returns(T::Boolean) }
  def author_type?; end

  sig { returns(String) }
  def body; end

  sig { params(value: T.any(String, Symbol)).void }
  def body=(value); end

  sig { returns(T::Boolean) }
  def body?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(String) }
  def namespace; end

  sig { params(value: T.any(String, Symbol)).void }
  def namespace=(value); end

  sig { returns(T::Boolean) }
  def namespace?; end

  sig { returns(T.nilable(Integer)) }
  def resource_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def resource_id=(value); end

  sig { returns(T::Boolean) }
  def resource_id?; end

  sig { returns(T.nilable(String)) }
  def resource_type; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def resource_type=(value); end

  sig { returns(T::Boolean) }
  def resource_type?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module ActiveAdmin::Comment::GeneratedAssociationMethods
  sig { returns(T.untyped) }
  def author; end

  sig { params(value: T.untyped).void }
  def author=(value); end

  sig { returns(T.untyped) }
  def resource; end

  sig { params(value: T.untyped).void }
  def resource=(value); end
end

module ActiveAdmin::Comment::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ActiveAdmin::Comment]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ActiveAdmin::Comment]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ActiveAdmin::Comment]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(ActiveAdmin::Comment)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ActiveAdmin::Comment) }
  def find_by_id!(id); end
end

class ActiveAdmin::Comment < ActiveRecord::Base
  include ActiveAdmin::Comment::GeneratedAttributeMethods
  include ActiveAdmin::Comment::GeneratedAssociationMethods
  extend ActiveAdmin::Comment::CustomFinderMethods
  extend ActiveAdmin::Comment::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(ActiveAdmin::Comment::ActiveRecord_Relation, ActiveAdmin::Comment::ActiveRecord_Associations_CollectionProxy, ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
end

module ActiveAdmin::Comment::QueryMethodsReturningRelation
  sig { returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ActiveAdmin::Comment::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ActiveAdmin::Comment::QueryMethodsReturningAssociationRelation
  sig { returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveAdmin::Comment::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveAdmin::Comment::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ActiveAdmin::Comment::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class ActiveAdmin::Comment::ActiveRecord_Relation < ActiveRecord::Relation
  include ActiveAdmin::Comment::ActiveRelation_WhereNot
  include ActiveAdmin::Comment::CustomFinderMethods
  include ActiveAdmin::Comment::QueryMethodsReturningRelation
  Elem = type_member(fixed: ActiveAdmin::Comment)
end

class ActiveAdmin::Comment::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ActiveAdmin::Comment::ActiveRelation_WhereNot
  include ActiveAdmin::Comment::CustomFinderMethods
  include ActiveAdmin::Comment::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ActiveAdmin::Comment)
end

class ActiveAdmin::Comment::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ActiveAdmin::Comment::CustomFinderMethods
  include ActiveAdmin::Comment::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ActiveAdmin::Comment)

  sig { params(records: T.any(ActiveAdmin::Comment, T::Array[ActiveAdmin::Comment])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ActiveAdmin::Comment, T::Array[ActiveAdmin::Comment])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ActiveAdmin::Comment, T::Array[ActiveAdmin::Comment])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ActiveAdmin::Comment, T::Array[ActiveAdmin::Comment])).returns(T.self_type) }
  def concat(*records); end
end
