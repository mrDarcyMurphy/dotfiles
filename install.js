'use strict';

var conditionallySymlinkSync = require('./conditionallySymlinkSync.js')
var log = console.log
var home = process.env.HOME

var whatGoesWhere = [{
    what: '/src/.gitconfig',
    where: '/.gitconfig'
}, {
    what: '/src/.zshrc',
    where: '/.zshrc'
}, {
    what: '/src/zsh',
    where: '/.zsh',
    type: 'dir'
}, {
    what: '/src/.vimrc',
    where: '/.vimrc'
}, {
    what: '/src/subl/Preferences.sublime-settings',
    where: '/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings'
}, {
    what: '/src/subl/snippets',
    where: '/Library/Application Support/Sublime Text 3/Packages/User/snippets',
    type: 'dir'
}]

// .gitconfig
// log('\nLINKING: .gitconfig')
// conditionallySymlinkSync( __dirname + '/src/.gitconfig', home + '/.gitconfig')

// .jshintrc
// log('\nLINKING: .jshintrc')
// conditionallySymlinkSync( __dirname + '/src/js/.jshintrc', home + '/.jshintrc')

// .gemrc
// log('\nLINKING: .gemrc')
// conditionallySymlinkSync( __dirname + '/src/.gemrc', home + '/.gemrc')

// .hyper.js
// log('\nLINKING: .hyper.js')
// conditionallySymlinkSync( __dirname + '/src/.hyper.js', home + '/.hyper.js')

// .vimrc
// log('\nLINKING: .vimrc')
// conditionallySymlinkSync( __dirname + '/src/.vimrc', home + '/.vimrc' )

// .zshrc
// log('\nLINKING: .zshrc')
// conditionallySymlinkSync( __dirname + '/src/.zshrc', home + '/.zshrc' )

// src/zsh
// log('\nLINKING: src/zsh')
// conditionallySymlinkSync( __dirname + '/src/zsh', home + '/.zsh', 'dir' )

// ansible
// log('\nLINKING: .ansible.cfg')
// conditionallySymlinkSync( __dirname + '/src/ansible/.ansible.cfg', home + '/.ansible.cfg' )

// Sublime Text 3
// log('\nLINKING: subl')
// conditionallySymlinkSync( '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl', '/usr/local/bin/subl' )

// preferences
// log('\nLINKING: src/subl/Preferences.sublime-settings')
// conditionallySymlinkSync( __dirname + '/src/subl/Preferences.sublime-settings', home + '/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings' )

whatGoesWhere.forEach(function(the) {
    log('\nLINKING: ' + the.what)
    conditionallySymlinkSync(__dirname+the.what, home+the.where, the.type)
})


log('\n-- DONE\n')
