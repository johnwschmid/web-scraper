class Page < ApplicationRecord
  belongs_to :last_result, class_name: 'Result'
  has_many :results

  def check_and_notify
    run_check!
    last_result.notify
  end

  def run_check!
    s = Scraper.new(url)
    res = case check_type
    when 'text'
      s.text(selector).downcase == match_text.downcase
    when 'exists'
      s.present?(selector)
    when 'not_exists'
      !s.present?(selector)
    end
    result = results.create(success: res)
    update(last_result: result)
  end
end
