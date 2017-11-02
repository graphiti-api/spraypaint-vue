import Rachelle from '../src/index';

import { expect } from 'chai';

describe('Simple tests', () => {

    it('should work!', () => {
        expect(true).to.eql(true);
    });

    it('should be a empty object', () => {
        expect(typeof Rachelle).to.eql('object');
    });

    it('should cover "b"', () => {
        expect(typeof Rachelle.b).to.eql('function');
    });

    it('should cover "b" and return true', () => {
        expect(Rachelle.b()).to.eql(true);
    });
});