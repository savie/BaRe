package defpackage;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Pair;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bi7 extends vd4 {
    @Override // defpackage.vd4
    public final ky8 a(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection) throws IOException {
        UsbInterface usbInterfaceB = b(usbDevice);
        if (usbInterfaceB == null) {
            l0.e("The connection type is not available via this transport");
            return null;
        }
        if (!usbDeviceConnection.claimInterface(usbInterfaceB, true)) {
            y5.m("Unable to claim interface");
            return null;
        }
        UsbEndpoint usbEndpoint = null;
        UsbEndpoint usbEndpoint2 = null;
        for (int i = 0; i < usbInterfaceB.getEndpointCount(); i++) {
            UsbEndpoint endpoint = usbInterfaceB.getEndpoint(i);
            if (endpoint.getType() == 2) {
                if (endpoint.getDirection() == 128) {
                    usbEndpoint = endpoint;
                } else {
                    usbEndpoint2 = endpoint;
                }
            }
        }
        if (usbEndpoint == null || usbEndpoint2 == null) {
            l0.e("Missing CCID bulk endpoints");
            return null;
        }
        Pair pair = new Pair(usbEndpoint, usbEndpoint2);
        return new rg8(usbDeviceConnection, usbInterfaceB, (UsbEndpoint) pair.first, (UsbEndpoint) pair.second);
    }
}
