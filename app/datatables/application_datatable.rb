# frozen_string_literal: true

class ApplicationDatatable < AjaxDatatablesRails::ActiveRecord
  def initialize(params, opts = {})
    @data = opts[:data]
    @klass = opts[:klass]
    @usuario = opts[:usuario]
    @kwargs = opts[:kwargs]
    @metodo = opts[:metodo] || 'datatable_query'
    super
  end

  def view_columns
    @view_columns ||= @data
  end

  def data
    records.map do |record|
      r_data = { DT_RowId: record.id }
      @data.each do |d|
        r_data[d[0]] = eval('record.' + d[1][:view])
      end
      r_data
    end
  end

  def get_raw_records
    if @kwargs.nil?
      @klass.send(@metodo, @usuario)
    else
      @klass.send(@metodo, @usuario, @kwargs)
    end
  end
end
