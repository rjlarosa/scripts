#!/usr/bin/env ruby
require 'csv'
require 'optparse'

def usage
  puts 'colmerge.rb -c 1:1,3:3 -f 2,5 -s source-file -r reference-file'
  exit(1)
end

match_cols = nil
fill_cols = nil
sfn = nil
mfn = nil

# parse arguments
ARGV.options do |opts|
  opts.on('-c', '--match-cols=COLS', Array)   { |val| match_cols = val }
  opts.on('-f', '--fill-cols=COLS', Array)    { |val| fill_cols = val }
  opts.on('-s', '--source-file=FILE', String) { |val| sfn = val }
  opts.on('-r', '--reference-file=FILE', String)  { |val| mfn = val }
  opts.on_tail('-h', '--help')                { usage }
  opts.parse!
end

usage if match_cols.nil? || fill_cols.nil? || sfn.nil? || mfn.nil?

source_match_cols = []
merge_match_cols = []
match_cols.each do |mc|
  mcs = mc.split(':')
  source_match_cols << mcs[0].to_i - 1
  merge_match_cols << mcs[1].to_i - 1
end

fill_cols = fill_cols.map { |fc| fc.to_i - 1 }

source = CSV.read(sfn, headers: true)
merge = CSV.read(mfn, headers: true)

# Header row
hr = source.headers + merge.headers.values_at(*fill_cols)
puts hr.join(',')

source.each do |srow|
  source_vals = srow.values_at(*source_match_cols)
  new_row = nil

  merge.each do |mrow|
    next unless new_row.nil?
    next unless mrow.values_at(*merge_match_cols) == source_vals

    new_row = srow.fields
    new_row << mrow.values_at(*fill_cols)
  end

  if new_row.nil?
    new_row = srow.fields
    new_row << [''] * fill_cols.length
    STDERR.puts "No match for #{source_vals.join(',')}"
  end

  puts new_row.join(',')
end
