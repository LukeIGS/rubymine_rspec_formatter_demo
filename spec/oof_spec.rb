RSpec.describe 'Raising Expectations in hook and example' do
  it 'example raise' do
    expect('foo').to be 'bar'
  end

  after do
    expect('baz').to be 'blutz'
  end
end
