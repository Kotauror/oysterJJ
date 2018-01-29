# Ex. 1

### Using GEMS
```shell
 $ gem list
 ```
 lsits gems, there should be bundle
 ```shell
 $ bundle init
 ```
creates Gemfile

add this gem for rspec to the Gemfile:

```ruby
group :development, :test do
  gem "rspec"
end
```

### RVM
  ```shell
 $ rvm list
 ```
 lists available ruby versions
 ```shell
  $ rvm install *ruby-version*
  ```
  install a particular ruby version  
  ```shell
 $ ruby -v
 ```
 see the current version of ruby

### back to Gemfile
add this line after updating ruby:
```ruby
ruby '2.2.3'
```
### RVM
* each time we have a new ruby version we have to run
```shell
$ gem list
```
* check if bundler is there
```shell
$ gem bundle
```
* This will invoke bundler, the dependency manager, that will look into Gemfile, see if any of the gems need to be installed (they may already be installed), install them and save the information about the gems, their versions and dependencies into an automatically generated Gemfile.lock.


# Ex. 2

initialize rspec

```shell
$ rspec --init
```
