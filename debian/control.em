Source: @(Package.replace('gazebo-','gazebo11-'))
Section: misc
Priority: extra
Maintainer: @(Maintainer)
Build-Depends: debhelper (>= @(debhelper_version).0.0), @(', '.join(BuildDepends))
Homepage: @(Homepage)
Standards-Version: 3.9.2

Package: @(Package.replace('gazebo-','gazebo11-'))
Architecture: any
Depends: ${shlibs:Depends}, ${misc:Depends}, @(', '.join(Depends))
Conflicts: @(Package) , @(Package.replace('gazebo-','gazebo10-')), @(Package.replace('gazebo-','gazebo9-'))
@[if Conflicts]Conflicts: @(', '.join(Conflicts))@\n@[end if]@
@[if Replaces]Replaces: @(', '.join(Replaces))@\n@[end if]@
Description: @(Description)
