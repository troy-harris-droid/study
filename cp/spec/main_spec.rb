require 'rspec'
require_relative '../lib/main.rb'

# Command line application or script which parses a cron string on single line
# Expands each field to show the times at which it will run

# Standard cron format with five time fields (minute, hour, day of month, month, and day of week) plus a command

# Input
# */15 0 1,15 * 1-5 /usr/bin/find

# Output
# minute        0 15 30 45
# hour          0
# day of month  1 15
# month         1 2 3 4 5 6 7 8 9 10 11 12
# day of week   1 2 3 4 5
# command       /usr/bin/find

RSpec.describe Main do

  context 'static example' do
    let(:main) { Main.new }
    let(:input) { ['*/15 0 1,15 * 1-5 /usr/bin/find'] }
    let(:input_parsed) { {:command=>"/usr/bin/find", :day_of_month=>"1,15", :day_of_week=>"1-5", :hour=>"0", :minute=>"*/15", :month=>"*"}
    }
    let(:valid_minute) { '0 15 30 45' }
    let(:valid_output) {
      <<-MESSAGE
minute        0 15 30 45
hour          0
day of month  1 15
month         1 2 3 4 5 6 7 8 9 10 11 12
day of week   1 2 3 4 5
command       /usr/bin/find
      MESSAGE
    }

    before do
      ARGV.replace input
    end

    it 'parses input' do
      expect(main.parse_input(input)).to eq(input_parsed)
    end

    it "prints valid output" do
      expect { main.print_result }.to output(valid_output).to_stdout
    end

    it 'converts minute' do
      expect(main.convert_minute).to eq(valid_minute)
    end
  end

end

