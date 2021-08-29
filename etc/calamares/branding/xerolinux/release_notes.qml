/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2020 Anke Boersma <demm@kaosx.us>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import io.calamares.ui 1.0

import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Rectangle {
    width: parent.width
    height: parent.height
    focus: true
    color: "#f2f2f2"

    Flickable {
        id: flick
        anchors.fill: parent
        contentHeight: 1150

        ScrollBar.vertical: ScrollBar {
            id: fscrollbar
            width: 10
            policy: ScrollBar.AlwaysOff
        }

        TextArea {
            id: intro
            x: 130
            y: 8
            width: 640
            font.pointSize: 14
            textFormat: Text.RichText
            antialiasing: true
            activeFocusOnPress: false
            wrapMode: Text.WordWrap

            text: qsTr("<center><h1>%1 Release Notes</h1></center>
            <p>This release has undergone a lot of changes. I worked hard on it.</p>

            <p>See below a summary of the changes. Keep in m,ind that I am still learning as I go.</p>

            <p>I rely on you, the user to report any bugs you might encounter, and for ideas I can implement in next release.</p>

            <p><b>- Changes & Updates :</b></p>

            <p>First thing you will notice is how much Calamares has changed. Also I decided to go back to light theme.</p>

            <p>I have also added and removed a lot of packages. Streamlined it as not to overwhelm you with too many apps.</p>

            <p>As you might have noticed, system has had a facelift, new rice, the Dracula theme with a custom Wallpaper.</p>

            <p>But the biggest change for this release is the fact that I added Snapper support for all you BTRFS users out there.</p>

            <p>Yes, you read that right, all required Subvolumes will be created, but you will be required to run a script once OS is installed.</p>

            <p>As soon as you land on Desktop, to finalize Snapper setup, just run the following command in Terminal <code>snapcfg</code>.</p>

            <p>And in case you also chose Grub-BTRFS, run this command to enable it, <code>grubsnap</code></p>

            <p>Finally, a heck of a lot of un-the-hood work was done. I am still learning, but that's beauty of Linux isn't it?</p>

           <p><b>- Some Aliases to know :</b></p>
            <ul>
                <li>update : Most commonly used one. It will update all <i>REPO</i> packages.</li>
                <li>upall : This one is same as above but will include <i>AUR</i> packages.</li>
                <li>install : It’s to install packages from repos. Replaces <code>pacman -S</code></li>
                <li>pget : this one is to build packages from the <i>AUR</i>.</li>
                <li>smb : Runs my custom <i>SAMBA</i> script to get it running in seconds..</li>
                <li>ngbt : This will allow you to edit the “Grub-BtrFS” config file</li>
                <li>fpup : This one lets you update any “Flatpaks” installed.</li>
                <li>grubup : This one will update “Grub” To apply changes..</li>
                <li>sr/ssn : first one reboots your system, whilst the other is shutdown...</li>
                <li>qemu-vm : This will quickly grab and install KVM for you..</li>
            </ul>
            <p><center><h1>~ Enjoy XeroLinux ~</h1></center></p>").arg(Branding.string(Branding.VersionedName))

        }
    }

    ToolButton {
        id: toolButton
        x: 19
        y: 29
        width: 105
        height: 48
        text: qsTr("Back")
        hoverEnabled: true
        onClicked: load.source = ""

        Image {
            id: image1
            x: 0
            y: 13
            width: 22
            height: 22
            source: "img/chevron-left-solid.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

}