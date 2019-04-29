module Contexts
  module StoreFlavorContexts
    def create_store_flavors
      @chocolate_cmu      = FactoryBot.create(:store_flavor, flavor: @chocolate, store: @cmu)
      @chocolate_oakland  = FactoryBot.create(:store_flavor, flavor: @chocolate, store: @oakland)
      @salted_caramel_cmu = FactoryBot.create(:store_flavor, flavor: @salted_caramel, store: @cmu)
      @strawberry_cmu     = FactoryBot.create(:store_flavor, flavor: @strawberry, store: @cmu)
      @strawberry_oakland = FactoryBot.create(:store_flavor, flavor: @strawberry, store: @oakland)
    end
    
    def remove_store_flavors
      @chocolate_cmu.destroy
      @chocolate_oakland.destroy
      @salted_caramel_cmu.destroy
      @strawberry_cmu.destroy
      @strawberry_oakland.destroy
    end
  end
end