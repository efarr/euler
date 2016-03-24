exports.sumOfEvenFibs = function() {
    let sum = 0;
    let last = 1;
    let next = 2;
    while (next < 4000000) {
        if (next % 2 == 0) {
            sum += next;
        }
        let temp = next;
        next += last;
        last = temp;
    }
    return sum;
};
