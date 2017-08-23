# frozen_string_literal: true

module ApplicationHelper
  APP_NAME = 'Rails Sample App'

  def page_title
    base_title = APP_NAME
    return base_title if @title.blank?
    "#{base_title} | #{@title}"
  end

  def flash_messages(_opts = {})
    flash.each do |msg_type, message|
      next unless message.is_a? String
      concat(content_tag(:div, message, class: "alert alert-#{bootstrap_class_for(msg_type.to_sym)}") do
        concat content_tag(:a, 'x', class: 'close', data: { dismiss: 'alert' })
        concat raw(message)
      end)
    end
    nil
  end

  def bootstrap_class_for(flash_type)
    { success: 'success',
      error: 'danger',
      alert: 'warning',
      notice: 'info' }[flash_type] || flash_type.to_s
  end
end
