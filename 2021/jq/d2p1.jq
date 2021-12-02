[inputs | split(" ")
  | if .[0] == "forward" then [.[1] | tonumber, 0]
    elif .[0] == "down" then  [0, .[1] | tonumber]
    elif "up" then [0, -(.[1] | tonumber)]
    else [0, 0] end ]
  | reduce .[] as $item ([0,0]; [$item[0] + .[0], $item[1] + .[1]]) | reduce .[] as $m (1; $m * .)
