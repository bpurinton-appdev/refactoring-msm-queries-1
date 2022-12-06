# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    the_films = Movie.where({ :director_id => self.id }).order({ :year => :asc })
    return the_films
  end

  # 1-N associations
  #   Director => Movie
  #   Movie => Character
  #   Actor => Character
end
