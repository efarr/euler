Func<long, long, long, IEnumerable<long>> fibonacci = (n, m, cap) => n + m > cap ? 
    Enumerable.Empty<long>() :
    Enumerable.Repeat(n + m, 1).Concat(fibonacci(m, n + m, cap));

Console.WriteLine(fibonacci(0,1,4000000).Where( x => x % 2 == 0).Sum());