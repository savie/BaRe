package defpackage;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Pair;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e63 extends vd4 {
    /* JADX WARN: Code duplicated, block: B:22:0x003d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0047  */
    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:37:0x0052 A[SYNTHETIC] */
    @Override // defpackage.vd4
    public final ky8 a(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection) throws IOException {
        UsbEndpoint usbEndpoint;
        UsbInterface usbInterface;
        UsbEndpoint usbEndpoint2;
        UsbEndpoint endpoint;
        int i = 0;
        while (true) {
            usbEndpoint = null;
            if (i >= usbDevice.getInterfaceCount()) {
                usbInterface = null;
                break;
            }
            usbInterface = usbDevice.getInterface(i);
            if (usbInterface.getInterfaceClass() == 3 && usbInterface.getInterfaceSubclass() == 0) {
                break;
            }
            i++;
        }
        if (usbInterface != null) {
            if (!usbDeviceConnection.claimInterface(usbInterface, true)) {
                y5.m("Unable to claim interface");
            }
            usbEndpoint2 = null;
            for (int i2 = 0; i2 < usbInterface.getEndpointCount(); i2++) {
                endpoint = usbInterface.getEndpoint(i2);
                if (endpoint.getType() != 3) {
                    if (endpoint.getDirection() == 128) {
                        usbEndpoint = endpoint;
                    } else {
                        usbEndpoint2 = endpoint;
                    }
                }
            }
            Objects.requireNonNull(usbEndpoint);
            Objects.requireNonNull(usbEndpoint2);
            Pair pair = new Pair(usbEndpoint, usbEndpoint2);
            return new og8(usbDeviceConnection, usbInterface);
        }
        l0.e("The connection type is not available via this transport");
        usbInterface = null;
        usbEndpoint2 = null;
        while (i2 < usbInterface.getEndpointCount()) {
            endpoint = usbInterface.getEndpoint(i2);
            if (endpoint.getType() != 3) {
                if (endpoint.getDirection() == 128) {
                    usbEndpoint = endpoint;
                } else {
                    usbEndpoint2 = endpoint;
                }
            }
        }
        Objects.requireNonNull(usbEndpoint);
        Objects.requireNonNull(usbEndpoint2);
        Pair pair2 = new Pair(usbEndpoint, usbEndpoint2);
        return new og8(usbDeviceConnection, usbInterface);
    }
}
