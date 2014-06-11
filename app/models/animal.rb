class Animal < ActiveRecord::Base

  belongs_to :trainer

  def self.trained
    where(trained: true)
  end

  def self.cats
    where('LOWER(species) = ?', 'cat')
  end

  def trainers_name
    if trainer.present?
      trainer.name
    else
      'I have no trainer'
    end
  end
end
