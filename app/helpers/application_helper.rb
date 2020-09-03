module ApplicationHelper
  def page_title(page_title = '', admin = false)
    base_title = if admin
                   'Zero Calorie(管理画面)'
                 else
                   'Zero Calorie'
                 end

    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end

  def flash_class(level)
    case level
    when 'success' then 'ui success message'
    when 'danger' then 'ui error message'
    when 'notice' then 'ui blue message'
    end
  end
end
