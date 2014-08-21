describe Rating do
  it { should validate_presence_of :number }
  it { should belong_to :recipe }
end
