module DatasetsHelper
  require 'csv'

  def CSV_To_JSON(file_path)
    lines = CSV.open(file_path).readlines
    keys = lines.delete lines.first
    data = lines.map do |values|
      is_int(values) ? values.to_i : values.to_s
      Hash[keys.zip(values)]
    end
    return data
  end

  def FileContents(file_path)


    lines = CSV.read(file_path).map do |row|
      row.to_csv(:col_sep => ",")
      #row.to_csv(:row_sep => "\n")
    end
    puts lines
    #lines = CSV.open(file_path).readlines
#    lines = CSV.open(file_path, row_sep: "\r\n").readlines
#    puts lines
    return lines
  end
end
