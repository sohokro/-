fn main(){
let mut e = 0 as f64;
let mut n = 0 as f64;
let mut p = 1 as f64;
let mut q = -1 as f64;
for i in 1..10000000{
    println!("{}", e);
    e = e + n;
    p = 2 as f64 * i as f64 - 1 as f64;
    q = q * -1 as f64;
    n = q / p;
}
println!("{}", e * 4 as f64);
}
