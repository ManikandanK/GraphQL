class Author < ApplicationRecord

  validates :last_name, presence: true

  def full_name
    first_name + last_name
  end

  def coordenate
    [rand(1000), rand(1000)]
  end

  def publication_years
    [1,2,3,4]
  end
end
