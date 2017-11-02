import IndexClass from '../src/index';

import { expect } from 'chai';

describe('Simple tests', () => {
  it('should work!', () => {
    expect(true).to.eql(true);
  });

  it('should be a empty object', () => {
    expect(typeof IndexClass).to.eql('object');
  });

  it('should cover "b"', () => {
    expect(typeof IndexClass.b).to.eql('function');
  });

  it('should cover "b" and return true', () => {
    expect(IndexClass.b()).to.eql(true);
  });
});