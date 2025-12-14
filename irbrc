# frozen_string_literal: true

class String
  def red;         "\e[31m#{self}\e[0m" end
  def cyan;        "\e[36m#{self}\e[0m" end
  def red_bold;    "\e[1;31m#{self}\e[0m" end
  def green;       "\e[32m#{self}\e[0m" end
  def green_bold;  "\e[1;32m#{self}\e[0m" end
  def yellow;      "\e[33m#{self}\e[0m" end
  def yellow_bold; "\e[1;33m#{self}\e[0m" end
  def blue;        "\e[34m#{self}\e[0m" end
  def blue_bold;   "\e[1;34m#{self}\e[0m" end
end

if defined? Rails
  project_name = File.basename(Dir.pwd).cyan
  environment  = ENV['RAILS_ENV'] || Rails.env
  environment  = case environment
                 when 'development' then environment.green
                 when 'test' then environment.yellow
                 else
                   environment.red
                 end

  prompt = "#{project_name}[#{environment}]"
  IRB.conf[:PROMPT] ||= {}
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{prompt} %03n > ",
    :PROMPT_S => "#{prompt} %03n * ",
    :PROMPT_C => "#{prompt} %03n ? " ,
    :RETURN => "=> %s\n"
  }

  IRB.conf[:PROMPT_MODE] = :RAILS
                   
  # COPY START
  # Copy arg into clipboard
  def pbcopy(res)
    if clipboard_supported?
      IO. popen(clipboard_copy_cmd, 'w') { it.puts res }
      puts "Copied!"
    else
      puts "Clipboard copy not supported on this OS."
    end
  end

  def clipboard_copy_cmd
    case RbConfig::CONFIG['host_os']
    when /mswin|windows/i then "clip"
    when /linux|arch/i    then "xclip -selection clipboard"
    when /darwin/i        then "pbcopy"
    else
      nil
    end
  end

  def clipboard_supported? = !!clipboard_copy_cmd
  # COPY END
end
