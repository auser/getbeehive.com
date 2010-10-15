require 'uv'

module CodeHelper
  def clean(str, indent=2)
    str.split(/\n/).collect{ |line| line.gsub(/^\s{#{indent}}/, '-')}.join("\n")
  end

  def file_to_code(filename="", language="ruby", theme="blackboard")
    code_to_syntax(open(::File.join(File.dirname(__FILE__), "..", "examples", filename)).read, language, theme)
  end
  def curl_to_syntax(curl="", filename="", language="shell-unix-generic", theme="blackboard")
    code_to_syntax(
      "$> #{curl}\n\n" + open(::File.join(File.dirname(__FILE__), "..", "examples", "curls", "#{filename}.sh")).read, 
      language, theme
    )
  end
  def wrap_line(line, length=35)
    if line.length > length
      line[0..length] + "\n" + wrap_line(line[length+1..-1], length)
    else
      line
    end
  end
  def code_to_syntax(code="", language="ruby", theme="blackboard")
     Uv.parse(code, 'xhtml', language, false, theme)
  end
  def code_box(language="ruby", theme="blackboard", &block)
    code_to_syntax(find_and_preserve(capture_haml(&block).chomp), language, theme)
  end
  def dl_code_to_syntax(title="", code="", language="ruby", theme="blackboard")
    <<-EOE
    <dl>
      <dt>#{title}</dt>
      <dd>#{code_to_syntax(code)}</dd>
    </dl>
    EOE
  end
  def dir_to_tabs(dir_hash={}, prev="  ", language="shell-unix-generic", theme="blackboard")
    out = ""
    dir_hash.map do |name, vars|
      out << "#{prev}#{name}/\n"
      out << "#{prev*2}#{vars[:files].join("\n#{prev*2}")}\n" if vars[:files]
      out << dir_to_tabs(vars[:dirs], prev*2, language, theme) if vars[:dirs]
    end
    out
  end
  def dir_to_syntax(dir_hash={}, language="shell-unix-generic", theme="blackboard")
    code_to_syntax(dir_to_tabs(dir_hash), language, theme)
  end


end