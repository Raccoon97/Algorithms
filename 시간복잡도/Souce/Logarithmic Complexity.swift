
func timeComplexity_0_log_n(_ n: Int) -> Int {
    var a = 0
    var i = n
    while i > 0 {
	a += i
	i /= 2
    }
}
