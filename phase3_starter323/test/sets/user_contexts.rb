module Contexts
  module UserContexts
    # Context for users; assumes initial context for employees already set 
    def create_users
      @kathryn_user = FactoryBot.create(:user, employee:@kathryn, email: "kathryn@example.com")
      @cindy_user = FactoryBot.create(:user, employee:@cindy, email: "cindy@example.com")
      @ben_user = FactoryBot.create(:user, employee:@ben, email: "ben@example.com")
      @alex_user = FactoryBot.create(:user, employee:@alex, email: "alex@example.com")
      @ed_user = FactoryBot.create(:user, employee: @ed, email: "ed@example.com")
    end
    
    def remove_users
      @kathryn_user.destroy
      @cindy_user.destroy
      @ben_user.destroy
      @alex_user.destroy
      @ed_user.destroy
    end

  end
end