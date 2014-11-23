class Notebook < ActiveRecord::Base
	has_many :notes
	has_many :audionotes
end
