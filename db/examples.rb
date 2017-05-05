# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Movie.create([
  {
    name: "Frozen",
    year_released: 2013,
    mpaa_rating: "G",
    user_rating: 9,
    length: 100,
    ownership_status: true,
    ownership_type: "iTunes",
    last_viewing: nil,
    times_watched: nil,
    user: nil
  },
  {
    name: "Moana",
    year_released: 2016,
    mpaa_rating: "G",
    user_rating: 8,
    length: 120,
    ownership_status: true,
    ownership_type: "iTunes",
    last_viewing: nil,
    times_watched: nil,
    user: nil
  }
  ])
