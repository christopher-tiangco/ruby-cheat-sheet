class Temp
  def main
    puts [].any?
  end
  
  def notice_types?
    #%w[email sms postal]
    %w[postal printed manual]
  end
end

Temp.new.main