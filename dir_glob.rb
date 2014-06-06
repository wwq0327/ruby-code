%w[s2 s3 test].each { |dir|
  Dir.glob(File.join(File.dirname(__FILE__), dir, '**', '*.rb')) { |f|
    puts f
  }
}