# This is an autogenerated file for dynamic methods in Session
# Please rerun bundle exec rake rails_rbi:models[Session] to regenerate.

# typed: strong
module Session::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Session::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Date) }
  def date; end

  sig { params(value: Date).void }
  def date=(value); end

  sig { returns(T::Boolean) }
  def date?; end

  sig { returns(T.untyped) }
  def id; end

  sig { params(value: T.untyped).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(T.untyped) }
  def team_id; end

  sig { params(value: T.untyped).void }
  def team_id=(value); end

  sig { returns(T::Boolean) }
  def team_id?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Session::GeneratedAssociationMethods
  sig { returns(::User::ActiveRecord_Associations_CollectionProxy) }
  def participants; end

  sig { returns(T::Array[Integer]) }
  def participant_ids; end

  sig { params(value: T::Enumerable[::User]).void }
  def participants=(value); end

  sig { returns(::Participation::ActiveRecord_Associations_CollectionProxy) }
  def participations; end

  sig { returns(T::Array[Integer]) }
  def participation_ids; end

  sig { params(value: T::Enumerable[::Participation]).void }
  def participations=(value); end

  sig { returns(::Team) }
  def team; end

  sig { params(value: ::Team).void }
  def team=(value); end
end

module Session::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Session]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Session]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Session]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Session)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Session) }
  def find_by_id!(id); end
end

class Session < ApplicationRecord
  include Session::GeneratedAttributeMethods
  include Session::GeneratedAssociationMethods
  extend Session::CustomFinderMethods
  extend Session::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Session::ActiveRecord_Relation, Session::ActiveRecord_Associations_CollectionProxy, Session::ActiveRecord_AssociationRelation) }

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def self.current(*args); end
end

class Session::ActiveRecord_Relation < ActiveRecord::Relation
  include Session::ActiveRelation_WhereNot
  include Session::CustomFinderMethods
  include Session::QueryMethodsReturningRelation
  Elem = type_member(fixed: Session)

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def current(*args); end
end

class Session::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Session::ActiveRelation_WhereNot
  include Session::CustomFinderMethods
  include Session::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Session)

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def current(*args); end
end

class Session::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Session::CustomFinderMethods
  include Session::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Session)

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def current(*args); end

  sig { params(records: T.any(Session, T::Array[Session])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Session, T::Array[Session])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Session, T::Array[Session])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Session, T::Array[Session])).returns(T.self_type) }
  def concat(*records); end
end

module Session::QueryMethodsReturningRelation
  sig { returns(Session::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Session::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Session::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Session::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Session::QueryMethodsReturningAssociationRelation
  sig { returns(Session::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Session::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Session::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Session::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Session::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end