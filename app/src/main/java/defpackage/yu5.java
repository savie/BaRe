package defpackage;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbInterface;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yu5 extends vd4 {
    @Override // defpackage.vd4
    public final ky8 a(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection) throws IOException {
        UsbInterface usbInterfaceB = b(usbDevice);
        if (usbInterfaceB == null) {
            l0.e("The connection type is not available via this transport");
            return null;
        }
        if (usbDeviceConnection.claimInterface(usbInterfaceB, true)) {
            return new pg8(usbDeviceConnection, usbInterfaceB);
        }
        y5.m("Unable to claim interface");
        return null;
    }
}
