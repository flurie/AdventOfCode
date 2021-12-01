[inputs] as $i
  | [range(2; $i | length)
      | [$i[.] + $i[.-1] + $i[.-2]]]
  | add as $j
  | [range(1; $j | length)
      | if $j[.] - $j[.-1] > 0 then "increase" else "decrease" end
      | select(. == "increase")]
  | length
