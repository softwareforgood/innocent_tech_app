# frozen_string_literal: true

load(Rails.root.join('db/seeds/classroom_setup.rb')) if Rails.env.development?


Focus.create!([{
    name: 'Connected'
    active: true
},
{   name: 'Belonging'
    active: true
},
{   name: 'Understood'
    active: true
},
{   name: 'Cared For'
    active: true
},
{   name: 'Accepted'
    active: true
},
{   name: 'Seen/Heard'
    active: true
},
{   name: 'Supported'
    active: true
},
{   name: 'Respected'
    active: true
}])

puts 'Seeded Focus Model'
