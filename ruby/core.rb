$core_ns = {
    :"=" =>       lambda {|a,b| a == b},
    :"pr-str" =>  lambda {|*a| a.map {|e| _pr_str(e, true)}.join(" ")},
    :"str" =>     lambda {|*a| a.map {|e| _pr_str(e, false)}.join("")},
    :"prn" =>     lambda {|*a| puts(a.map {|e| _pr_str(e, true)}.join(" "))},
    :"println" => lambda {|*a| puts(a.map {|e| _pr_str(e, false)}.join(" "))},
    :< =>         lambda {|a,b| a < b},
    :<= =>        lambda {|a,b| a <= b},
    :> =>         lambda {|a,b| a > b},
    :>= =>        lambda {|a,b| a >= b},
    :+ =>         lambda {|a,b| a + b},
    :- =>         lambda {|a,b| a - b},
    :* =>         lambda {|a,b| a * b},
    :/ =>         lambda {|a,b| a / b},
    :list =>      lambda {|*a| List.new a},
    :list? =>     lambda {|*a| a[0].is_a? List},
    :cons =>      lambda {|a,b| List.new(b.clone.insert(0,a))},
    :concat =>    lambda {|*a| List.new(a && a.reduce(:concat) || [])},
    :nth =>       lambda {|a,b| a[b]},
    :first =>     lambda {|a| a[0]},
    :rest =>      lambda {|a| List.new(a.size > 0 && a.drop(1) || [])},
    :empty? =>    lambda {|a| a.size == 0},
    :count =>     lambda {|a| a.size},
}

