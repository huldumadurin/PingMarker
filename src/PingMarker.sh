mkdir -p ../output
ping -c 50 128.199.144.199 | tee ../output/server1.log
ping -c 50 167.99.51.33 | tee ../output/server2.log
ping -c 50 46.101.253.149 | tee ../output/server3.log
