
describe Recipe do
  it { should validate_presence_of :title }
  it { should have_many :tags }
  it { should have_many :ratings }
end


