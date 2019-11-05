# frozen_string_literal: true

require 'hello_world'

describe 'hello_world' do
  it 'returns a string' do
    expect(hello_world).to be_a(String)
  end

  it 'returns the string "Hello, world!"' do
    expect(hello_world).to eq('Hello, world!')
  end
end
