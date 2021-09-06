# frozen_string_literal: true

require 'rspec'
require 'faker'
require_relative '../lib/human'

describe Human do
  let(:pet) { double('pet') }
  let(:job) { double('job') }
  let(:human) { described_class.new(Faker::Name, pet, job, 320) }

  it 'feeds pet' do
    expect(pet).to receive(:hungry?) { true }
    expect(pet).to receive(:feed) { 30 }

    expect(human.feed_pet).to eq(30)
  end

  it 'receives salary' do
    expect(job).to receive(:get_salary) { 680 }
    human.receive_salary
    expect(human.money).to eq(1000)
  end
end
