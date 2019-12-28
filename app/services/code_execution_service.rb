class CodeExecutionService
  class << self

    def run_code(code:)
      write_code(code: code)
      exec(" python /lib/#{code.id}.py")
    end

    def write_code(code:)
      path = "/lib/#{code.id}"
      content = "data from the form"
      File.open(path, "w+") do |f|
        f.write(content)
      end
    end
  end
end
