module Slug
  module InstanceMethods
    def slug
      username.downcase.gsub(" ", "-")
    end
  end 

  module ClassMethods
    def find_by_slug(slug)
      self.all.find do |obj|
        obj.username.downcase == slug.gsub("-", " ") ||
        obj.username.downcase == slug
      end
    end
  end
end