class RandomTableOption < ApplicationRecord
  belongs_to :random_table
  after_initialize :set_defaults
  after_save :update_table_die

  def update_table_die
    random_table.set_die
  end

  def set_defaults
    self.option_end ||= self.option_start
  end

  def range
    option_start..option_end
  end

  def contains?(num)
    range.include? num    
  end
end
