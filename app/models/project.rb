class Project < ApplicationRecord
	# Sort portfolio projects by reverse chronological order
	scope :recent, -> { order(created_at: :desc) }

	# Retrieve all featured projects
	scope :featured, -> { where(featured: :true) }
end
