def remote_instance_ip
  instance = search("aws_opsworks_instance", "self:false").first
  instance['private_ip']
end

Chef::Log.info("********** remote node ip address is '#{remote_instance_ip}' **********")

