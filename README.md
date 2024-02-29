Ajax Multi-Commentary: TEI Exports
------

This repository holds the [TEI XML](https://tei-c.org/) exports of the public domain commentaries in the [Ajax Multi-Commentary](https://github.com/AjaxMultiCommentary/ajmc) project.

This repository also contains scripts and resources for building a [TEI Publisher](https://teipublisher.com/) application for reading these commentaries in a linear fashion. The ODD and HTML templates are borrowed from the excellent Shakespeare Plays demo in TEI Publisher.

# Building

To build the application, you will need to install the following on your system and have them available on your `$PATH`:

- `ant`
- `nodejs`
- `npm`

With these tools installed, run the following command to generate `build/ajmc.xar`.

```sh
$ ant xar-local
```

You can then copy this `.xar` archive into your eXist-DB instance.

# See also

For fuller reference and answers to additional questions, refer to the [TEI Publisher](https://github.com/eeditiones/tei-publisher-app) README.

# License

Copyright © 2024 Ajax Multi-Commentary

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.