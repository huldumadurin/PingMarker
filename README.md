# PingMarker
Starts Digital Ocean droplets in various regions and pings a list of servers for comparison.

## Hypothesis **_TODO:_ Formulate proper hypothesis**
Network error, Network quality, changing response time over short term 
(Variable load?), changing response time over day/week (Possibly 
correlated to website userbase work hours, but very hard to prove?)  

Response times are primarily determined by distance, since it takes time for a packet to travel around the world. Therefore, I expect the response time to each server to vary when the experiment is run from different locations, but stay reasonably stable over time at each location.
If they're not stable, or packets tend to get lost, that may indicate a very heavy load running on the server, making it incapable of serving ping requests 


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

## Results **_TODO_ Run experiment**


## Discussion


## Conclusion
