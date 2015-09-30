class User < ActiveRecord::Base
    has_secure_password
    
    has_and_belongs_to_many :roles
    
    def admin?
       self.role == 'admin' 
    end
end
