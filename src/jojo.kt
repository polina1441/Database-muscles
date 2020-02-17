class Vector(){
    var x:Int =0
    var y: Int = 0
    var z :Int= 0

constructor(xIn:Int, yIn:Int, zIn:Int):this(){
x= xIn
y=yIn
z= zIn
}
    fun minus(v:Vector):Vector{
        return Vector(x - v.x, y - v.y, z - v.z)
    }
    fun display(){
        println("x=$x y=$y z=$z")
    }
}
fun main(){
    var one = Vector(6, 6, 6)
    var two = Vector(3, 3, 3)
    var three = one.minus(two)
    three.display()
}