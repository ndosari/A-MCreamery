module Contexts
  module ShiftContexts
    
    def create_shifts
      @assign_ed_1    = FactoryBot.create(:assignment, employee: @ed, store: @cmu, start_date: 1.month.ago.to_date, end_date: nil, pay_level: 2)
      @ed_shift1      = FactoryBot.create(:shift, assignment: @assign_ed_1)
      @ed_shift2      = FactoryBot.create(:shift, assignment: @assign_ed_1, date: 1.day.from_now.to_date)
      @ed_shift3      = FactoryBot.create(:shift, assignment: @assign_ed_1, date: 2.days.from_now.to_date)
      @ben_shift1     = FactoryBot.create(:shift, assignment: @promote_ben)
      @ben_shift2     = FactoryBot.create(:shift, assignment: @promote_ben, date: 1.day.from_now.to_date)
      @kathryn_shift1 = FactoryBot.create(:shift, assignment: @assign_kathryn)
      @cindy_shift1   = FactoryBot.create(:shift, assignment: @assign_cindy, date: 2.days.from_now.to_date)
    end

    def remove_shifts
      @assign_ed_1.delete
      @ed_shift1.delete     
      @ed_shift2.delete
      @ed_shift3.delete
      @ben_shift1.delete
      @ben_shift2.delete
      @kathryn_shift1.delete
      @cindy_shift1.delete
    end



  end
end