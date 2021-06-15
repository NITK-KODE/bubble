class Project < ApplicationRecord
    has_many :project_members , dependent: :destroy
    has_many :members , through: :project_members

    
def future?()
    projects = [:future , :ongoing , :completed]
    projects[project_type] == :future
end

def ongoing?
    projects = [:future , :ongoing , :completed]
    projects[project_type] == :ongoing
end
 
 def completed?
    projects = [:future , :ongoing , :completed]
    projects[project_type] == :completed
end
 
def self.get_project_types
    projects = [:future , :ongoing , :completed]
end
end
