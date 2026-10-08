package defpackage;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vd4 {
    public final int a;
    public final int b;

    public vd4(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public abstract ky8 a(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection);

    public final UsbInterface b(UsbDevice usbDevice) {
        for (int i = 0; i < usbDevice.getInterfaceCount(); i++) {
            UsbInterface usbInterface = usbDevice.getInterface(i);
            if (usbInterface.getInterfaceClass() == this.a && usbInterface.getInterfaceSubclass() == this.b) {
                return usbInterface;
            }
        }
        return null;
    }
}
