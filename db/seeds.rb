# frozen_string_literal: true

load(Rails.root.join('db/seeds/classroom_setup.rb'),
Rails.root.join('db/seeds/focus_setup.rb') 
) if Rails.env.development?




