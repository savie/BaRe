package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lg8 extends BroadcastReceiver {
    public final /* synthetic */ ng8 a;

    public lg8(ng8 ng8Var) {
        this.a = ng8Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        UsbDevice usbDeviceA = ng8.a(intent);
        if (usbDeviceA == null || usbDeviceA.getVendorId() != 4176) {
            return;
        }
        if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
            this.a.c(usbDeviceA);
            return;
        }
        if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action)) {
            ng8 ng8Var = this.a;
            ms8.A(4, ng8.g, "UsbDevice detached: {}", usbDeviceA.getDeviceName());
            if (ng8Var.d.remove(usbDeviceA) != null) {
                Iterator it = ng8Var.c.iterator();
                while (it.hasNext()) {
                    wg8 wg8Var = (wg8) ((yg8) it.next()).c.remove(usbDeviceA);
                    if (wg8Var != null) {
                        wg8Var.close();
                    }
                }
            }
            synchronized (ng8Var.e) {
                try {
                    if (ng8Var.e.remove(usbDeviceA) && ng8Var.e.isEmpty()) {
                        context.unregisterReceiver(ng8Var.b);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
