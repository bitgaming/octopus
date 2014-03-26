module Octopus::HasAndBelongsToManyAssociation
  def self.included(base)
    base.sharded_methods :insert_record
  end
end

ActiveRecord::Associations::HasManyThroughAssociation.send(:include, Octopus::HasAndBelongsToManyAssociation)
