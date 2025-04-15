namespace :pages do
  desc "Runs webscrape for all pages"
  task run_check: :environment do
    Page.find_each(&:check_and_notify)
  end
end