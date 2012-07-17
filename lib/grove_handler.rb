require 'chef/handler'
require 'grove-rb'

class GroveHandler < Chef::Handler
  VERSION = '0.0.1'

  attr_accessor :grove_client, :ignore_hosts

  def initialize(grove_channel_token, options={})
    @ignore_hosts = options.delete(:ignore_hosts) || []
    @grove_client = Grove.new(grove_channel_token, options)
  end

  def report
    return unless run_status.failed?

    Chef::Log.error('Creating error report on grove.io')

    message = "Chef run failed on #{node.name}\n#{ run_status.formatted_exception }"#\"#{Array(backtrace).join("\n")}"

    if @ignore_hosts.include?(`hostname -f`.strip)
      return
    end

    @grove_client.post(message)
  end

end
