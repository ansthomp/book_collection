#location: spec/feature/integration_spec.rb

require 'rails_helper'

#
RSpec.describe 'Book', type: :feature do
  scenario 'valid input title' do
    visit new_book_path
    fill_in "book[title]",  with: 'harry potter'
    click_on 'Create Book'
    expect(page).to have_content('Book created!')
  end

  scenario 'no title' do
    visit new_book_path
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end

  scenario 'valid input author' do
    visit new_book_path
    fill_in "book[title]",  with: 'harry potter'
    fill_in "book[author]",  with: 'harry potter'
    click_on 'Create Book'
    expect(page).to have_content('Book created!')
  end

  scenario 'no author' do
    visit new_book_path
    fill_in "book[title]",  with: 'harry potter'
    click_on 'Create Book'
    expect(page).to have_content("Book created!")
  end

  scenario 'valid input price' do
    visit new_book_path
    fill_in "book[title]",  with: 'harry potter'
    fill_in "book[price]",  with: 12.78
    click_on 'Create Book'
    expect(page).to have_content('Book created!')
  end

  scenario 'no price' do
    visit new_book_path
    fill_in "book[title]",  with: 'harry potter'
    click_on 'Create Book'
    expect(page).to have_content("Book created!")
  end

  scenario 'valid input date' do
    visit new_book_path
    fill_in "book[title]",  with: 'harry potter'
    fill_in "book[publishedDate]",  with: '01/01/2001'
    click_on 'Create Book'
    expect(page).to have_content('Book created!')
  end

  scenario 'no date' do
    visit new_book_path
    fill_in "book[title]",  with: 'harry potter'
    click_on 'Create Book'
    expect(page).to have_content("Book created!")
  end

end
