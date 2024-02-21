module ApplicationHelper
  def sortable(column, title = nil)
    order = 'ascending'
    if (params[:key] == column || session[:key] == column) && params[:order].presence
      order = params[:order] == 'descending' ? 'ascending' : 'descending'
    elsif (params[:key] == column || session[:key] == column) && session[:order].presence
      order = session[:order]
      if column == session[:key]
        order = session[:order] == 'descending' ? 'ascending' : 'descending'
      end
    end
    title ||= column.titleize
    if params[:key] == column || session[:key] == column
      title += if order == 'ascending'
                 '  ↑'
               else
                 '  ↓'
               end
    end

    button_to(title, { key: column, order: order }, method: :get, params: { key: column, order: order })
  end

  def column_class(column)
    column == params[:key] || column == session[:key] ? 'key_column' : 'default_column'
  end
end