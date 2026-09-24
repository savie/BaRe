package defpackage;

import android.content.SharedPreferences;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yn7 {
    /* JADX WARN: Code duplicated, block: B:117:0x0292 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:? A[LOOP:4: B:90:0x026d->B:118:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0207  */
    /* JADX WARN: Code duplicated, block: B:89:0x0269  */
    /* JADX WARN: Code duplicated, block: B:92:0x0273  */
    /* JADX WARN: Code duplicated, block: B:95:0x028a  */
    public static List a() {
        q63 q63Var;
        Iterator it;
        String manufacturerName;
        boolean Z;
        File directory;
        UsbDevice usbDeviceF = f();
        List listG = g();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = listG.iterator();
        while (true) {
            boolean Z2 = false;
            String str = null;
            zn7 zn7Var = null;
            str = null;
            if (!it2.hasNext()) {
                break;
            }
            StorageVolume storageVolume = (StorageVolume) it2.next();
            b("Assessing volume: " + storageVolume + ", state: " + storageVolume.getState(), arrayList);
            if (b67.c()) {
                directory = storageVolume.getDirectory();
            } else {
                try {
                    Field declaredField = StorageVolume.class.getDeclaredField("mPath");
                    declaredField.getClass();
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(storageVolume);
                    obj.getClass();
                    directory = (File) obj;
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "Storage", "getVolumeDirectory: ".concat(io4.b(e)), null, 4, null);
                    directory = null;
                }
            }
            if (directory == null) {
                b("Couldn't find volDir for " + storageVolume, arrayList);
            } else {
                q63 q63Var2 = new q63(directory, 1);
                if (!q63Var2.j() || !q63Var2.n().getFile().canRead()) {
                    b("Volume directory not found or isn't accessible at " + q63Var2 + ". Exists=" + q63Var2.j() + ", canRead=" + q63Var2.n().getFile().canRead(), arrayList);
                }
                boolean zIsRemovable = storageVolume.isRemovable();
                if (usbDeviceF == null) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    String description = storageVolume.getDescription(SwiftApp.Companion.c());
                    if (description != null && nq7.Z(description, "usb", true)) {
                        Z2 = true;
                    }
                } else {
                    String manufacturerName2 = usbDeviceF.getManufacturerName();
                    if (manufacturerName2 != null) {
                        if (manufacturerName2.length() > 0 && !nq7.j0(manufacturerName2)) {
                            str = manufacturerName2;
                        }
                        if (str != null) {
                            SwiftApp.Companion companion2 = SwiftApp.d;
                            String description2 = storageVolume.getDescription(SwiftApp.Companion.c());
                            description2.getClass();
                            Z2 = nq7.Z(description2, str, true);
                        }
                    }
                }
                zn7Var = new zn7(q63Var2, zIsRemovable, Z2);
            }
            if (zn7Var != null) {
                arrayList2.add(zn7Var);
            }
        }
        if (arrayList2.isEmpty()) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, "Storage", dj7.j("findStoragesN: ", arrayList2.size(), "/", " accessible storages found! Fallback to legacy search.", listG.size()), null, 4, null);
            if (!arrayList.isEmpty()) {
                vr6.i$default(vr6Var, "Storage", "Relevant logs below", null, 4, null);
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    vr6.i$default(vr6.INSTANCE, "Storage", (String) it3.next(), null, 4, null);
                }
            }
            arrayList2 = new ArrayList();
            SwiftApp.Companion companion3 = SwiftApp.d;
            File[] externalFilesDirs = SwiftApp.Companion.c().getExternalFilesDirs(null);
            externalFilesDirs.getClass();
            List listP0 = x50.p0(externalFilesDirs);
            Object systemService = SwiftApp.Companion.c().getSystemService((Class<Object>) StorageManager.class);
            systemService.getClass();
            StorageManager storageManager = (StorageManager) systemService;
            UsbDevice usbDeviceF2 = f();
            for (File file : (ArrayList) listP0) {
                try {
                    boolean zIsExternalStorageRemovable = Environment.isExternalStorageRemovable(file);
                    q63 q63Var3 = new q63(file, 2);
                    StorageVolume storageVolume2 = storageManager.getStorageVolume(file);
                    if (usbDeviceF2 == null) {
                        if (storageVolume2 != null) {
                            SwiftApp.Companion companion4 = SwiftApp.d;
                            String description3 = storageVolume2.getDescription(SwiftApp.Companion.c());
                            if (description3 == null || !nq7.Z(description3, "usb", true)) {
                                Z = false;
                            } else {
                                Z = true;
                            }
                        } else {
                            Z = false;
                        }
                    } else if (storageVolume2 == null || (manufacturerName = usbDeviceF2.getManufacturerName()) == null) {
                        Z = false;
                    } else {
                        if (manufacturerName.length() <= 0 || nq7.j0(manufacturerName)) {
                            manufacturerName = null;
                        }
                        if (manufacturerName != null) {
                            SwiftApp.Companion companion5 = SwiftApp.d;
                            String description4 = storageVolume2.getDescription(SwiftApp.Companion.c());
                            description4.getClass();
                            Z = nq7.Z(description4, manufacturerName, true);
                        } else {
                            Z = false;
                        }
                    }
                    arrayList2.add(new zn7(q63Var3, zIsExternalStorageRemovable, Z));
                } catch (Exception e2) {
                    vr6.e$default(vr6.INSTANCE, "Storage", "findStoragesLegacy: Error in isRemovable check: ".concat(io4.b(e2)), null, 4, null);
                }
            }
            if (arrayList2.isEmpty() || arrayList2.isEmpty()) {
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                SwiftApp.Companion companion6 = SwiftApp.d;
                q63Var = new q63(externalStorageDirectory, eq3.k("Android/data/", SwiftApp.Companion.c().getPackageName(), "/files"), 2);
                if (arrayList2.isEmpty()) {
                    arrayList2.add(0, new zn7(q63Var, false, false));
                } else {
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                        if (((zn7) it.next()).a.v().equals(q63Var.v())) {
                        }
                    }
                    arrayList2.add(0, new zn7(q63Var, false, false));
                }
            } else {
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    if (!((zn7) it4.next()).b) {
                    }
                }
                File externalStorageDirectory2 = Environment.getExternalStorageDirectory();
                SwiftApp.Companion companion7 = SwiftApp.d;
                q63Var = new q63(externalStorageDirectory2, eq3.k("Android/data/", SwiftApp.Companion.c().getPackageName(), "/files"), 2);
                if (arrayList2.isEmpty()) {
                    arrayList2.add(0, new zn7(q63Var, false, false));
                } else {
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                        if (((zn7) it.next()).a.v().equals(q63Var.v())) {
                        }
                    }
                    arrayList2.add(0, new zn7(q63Var, false, false));
                }
            }
        }
        return el1.n1(arrayList2, ms8.m(wn7.c, xn7.c));
    }

    public static final void b(String str, ArrayList arrayList) {
        arrayList.add(str);
        Log.i("Storage", "findStoragesN: ".concat(str));
    }

    public static List c(String str) {
        return mp6.a.h(new String[]{(str == null || str.length() == 0) ? "mount" : "mount | grep ".concat(str)}, ip6.ANY);
    }

    public static q63 e() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("preferred_storage_dir", null);
            if (string == null) {
                return null;
            }
            if (string.length() <= 0) {
                string = null;
            }
            if (string != null) {
                return new q63(string, 2);
            }
            return null;
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static UsbDevice f() {
        HashMap<String, UsbDevice> deviceList;
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            UsbManager usbManager = (UsbManager) SwiftApp.Companion.c().getSystemService(UsbManager.class);
            if (usbManager != null && (deviceList = usbManager.getDeviceList()) != null) {
                for (UsbDevice usbDevice : deviceList.values()) {
                    usbDevice.getClass();
                    UsbDevice usbDevice2 = usbDevice;
                    int interfaceCount = usbDevice2.getInterfaceCount();
                    for (int i = 0; i < interfaceCount; i++) {
                        if (usbDevice2.getInterface(i).getInterfaceClass() == 8) {
                            return usbDevice2;
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "Storage", io4.b(e), null, 4, null);
            return null;
        }
    }

    public static List g() {
        SwiftApp.Companion companion = SwiftApp.d;
        Object systemService = SwiftApp.Companion.c().getSystemService((Class<Object>) StorageManager.class);
        systemService.getClass();
        StorageManager storageManager = (StorageManager) systemService;
        List<StorageVolume> storageVolumes = storageManager.getStorageVolumes();
        storageVolumes.getClass();
        if (b67.c()) {
            List<StorageVolume> recentStorageVolumes = storageManager.getRecentStorageVolumes();
            recentStorageVolumes.getClass();
            for (StorageVolume storageVolume : recentStorageVolumes) {
                if (!pe4.d(storageVolume.getState(), "unknown") && !storageVolumes.contains(storageVolume)) {
                    storageVolumes.add(storageVolume);
                }
            }
        }
        int i = 0;
        for (StorageVolume storageVolume2 : storageVolumes) {
            i++;
            Log.i("Storage", "searchStorageVolumes: volume[" + i + "]=" + storageVolume2 + ", state=" + storageVolume2.getState());
        }
        return storageVolumes;
    }

    public final zn7 d() {
        Object next;
        List listA = a();
        zn7 zn7Var = (zn7) el1.S0(listA);
        q63 q63VarE = e();
        if (q63VarE == null) {
            return zn7Var;
        }
        Iterator it = listA.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((zn7) next).l().v().equals(q63VarE.v()));
        zn7 zn7Var2 = (zn7) next;
        if (zn7Var2 == null) {
            String str = "Saved storage not found at " + q63VarE + ". Reverting to default storage at " + zn7Var.l();
            vr6.e$default(vr6.INSTANCE, "Storage", str, null, 4, null);
            h(null);
            Const.E("Storage: ".concat(str));
        }
        if (zn7Var2 != null) {
            zn7Var = zn7Var2;
        }
        if (zn7Var.b) {
            eo7.a.a();
        }
        return zn7Var;
    }

    public final synchronized void h(zn7 zn7Var) {
        q63 q63VarL;
        if (zn7Var != null) {
            try {
                if (zn7Var.b) {
                    eo7.a.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        String strV = (zn7Var == null || (q63VarL = zn7Var.l()) == null) ? null : q63VarL.v();
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString("preferred_storage_dir", strV).commit();
    }
}
