module ApplicationHelper

  def arrow_for_comparison(starting, ending)
    arrow_percentage((ending - starting).to_f / starting)
  end

  def arrow_percentage(percentage)
    direction = percentage > 0 ? 'up' : 'down'
    content_tag(:div, '', class: "icon flaticon stroke arrow-#{direction}-2") +
    number_to_percentage(percentage.abs * 100, precision: 0)
  end

  def large_currency(number)
    number_to_currency(number/1000, precision: 1) + 'k'
  end
end
