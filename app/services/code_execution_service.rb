class CodeExecutionService
  class << self
    def run_code(code:)
      write_code(code: code)
    end

    def write_code(code:)
      template_code = code.template_code
      combined_content = code.content + "\n" + template_code.content
      out_file = File.new("#{code.id}.py", "w")
      File.write(out_file.path, combined_content)

      result = `python #{code.id}.py`
      File.delete(out_file)
      result
    end
  end
end
