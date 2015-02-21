'use strict';

describe('Main', function () {
  var React = require('react/addons');
  var ReactApp, component;

  beforeEach(function () {
    var container = document.createElement('div');
    container.id = 'content';
    document.body.appendChild(container);

    ReactApp = require('components/ReactApp.js');
    component = React.createElement(ReactApp);
  });

  it('should create a new instance of ReactApp', function () {
    expect(component).toBeDefined();
  });
});
