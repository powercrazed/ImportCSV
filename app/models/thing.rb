class Thing < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Thing.create! row.to_hash
    end
  end
end
