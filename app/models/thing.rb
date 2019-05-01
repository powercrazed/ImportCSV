class Thing < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      thing_hash = row.to_hash
      thing = Thing.where(name: thing_hash["name"])

      # create if not in database
      if thing.count == 0
        Thing.create! thing_hash
      end
    end
  end
end
