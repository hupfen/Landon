chai   = require 'chai'
App    = require '../../src/scripts/App.cjsx'

expect = chai.expect
should = chai.should()

TestUtils = React.addons.TestUtils


describe 'App', ->

  beforeEach =>
    @app = TestUtils.renderIntoDocument <App />

  afterEach =>
    React.unmountComponentAtNode @app
    @app = null


  it 'Should instantiate a new React component on the DOM', =>
    TestUtils.findRenderedComponentWithType(@app, App).should.exist



