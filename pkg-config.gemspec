# -*- mode: ruby; coding: utf-8 -*-
#
# Copyright (C) 2010-2012  Kouhei Sutou <kou@clear-code.com>
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))
require "pkg-config/version"

Gem::Specification.new do |spec|
  spec.name = "pkg-config"
  spec.version = PKGConfig::VERSION
  spec.rubyforge_project = "cairo"
  spec.homepage = "https://github.com/ruby-gnome2/pkg-config"
  spec.authors = ["Kouhei Sutou"]
  spec.email = ["kou@cozmixng.org"]
  spec.summary = 'A pkg-config implementation for Ruby'
  spec.description = "pkg-config can be used in your extconf.rb to properly detect need libraries for compiling Ruby native extensions"
  spec.license = "LGPLv2+"
  spec.files = ["README.rdoc", "NEWS", "Gemfile", "Rakefile", "LGPL-2.1"]
  spec.files += Dir.glob("lib/**/*.rb")
  spec.test_files = Dir.glob("test/**/*.rb")

  spec.add_development_dependency("test-unit")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("bundler")
end
