import chai from 'chai';
const should = chai.should();
import {sumOfMultiples} from './problem001';
import {sumOfEvenFibs} from './problem002';

describe('Problem #1', function() {
    it('it should return 233168', function() {
        sumOfMultiples().should.equal(233168);
    });
});

describe('Problem #2', function() {
    it('it should return 4613732', function() {
        sumOfEvenFibs().should.equal(4613732);
    });
});