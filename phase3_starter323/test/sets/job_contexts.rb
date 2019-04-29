module Contexts
  module JobContexts
    def create_jobs
      @cashier = FactoryBot.create(:job)
      @mopping = FactoryBot.create(:job, name: "Mopping")
      @making  = FactoryBot.create(:job, name: "Ice cream making")
      @mover   = FactoryBot.create(:job, name: "Mover", active: false)
    end

    def remove_jobs
      @cashier.delete
      @mopping.delete
      @making.delete
      @mover.delete
    end
  end
end