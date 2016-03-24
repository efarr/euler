exports.largestPrimeFactorOf600851475143 = function() {
    let nextDivisor = 2;
    let remaining = 600851475143;

    while (nextDivisor < remaining) {
        if (remaining % nextDivisor == 0) {
            remaining /= nextDivisor;
        }
        else {
            nextDivisor += 1;
        }
    }
    
    return remaining;
};
