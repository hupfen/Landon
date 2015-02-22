###*
 * Main entrypoint for App
 *
 * @author
 * @date
###

FastClick    = require 'fastclick'
EventBus     = require './utils/EventBus.coffee'
Util         = require './utils/Util.coffee'
AppEvent     = require './events/AppEvent.coffee'


module.exports = App = React.createClass


  componentDidMount: ->
    FastClick document.body



  render: ->
    <div className='container'>
      Hey!
    </div>


React.renderComponent <App />, document.getElementById 'container'
