[inputs | split(" ")
| if .[0] == "up" then [-(.[1] | tonumber), 0]
  elif .[0] == "down" then  [.[1] | tonumber, 0]
  elif .[0] == "forward" then [0, .[1] | tonumber]
  else [0, 0] end ]
| reduce .[] as $item ([0,0,0]; [$item[0] + .[0], $item[1] + .[1], .[2] + $item[1] * .[0]])
| .[1]*.[2]
