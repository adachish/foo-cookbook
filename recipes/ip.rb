Chef::Log.info("Start of loop")

for i in 1..60 do
  instance = search("aws_opsworks_instance", "self:false").first
  if instance['private_ip'] then
    break
  end
  sleep(5)
end

Chef::Log.info("End of loop")

Chef::Log.info("********** remote node ip address is '#{instance['private_ip']}' **********")

