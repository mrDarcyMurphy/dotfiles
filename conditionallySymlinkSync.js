var fs = require('fs')
var log = console.log

function conditionallySymlinkSync( src, dest, type ) {
  type || (type = 'file') // default to file

  if ( fs.existsSync( src ) ) {

    // if destination already exists, do some more checking
    if ( fs.existsSync( dest ) ) {

      // if it's a symlink, ensure we're linking to the right spot
      if ( fs.lstatSync( dest ).isSymbolicLink() ) {
        var symlinkTo = fs.readlinkSync(dest)
        if ( symlinkTo == src ) {
          log( '  ' + dest + ' already symlinked, nothing to do.' )
        } else {
          log( '  relinking ' + dest + ' from ' + symlinkTo + ' to ' + src )
          fs.unlinkSync(dest) // delete the old one
          fs.symlinkSync( src, dest, type ) // create the link
        }
      }

      // backup the existing file
      else {
        var now = new Date()
        var backupLocation = dest + '.' + now.getFullYear() + '-' + (now.getMonth() + 1) + '-' + now.getDate()
        log( '  ' + dest + ' already exists. Backing up to ' + backupLocation)
        mvSync( dest, backupLocation ) // back it up
        fs.symlinkSync( src, dest, type ) // create the link
      }
    }

    // just create the link
    else {
      log( '  linking ' + dest + ' to ' + src )
      fs.symlinkSync( src, dest, type )
    }

  } else {
    log( '  ' + src + 'doesn\'t exist, can\'t create symlink.' )
  }
}

function mvSync(src, dest) {
  var filedata = fs.readFileSync(src)
  fs.writeFileSync(dest, filedata)
  fs.unlinkSync(src)
}

module.exports = conditionallySymlinkSync
