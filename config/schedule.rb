# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

set :output, "#{ENV['HOME']}/ripdiko.log"

env :LANG, ENV['LANG']
env :PATH, ENV['PATH']

env :RIPDIKO_OUTDIR, ENV['RIPDIKO_OUTDIR'] if ENV['RIPDIKO_OUTDIR']
env :RIPDIKO_BITRATE, ENV['RIPDIKO_BITRATE'] if ENV['RIPDIKO_BITRATE']

job_type :ripdiko, 'cd :path && :bundle_command bin/ripdiko :task :output'

# ij
#every('29 08 * * 1-4') { ripdiko 'TBS' }
#every('59 09 * * 1-4') { ripdiko 'TBS' }

# so
#every('59 10 * * 1-5') { ripdiko 'TBS' }

# tama954
#every('59 12 * * 1-5') { ripdiko 'TBS' }

# kamataku
every(:monday, at: '21:29') { ripdiko 'TBS' }

# midnight
every('59 23 * * 1-5') { ripdiko 'TBS' }

# junk
every('59 00 * * 2-6') { ripdiko 'TBS' }

# otp
every(:wednesday, at: '01:59') { ripdiko 'FMT' }
every(:wednesday, at: '02:59') { ripdiko 'FMT' }

# suppin
every(:wednesday, at: '21:29') { ripdiko 'TBS' }

# sakuma
every(:thursday, at: '02:59') { ripdiko 'LFR' }

# gc
every(:friday, at: '20:59') { ripdiko 'TBS' }

# edo
every(:friday, at: '21:29') { ripdiko 'TBS' }

# weekend
#every(:saturday, at: '12:59') { ripdiko 'TBS' }

# elekata
every(:sunday, at: '00:59') { ripdiko 'TBS' }

# tokyopod
every(:sunday, at: '01:59') { ripdiko 'TBS' }

# nichiten
every(:sunday, at: '09:59') { ripdiko 'TBS' }

# nichiyou
every(:sunday, at: '12:59') { ripdiko 'TBS' }
every(:sunday, at: '14:59') { ripdiko 'TBS' }

# yose
#every(:sunday, at: '19:59') { ripdiko 'TBS' }
