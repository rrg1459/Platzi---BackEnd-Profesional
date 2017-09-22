require_relative './clase23-testing-holamundo'

RSpec.describe 'hola mundo' do
  it 'llamar metodo' do
    expect(hola_mundo).to eq 'Hola mundo'
  end
end
