require 'yaml'
desc 'Move content from one location to another'
task move: :environment do
  ARGV.each { |a| task a.to_sym }

  from = ARGV[1]
  to = ARGV[2]

  # Load up our redirect file
  path = "#{Rails.root}/config/automatic-redirects.yml"
  document = File.read(path)
  redirects = YAML.safe_load(document) || {}

  # Add a top level redirect
  add_redirect(from, to, redirects)

  # Iterate over every file in there and build up a list
  Dir.glob("#{from}/**/*").each do |filename|
    target = filename.gsub(from, to)
    add_redirect(filename, target, redirects)
  end

  # Actually move the files
  FileUtils.mv(from, to)

  File.write(path, redirects.to_yaml)
end

def add_redirect(from, to, redirects)
  # Strip off the leading _documentation as that never shows in the URL
  from = from.gsub('_documentation', '')
  to = to.gsub('_documentation', '')

  puts "#{from} => #{to}"

  ext = File.extname(from)
  from = from.gsub(ext, '')
  to = to.gsub(ext, '')

  # Also strip off any file types
  redirects[from] = to
end
