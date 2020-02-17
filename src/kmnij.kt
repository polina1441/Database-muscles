import kotlin.random.Random

fun AAr3(Ar1: Array<Int>, Ar2: Array <Int>): MutableList<Int>{
    var Ar3: MutableList <Int> = mutableListOf()
    for (i in 0..Ar1.size - 1){
        for (k in 0..Ar3.size - 1) {
            if (Ar1[i] != Ar3[k]) {
                Ar3.add(Ar1[i])
            }
        }
    }
    for (k in 0..Ar2.size - 1){
        for (i in 0..Ar3.size - 1){
            if (Ar2[k] != Ar3[i]) {
                Ar3.add(Ar2[k])
            }
        }
    }
    return Ar3
}


fun main(){
    println("Первый массив")
    var Ar1: Array <Int> = Array(5, { Random.nextInt(10)})
    println("Второй массив")
    var Ar2: Array <Int> = Array(5, { Random.nextInt(10)})


    var i1 =  AAr3(Ar1, Ar2)
    for (i in 0..i1.size - 1){
        print(i1[i])
        print(" ")
    }
}
