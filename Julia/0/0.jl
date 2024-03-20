using Dates
pi0 = π

#询问分辨率
println("需要多少分辨率的网格？（输入正整数）")
x = parse(Int, readline())

t1 = now()

#搭建网格
grid = [[a, b] 
    for a in 0:x-1
    for b in 0:x-1
    if (a > (x / 2) || b > (x / 2)) && (a + (50 / x))^2 + (b + (50 / x))^2 < (x^2)]

#计算pi
amount = length(grid) + div(x^2, 4)
t2 = now()

println("在分辨率为", x, "*", x, "的情况下")
println("结果为", @sprintf("%.10f", float(amount * 4 / x^2)))
println("pi值应为", @sprintf("%.10f", pi0))
println("运行时间为", @sprintf("%.6fs", (t2 - t1).value / 1000))
