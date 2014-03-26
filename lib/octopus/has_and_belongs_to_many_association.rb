module Octopus::HasAndBelongsToManyAssociation
  def self.included(base)
    base.sharded_methods :insert_record
  end
end

if Octopus.rails3?
  ActiveRecord::Associations::HasAndBelongsToManyAssociation.send(:include, Octopus::HasAndBelongsToManyAssociation)
else
  ActiveRecord::Associations::HasManyThroughAssociation.send(:include, Octopus::HasAndBelongsToManyAssociation)
end
