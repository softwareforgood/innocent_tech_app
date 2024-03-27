# frozen_string_literal: true

Focuses = [
  { name: 'Connected' }, { name: 'Respected' }, 
  { name: 'Belonging' }, { name: 'Accepted' }, 
  { name: 'Seen/Heard' }, { name: 'Understood' }, 
  { name: 'Cared For' }, { name: 'Supported' }
]

  Focuses.each do |focus|
    Focus.create(name: focus[:name])
    puts 'Seeded Focus Model'
  endgit

