/****************************************************************************
 * This file is part of Hawaii Wallpapers.
 *
 * Copyright (C) 2013 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
 *
 * Author(s):
 *    Pier Luigi Fiorini
 *
 * $BEGIN_LICENSE:LGPL2.1+$
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * $END_LICENSE$
 ***************************************************************************/

import QtQuick 2.0
import Fluid.Ui 1.0 as FluidUi

Item {
    Timer {
        running: true
        repeat: true
        interval: 30000
        onTriggered: randomColor()
    }

    FluidUi.NoiseBackground {
        id: bg
        anchors.fill: parent
        color: randomColor()

        Behavior on color {
            ColorAnimation {
                duration: 1000
                easing.type: Easing.InQuad
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: randomColor()
        }
    }

    function randomColor() {
        bg.color = Qt.hsla(Math.random(), 0.2, 0.4, 1)
    }
}
