[inputs] as $i
| [range(1; $i | length)
    | if $i[.] - $i[.-1] > 0 then "increase" else "decrease" end
    | select(. == "increase")]
| length
