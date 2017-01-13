func go() {
    let one = 1
    var two = 2
    two = one
}

go()

func doGo() {
    go()
}

doGo()
