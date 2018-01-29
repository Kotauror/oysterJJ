# The first thing we need to do is tell the Gemfile where to look for gems, this is called the source.
source "https://rubygems.org"

ruby '2.2.3' # add the current verion of ruby 

#added in ex. 1
group :development, :test do
  gem "rspec"
end

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
