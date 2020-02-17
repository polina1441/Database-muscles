import kotlin.math.max
import kotlin.math.sign
import kotlin.random.Random

fun main() {
    var min: Int = 0;
    var max: Int = 0
    var A1: Array<Int> = Array(30, { Random.nextInt(1900, 2020) })

    for (i in 0..A1.size - 1) {
        if (A1[i] > min)
            max = A1[i];
        else
            min = A1[i]
        print(A1[i])
        println(" ")
    }

    println(" ")
    println(max)
    println(min)
    println("РАЗНИЦА")
    println(max - min)
}



