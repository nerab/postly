module Postly
  
  class Site < Connection
    many :posts
    attr_accessor *SITE_ATTRS
    
    # URL
    # http://posterous.com/api/getsites
    # Fields
    # None
    def self.find
      conform get("/getsites", defaults)
    end
    
    # for readability
    def self.all
      find
    end
    
    def self.first
      find.first
    end
    
    def self.last
      find.last
    end
    
  end
end