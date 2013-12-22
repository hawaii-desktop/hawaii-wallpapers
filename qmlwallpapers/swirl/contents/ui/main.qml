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
    Rectangle {
        id: colorTable
        width: 1
        height: 36
        color: "transparent"
 
        Column {
            spacing: 2
            y: 1
            Rectangle { width: 1; height: 10; color: Qt.rgba(0.2 * 1.4, 0.4 * 1.4, 0.6 * 1.4, 1); }
            Rectangle { width: 1; height: 10; color: Qt.rgba(0.2, 0.4, 0.6); }
            Rectangle { width: 1; height: 10; color: Qt.rgba(0.2 * 0.7, 0.4 * 0.7, 0.6 * 0.7); }
        }
 
        layer.enabled: true
        layer.smooth: true
        visible: false
    }

    FluidUi.NoiseBackground {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#336699" }
            GradientStop { position: 1.0; color: "black" }
        }
    }

    Swirl {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height * 0.2
        amplitude: height * 0.2
        colorTable: colorTable
        speed: 0.3
        opacity: 0.3
    }
}
