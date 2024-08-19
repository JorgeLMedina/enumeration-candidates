# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    @candidates.find { |candidate| candidate[:id] == id }
  end
  
  def experienced?(candidate)
    # Your code Here
    candidate[:years_of_experience] >= 2
  end



  def experienced(candidate)
    candidate[:years_of_experience] > 0
  end

  def has_minimum_github_points(candidate)
    candidate[:github_points] >= 100
  end

  def knows_required_languajes(candidate)
    return false if candidate[:languajes].nil?
    candidate[:languajes].include?('Ruby') || candidate[:languajes].include?('Python')
  end

  def applied_recently(candidate)
    candidate[:date_applied] >= 15.days.ago.to_date
  end

  def above_minimum_age(candidate)
    candidate[:age] > 17
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    qualified = []
    candidates.each do |candidate|
      if experienced(candidate) && 
         has_minimum_github_points(candidate) &&
         knows_required_languajes(candidate) &&
         applied_recently(candidate) &&
         above_minimum_age(candidate)
        qualified.push(candidate)
      end
    end
    qualified
  end
  
  # More methods will go below

  def ordered_by_qualifications(candidates)
    candidates.sort_by do |candidate|
      [-candidate[:years_of_experience], -candidate[:github_points]]
    end
  end