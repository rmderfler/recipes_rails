
describe Recipe do
  it { should validate_presence_of :title }
  it { should have_and_belong_to_many :tags }
  it { should have_many :ratings }
end


