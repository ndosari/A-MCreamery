class User < ApplicationRecord
   
    # Relationships
    belongs_to :employee
    has_secure_password
    
    # Validations
    validates_uniqueness_of :email, case_sensitive: false
    validates_format_of :email, :with => /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, :message => "is not a valid format"

    
    def role?(authorized_role)
        return false if self.employee.nil?
        return false if self.employee.role.nil?
        self.employee.role.downcase.to_sym == authorized_role
    end
end
