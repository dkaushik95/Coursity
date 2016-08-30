json.extract! course, :id, :c_name, :price, :description, :prof, :units, :created_at, :updated_at
json.url course_url(course, format: :json)