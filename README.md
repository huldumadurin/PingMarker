# PingMarker
Starts Digital Ocean droplets in various regions and pings a list of servers for comparison.

## Hypothesis
Response times are primarily determined by distance, since it takes time for a packet to travel around the world, even though this happens at something approaching the speed of light. Therefore, I expect the response time to each server to vary when the experiment is run from different locations, but stay reasonably stable over time at each location.
If they're not stable, or packets tend to get lost, that may indicate a very heavy load running on the server, making it incapable of serving ping requests.

Therefore, I expect nearby servers to respond quickly and distant ones slowly. Also, I expect servers that are under heavy load to provide less stable response times.

It should be possible to guess which region each server is located in.


## Experiment
In order to analyze the ping behavior of three servers:

* **Server 1** 128.199.144.199
* **Server 2** 167.99.51.33
* **Server 3** 46.101.253.149

And knowing that ping time is very location-dependent, it would be nice 
to have results from a few different places in the world. This will let 
me control for slow connectivity and instability from my local ISP.

This will be done by spinning up Digital Ocean droplets in 3 different regions (nyc1, fra1 and *), and running a ping test with a count of 50 packets against each server.

I will then use the calculator at https://wintelguy.com/wanlat.html to check if my results are in tune with the physical limitations of information propagation. Equipment delay and Local Loop Length will be set to 0 as I am only looking for a loose estimate based on distance.

## Instructions to replicate
Export your Digital Ocean token and its name as DOTOKEN and DOTOKENNAME, then simply run runTest.sh. You will be prompted for a region, and then the Vagrantfile will be used to carry out the test. Then, after typing in the IP address shown in the line "Connection to [ADDRESS] closed.", the results will be copied to the current directory.

## Results **_TODO_ Run experiment**
I have cut away the middle portion of the results, since they're all quite stable over time. The full results are available in combinedlogs.txt

![Figure 1](https://raw.githubusercontent.com/huldumadurin/PingMarker/master/LogsExcerpt.PNG "Ping result table abbr.")

## Discussion
We can immediately see that Server 3 is the closest server to Amsterdam (According to the online calculator, around 300km or less). 
Server 2 has sub-millisecond response times to New York. This corresponds to less than 60km according to the calculator.
Server 3 has the fastest minimum response time at less than 0.4ms. This corresponds to less than 35km according to the calculator.

## Conclusion
Cross-referencing with status.digitalocean.com, I can try to determine the locations of the servers. 
Server 1 is located in Europe, but I can't say whether it's in London, France or Amsterdam, just from this data. Also, I am not sure how fast exactly the signal might be moving, so these results are not very precise.
Server 2 is located in New York, possibly in another new york datacentre, but not further away than that, simply guessing from the list of regions Digital ocean offers.
Server 3 is located in Singapore, see Server 2.

All servers show quite stable response times, so I can't determine anything about the loads running on them.
