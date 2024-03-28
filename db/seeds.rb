# frozen_string_literal: true

load(Rails.root.join('db/seeds/classroom_setup.rb')) if Rails.env.development?

KnowingCategory.find_or_create_by(name: 'Interest', descriptions: 'Interests/Passions', color: '#32b021', active: true)
KnowingCategory.find_or_create_by(name: 'Talents', descriptions: 'Talents/Skills', color: '#0c87cf', active: true)
KnowingCategory.find_or_create_by(name: 'Dislikes', descriptions: 'Dislikes/Challenges', color: 'ffba08', active: true)
KnowingCategory.find_or_create_by(name: 'Family', descriptions: 'Family/Home', color: '#642ca9', active: true)
KnowingCategory.find_or_create_by(name: 'Friends', descriptions: 'Friends/Peers', color: '#f75c03', active: true)
KnowingCategory.find_or_create_by(name: 'Beliefs', descriptions: 'Beliefs/Thoughts', color: '#d00000', active: true)
