package defpackage;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class as1 {
    public static final HashMap c = new HashMap();
    public final UsbManager a;
    public final UsbDevice b;

    public as1(UsbManager usbManager, UsbDevice usbDevice) {
        this.a = usbManager;
        this.b = usbDevice;
    }

    public static vd4 a(Class cls) {
        HashMap map = c;
        synchronized (map) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    if (cls.isAssignableFrom((Class) entry.getKey())) {
                        return (vd4) entry.getValue();
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c(Class cls, vd4 vd4Var) {
        HashMap map = c;
        synchronized (map) {
            map.put(cls, vd4Var);
        }
    }

    public final ky8 b(Class cls) throws IOException {
        vd4 vd4VarA = a(cls);
        if (vd4VarA == null) {
            l0.e("The connection type is not available via this transport");
            return null;
        }
        UsbManager usbManager = this.a;
        UsbDevice usbDevice = this.b;
        if (!usbManager.hasPermission(usbDevice)) {
            throw new f84("No permission granted to communicate with device " + usbDevice.getProductName());
        }
        UsbDeviceConnection usbDeviceConnectionOpenDevice = usbManager.openDevice(usbDevice);
        try {
            return vd4VarA.a(usbDevice, usbDeviceConnectionOpenDevice);
        } catch (IOException e) {
            usbDeviceConnectionOpenDevice.close();
            throw e;
        }
    }
}
