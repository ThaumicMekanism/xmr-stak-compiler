# xmr-stak-compiler
This is just a simple script to help compile xmr-stak (Currently only for windows).
This is for [https://github.com/fireice-uk/xmr-stak](https://github.com/fireice-uk/xmr-stak)

Please support the developers of both projects, their donation links are on their page and here's mine:
```
ETN: etnk5wXV6msNS4iHuCxYWH8f1TX11Rcn4K7RvMAhWTkGjHJsP49pytzaZMkXrecX6U76FDWNcpnE4PgRmWbFJ9Np95f7EvJMFK
```
```
BTC: 1DyGAUGV51w8coQiZNY7ZtWZ3N4iFn28tP
```

This currently does not help or check if you installed everything correctly so please make sure you follow the guide:

[https://github.com/fireice-uk/xmr-stak/blob/master/doc/compile_Windows.md](https://github.com/fireice-uk/xmr-stak/blob/master/doc/compile_Windows.md)

## Usage
1) After you have installed the requirements which can be found in the link above, copy the bat script to the directory outside of the xmr-stak source code.
NOTE: I had to downgrade my version of Visual Studio since Cuda did not support it. If you run into the same problem follow this [https://www.visualstudio.com/en-us/productinfo/installing-an-earlier-release-of-vs2017](https://www.visualstudio.com/en-us/productinfo/installing-an-earlier-release-of-vs2017). THe version 15.4.5 worked for me.
2) Run the script and then follow the instructions.
-It will ask for the version of cuda you have, just type the corresponding number related to it.
-It will also ask for the 'year'. This is so that it knows what directory to look for the Visual Studio batch script in. If the directory that the program shows is not correct, please type 'custom' and then enter the full directory including the filename into the field so the script runs correctly.
3) Profit!

Note: If the script ever seems like it gets stuck and is on the same spot for a long while, press ctrl+c.  This can restart it/unstick it. It is not a problem with my script but with how cmake works I believe.

Hope this helps!!!!!

Also for the settings, make sure you do not add more cpu cores than you have PHYSICAL cores. Also make sure to keep the core numbers even. This is explained more on his site but just a future note! Will work on a linux one too if I have the time and effort!

Enjoy! :)

P.S. Will try to fix and make this work better in the future like auto downloading stuff or other features! Please just add ideas to the Issues and make sure you add [FEATURE] to it so I know.
