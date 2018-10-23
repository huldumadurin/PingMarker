# PingMarker
Starts Digital Ocean droplets in various regions and pings a list of servers for comparison.

## Hypothesis **_TODO:_ Formulate proper hypothesis**
Network error, Network quality, changing response time over short term 
(Variable load?), changing response time over day/week (Possibly 
correlated to website userbase work hours, but very hard to prove?)  

Response times are primarily determined by distance, since it takes time for a packet to travel around the world, even though this happens at something approaching the speed of light. Therefore, I expect the response time to each server to vary when the experiment is run from different locations, but stay reasonably stable over time at each location.
If they're not stable, or packets tend to get lost, that may indicate a very heavy load running on the server, making it incapable of serving ping requests.

Therefore, I expect nearby servers to respond quickly and distant ones slowly. Also, I expect servers that are under heavy load to provide less stable response times.


## Experiment **_TODO:_ Explain Vagrantfile, runscript.sh, 
spreadsheet? ** 
In order to analyze the ping behavior of three servers:

* 128.199.144.199
* 167.99.51.33
* 46.101.253.149

And knowing that ping time is very location-dependent, it would be nice 
to have results from a few different places in the world. This will let 
me control for slow connectivity and instability from my local ISP.

This will be done by spinning up Digital Ocean droplets in 3 different regions (nyc1, fra1 and *), and running a ping test with a count of 50 packets against each server.

I will then use the calculator at https://wintelguy.com/wanlat.html to check if my results are in tune with the physical limitations of information propagation.

## Results **_TODO_ Run experiment**
I have cut away the middle portion of the results, since they're all quite stable over time. The full results are available in combinedlogs.txt

![Figure 1](https://raw.githubusercontent.com/huldumadurin/PingMarker/master/LogsExcerpt.PNG "Ping result table abbr.")

## Discussion


## Conclusion
