package defpackage;

import android.content.IntentFilter;
import android.os.storage.StorageManager;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class eo7 {
    public static boolean b;
    public static final eo7 a = new eo7();
    public static final ix6 c = new ix6();

    public static void b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addDataScheme("file");
        Const.C(new co7(), intentFilter);
    }

    public final synchronized void a() {
        if (b) {
            return;
        }
        b = true;
        vr6.w$default(vr6.INSTANCE, "StorageEventListener", "Started", null, 4, null);
        if (b67.c()) {
            SwiftApp.Companion companion = SwiftApp.d;
            Object systemService = SwiftApp.Companion.c().getSystemService((Class<Object>) StorageManager.class);
            systemService.getClass();
            ((StorageManager) systemService).registerStorageVolumeCallback(SwiftApp.Companion.c().getMainExecutor(), new do7());
        } else {
            b();
        }
    }
}
