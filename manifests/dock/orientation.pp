# Public: Sets the dock orientation to the desired position.
# Possible orientations: bottom, left, right, top
class osx::dock::orientation($orientation = 'left') {
  include osx::dock

  boxen::osx_defaults { 'Sets the dock orientation':
    user   => $::boxen_user,
    key    => 'orientation',
    domain => 'com.apple.dock',
    value  => $orientation,
    notify => Exec['killall Dock'];
  }
}
