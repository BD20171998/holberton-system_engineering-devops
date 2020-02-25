#!/usr/bin/env ruby
puts ARGV[0].scan(/(?<=from:)(.*)(?=\]\s\[to.*)/).join + "," +
ARGV[0].scan(/(?<=to:)(.*)(?=\]\s\[flags.*)/).join + "," +
ARGV[0].scan(/(?<=flags:)(.*)(?=\]\s\[msg.*)/).join
