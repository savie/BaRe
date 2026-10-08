package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mg8 extends BroadcastReceiver {
    public final /* synthetic */ ng8 a;

    public mg8(ng8 ng8Var) {
        this.a = ng8Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("com.yubico.yubikey.USB_PERMISSION".equals(intent.getAction())) {
            UsbDevice usbDeviceA = ng8.a(intent);
            UsbManager usbManager = (UsbManager) context.getSystemService("usb");
            if (usbDeviceA != null) {
                ng8 ng8Var = this.a;
                boolean zHasPermission = usbManager.hasPermission(usbDeviceA);
                ms8.B(4, ng8.g, "Permission result for {}, permitted: {}", usbDeviceA.getDeviceName(), Boolean.valueOf(zHasPermission));
                Set set = (Set) ng8Var.d.get(usbDeviceA);
                if (set != null) {
                    synchronized (set) {
                        try {
                            Iterator it = set.iterator();
                            while (it.hasNext()) {
                                ((xg8) it.next()).a(zHasPermission);
                            }
                            set.clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                synchronized (ng8Var.e) {
                    try {
                        if (ng8Var.e.remove(usbDeviceA) && ng8Var.e.isEmpty()) {
                            context.unregisterReceiver(ng8Var.b);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }
}
