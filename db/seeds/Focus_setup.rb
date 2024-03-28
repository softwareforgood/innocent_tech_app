# frozen_string_literal: true

Focuses = [
  { name: 'Connected' }, { name: 'Respected' }, 
  { name: 'Belonging' }, { name: 'Accepted' }, 
  { name: 'Seen/Heard' }, { name: 'Understood' }, 
  { name: 'Cared For' }, { name: 'Supported' }
]

  Focuses.each do |focus|
    Focus.find_or_create_by(name: focus[:name])
  end

  puts 'Seeded Focus Model'
