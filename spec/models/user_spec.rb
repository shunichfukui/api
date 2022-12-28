require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Relation' do
    subject { build :user }
    it '正常値' do
      is_expected.to have_many(:portfolios)
    end
  end
  describe 'Validation' do
    subject { build :user }
    it '正常値' do
      is_expected.to validate_presence_of(:name)
      is_expected.to validate_length_of(:name).is_at_most(50)
      is_expected.to validate_length_of(:email).is_at_most(254)
      is_expected.to validate_presence_of(:gender)
    end
  end
  describe 'Enum' do
    subject { build :user }
    it '正常値' do
      is_expected.to define_enum_for(:status).with_values(normal: 0, deleted: 99).with_prefix(:status)
      is_expected.to define_enum_for(:gender).with_values(no_gender: 0, male: 1, female: 2).with_prefix(:gender)
    end
  end
end
