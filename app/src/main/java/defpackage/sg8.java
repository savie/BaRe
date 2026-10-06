package defpackage;

import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sg8 implements ky8 {
    public static final l15 c = o15.b(sg8.class);
    public final UsbDeviceConnection a;
    public final UsbInterface b;

    public sg8(UsbDeviceConnection usbDeviceConnection, UsbInterface usbInterface) {
        this.a = usbDeviceConnection;
        this.b = usbInterface;
        ms8.A(4, c, "USB connection opened: {}", this);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        UsbInterface usbInterface = this.b;
        UsbDeviceConnection usbDeviceConnection = this.a;
        usbDeviceConnection.releaseInterface(usbInterface);
        usbDeviceConnection.close();
        ms8.A(4, c, "USB connection closed: {}", this);
    }
}
