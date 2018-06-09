
const supertest = require('supertest')
const server = require('../../dist/server')

describe('/index.test.js', () => {
  describe('GET /', () => {
    it('should 200', () => {
      return supertest(server)
        .get('/')
        .expect(200)
        .expect('Hello World\n')
    })
  })
})
