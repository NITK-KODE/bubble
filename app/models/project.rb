class Project < ApplicationRecord
    
def future?()
    projects = [:future , :ongoing , :completed]
    projects[self.project_type] == :future
end

def ongoing?
    projects = [:future , :ongoing , :completed]
    projects[self.project_type] == :ongoing
end
 
 def completed?
    projects = [:future , :ongoing , :completed]
    projects[self.project_type] == :completed
end
 
end
