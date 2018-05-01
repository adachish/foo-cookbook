instance = search("aws_opsworks_instance", "self:false").first

Chef::Log.info("********** remote node ip address is '#{instance['private_ip']}' **********")

