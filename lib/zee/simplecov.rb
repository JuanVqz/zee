# frozen_string_literal: true

require "simplecov"

SimpleCov.profiles.define :zee do
  track_files "app/**/*.rb"
  add_filter ["config/", "test/"]

  {
    "Actions" => "app/actions",
    "Controllers" => "app/controllers",
    "Helpers" => "app/helpers",
    "Jobs" => "app/jobs",
    "Mailers" => "app/mailers",
    "Models" => "app/models",
    "Views" => "app/views"
  }.each do |label, dir|
    add_group(label, dir) if Dir["#{dir}/**/*.rb"].any?
  end
end
