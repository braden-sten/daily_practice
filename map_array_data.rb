require 'rspec'

starters = [
  'PG',
  'SG',
  'SF',
  'PF',
  'C'
]

jazz = [
  'Rubio',
  'Johnson',
  'Hood',
  'Favors',
  'Gobert'
]

spurs = [
  'Parker',
  'Green',
  'Leonard',
  'Aldridge',
  'Gasol'
]

# p starters.zip(jazz, spurs) 

def position_filter(starters, *data)
  starters.zip(*data)	
end

p position_filter(starters, jazz, spurs)

describe 'Position Filter' do
  it 'lines up players with their positions' do
    test_starters =  ['PG', 'SF', 'C']
    test_team = ['Starting Point Guard', 'Starting Small Forward', 'Starting Center']
    expect(position_filter(test_starters, test_team).first).to eq(['PG', 'Starting Point Guard'])
  end
end