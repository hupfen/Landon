React Scaffold
==============

Libraries used:
- [React.js](http://facebook.github.io/react/) from Facebook
- [Browserify](http://browserify.org/) for dependenciy management
- CoffeeScript and [Coffee-Reactify](https://github.com/jsdf/coffee-reactify), a Browserify transform for CoffeeScript and .jsx

Project Setup
-------------
- Install Node
 - [Node.js Installer](http://nodejs.org/)
- Install Grunt command line interface
 - `sudo npm install -g grunt-cli`
- Clone and cd into the repo
 - `git clone https://github.com/damassi/react-scaffold.git && cd react-scaffold`
- Then install Grunt task dependencies
 - `npm install`

Development Tasks
-----------------

- For development: `grunt dev` then navigate to `http://localhost:3000` (or IP address).
- For deploy: `grunt build`.  This concatinates and minifies all CoffeeScripts and SASS and moves the project into 'dist' for production deploy.

Unit Testing
------------
Mocha is used as the default for unit tests which run in the browser.

- To run tests, execute `grunt test`.  A browser should open showing the test-runner

Bower
-----
Bower is used for client-side package management.  Packages installed via bower are then copied over to `vendor` via `grunt bower` and each time you run `grunt dev`.

- To search for packages: `bower search {package name}`
- To install a package
 - `bower install {package name} --save`
 - `grunt bower`


A Few Notes on Folder Structure
-------------------------------

- **Assets** like **images**, **audio**, **webfonts**, **etc** are created in `src/assets` and will automatically be moved over to the **public** folder, mirroring the folder structure where they came from.
- **Html** in `html` will be copied over to the `public` root.  **The public directory never needs to be touched.**
- **Scripts** such as **CoffeeScript** and **JavaScript** are placed here and compiled over to public via **Browserify**.  For those not familiar, Browserify allows for "CommonJS" style modules to be required inside internal files.  Attachments to the global namespace are no longer needed, and dependencies are traced at compile-time. (Example:  `var MyClass = require('./path/to/MyClass')`)  See the Browserify website for more information.
- **Styles** is where **SASS** files go, and are compiled over to **public** on save.
- **Vendor** is where are vendor sources go, from both **Bower** (via `bower install {package}` and then `grunt bower`) as well as manually.  When changes are made to this directory, the **GruntFile** `concat` task should be updated to include the newly added files
- **Tests** is where your **Mocha** tests and their accompanying html are located.  When developing, test files are **continually evaluated** and, if need be, compiled into `test/spec/spec-runner.js` to be run in the **browser**.
