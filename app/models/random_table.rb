class RandomTable < ApplicationRecord
  has_many :random_table_options
  has_many :options, foreign_key: 'random_table_id', class_name: 'RandomTableOption'
  
  def set_die
    self.update_attribute(:die, options.maximum(:option_end))
  end

  def find_option_num(num)
    options.find_by('option_start <= :num AND option_end >= :num', num: num)
  end
end
