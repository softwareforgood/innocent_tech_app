# frozen_string_literal: true

if Rails.env.development?
  load(Rails.root.join('db/seeds/classroom_setup.rb'),
       Rails.root.join('db/seeds/focus_setup.rb'))
end
