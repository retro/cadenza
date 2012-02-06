
namespace :doc do

  desc "compile the user manual for cadenza"
  task :manual do
    require File.expand_path(File.join("..", "lib", "cadenza"), File.dirname(__FILE__))

    # get some useful directories before we get started
    root_directory = File.join(File.dirname(__FILE__), '..')
    source_directory = File.join(root_directory, 'doc', 'src')
    output_directory = File.join(root_directory, 'doc', 'manual')
    
    # This will be the context passed to EVERY example
    scope = Kernel.eval(File.read(File.join(source_directory, 'context.rb')))

    # Set up the loading path for the filesystem loader
    Cadenza::BaseContext.add_loader Cadenza::FilesystemLoader.new(source_directory)
    
    # Compile all the cadenza files under the source directory
    Dir.glob(File.join(source_directory, '*.cadenza')).each do |cadenza_file|
      template_name = File.basename(cadenza_file, ".cadenza")

      input_file = File.join(source_directory, "#{template_name}.cadenza")

      output_file = File.join(output_directory, "#{template_name}.html")

      File.open(output_file, "w") do |file|
        file.write Cadenza.render(File.read(input_file), scope)
      end
    end
  end

end
