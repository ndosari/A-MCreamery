module Contexts
  module FlavorContexts
    
    def create_flavors
      @vanilla    = FactoryBot.create(:flavor, name: "Vanilla", active: false)
      @chocolate  = FactoryBot.create(:flavor, name: "Chocolate")
      @strawberry = FactoryBot.create(:flavor, name: "Strawberry")
      @salted_caramel = FactoryBot.create(:flavor, name: "Salted Caramel")
    end
    
    def remove_flavors
      @vanilla.destroy
      @chocolate.destroy
      @strawberry.destroy
      @salted_caramel.destroy
    end
  end
end