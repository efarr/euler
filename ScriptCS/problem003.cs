long number = 600851475143;
int foo = Enumerable.Range(2, (int) Math.Sqrt(number) - 1).Last(d => number % d == 0 && Enumerable.Range(2,(int)Math.Sqrt(d)-1).All( x => d %x !=0));
Console.WriteLine(foo);
