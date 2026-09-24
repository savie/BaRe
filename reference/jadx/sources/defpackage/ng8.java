package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Build;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ng8 {
    public static ng8 f;
    public static final l15 g = o15.b(ng8.class);
    public final lg8 a = new lg8(this);
    public final mg8 b = new mg8(this);
    public final HashSet c = new HashSet();
    public final WeakHashMap d = new WeakHashMap();
    public final HashSet e = new HashSet();

    public static UsbDevice a(Intent intent) {
        return Build.VERSION.SDK_INT > 33 ? (UsbDevice) intent.getParcelableExtra("device", UsbDevice.class) : (UsbDevice) intent.getParcelableExtra("device");
    }

    public static synchronized ng8 b() {
        try {
            if (f == null) {
                f = new ng8();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f;
    }

    public static void d(Context context, yg8 yg8Var) {
        ng8 ng8VarB = b();
        synchronized (ng8VarB) {
            try {
                if (ng8VarB.c.isEmpty()) {
                    Collection<UsbDevice> collectionValues = ((UsbManager) context.getSystemService("usb")).getDeviceList().values();
                    IntentFilter intentFilter = new IntentFilter("android.hardware.usb.action.USB_DEVICE_ATTACHED");
                    intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
                    context.registerReceiver(ng8VarB.a, intentFilter);
                    for (UsbDevice usbDevice : collectionValues) {
                        if (usbDevice.getVendorId() == 4176) {
                            ng8VarB.c(usbDevice);
                        }
                    }
                }
                ng8VarB.c.add(yg8Var);
                Iterator it = ng8VarB.d.keySet().iterator();
                while (it.hasNext()) {
                    yg8Var.a((UsbDevice) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void e(Context context, UsbDevice usbDevice, xg8 xg8Var) {
        ng8 ng8VarB = b();
        synchronized (ng8VarB) {
            Set set = (Set) ng8VarB.d.get(usbDevice);
            Objects.requireNonNull(set);
            synchronized (set) {
                set.add(xg8Var);
            }
            synchronized (ng8VarB.e) {
                try {
                    if (!ng8VarB.e.contains(usbDevice)) {
                        if (ng8VarB.e.isEmpty()) {
                            mg8 mg8Var = ng8VarB.b;
                            if (Build.VERSION.SDK_INT >= 33) {
                                context.registerReceiver(mg8Var, new IntentFilter("com.yubico.yubikey.USB_PERMISSION"), 4);
                            } else {
                                context.registerReceiver(mg8Var, new IntentFilter("com.yubico.yubikey.USB_PERMISSION"));
                            }
                        }
                        ms8.A(4, g, "Requesting permission for UsbDevice: {}", usbDevice.getDeviceName());
                        int i = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
                        Intent intent = new Intent("com.yubico.yubikey.USB_PERMISSION");
                        intent.setPackage(context.getPackageName());
                        ((UsbManager) context.getSystemService("usb")).requestPermission(usbDevice, PendingIntent.getBroadcast(context, 0, intent, i));
                        ng8VarB.e.add(usbDevice);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void f(Context context, yg8 yg8Var) {
        ng8 ng8VarB = b();
        synchronized (ng8VarB) {
            try {
                ng8VarB.c.remove(yg8Var);
                Iterator it = ng8VarB.d.keySet().iterator();
                while (it.hasNext()) {
                    wg8 wg8Var = (wg8) yg8Var.c.remove((UsbDevice) it.next());
                    if (wg8Var != null) {
                        wg8Var.close();
                    }
                }
                if (ng8VarB.c.isEmpty()) {
                    context.unregisterReceiver(ng8VarB.a);
                    ng8VarB.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(UsbDevice usbDevice) {
        ms8.A(4, g, "UsbDevice attached: {}", usbDevice.getDeviceName());
        this.d.put(usbDevice, new HashSet());
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((yg8) it.next()).a(usbDevice);
        }
    }
}
