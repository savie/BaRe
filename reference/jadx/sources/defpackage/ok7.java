package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.HandlerThread;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import com.nimbusds.jose.Header;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ok7 extends mk7 {
    @Override // defpackage.mk7
    public final HashMap a() throws IOException {
        if (!mp6.g) {
            return null;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        File fileCreateTempFile = File.createTempFile("settings_ssaid_", ".xml", SwiftApp.Companion.c().getCacheDir());
        fileCreateTempFile.getClass();
        try {
            try {
                g00 g00Var = g00.a;
                InputStream inputStreamX = xx3.x(new jr7(new File(new File(new File((File) mk7.a.getValue(), "system"), "users"), String.valueOf(g00.i())).getAbsolutePath(), "settings_ssaid.xml"));
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    try {
                        inputStreamX.getClass();
                        cy0.j(inputStreamX, fileOutputStream, 262144);
                        fileOutputStream.close();
                        inputStreamX.close();
                        if (!fileCreateTempFile.exists()) {
                            throw new IllegalStateException(("File not found: " + fileCreateTempFile).toString());
                        }
                        if (!fileCreateTempFile.canRead() || !fileCreateTempFile.canWrite()) {
                            throw new IllegalStateException(("Failed r/w access check for file: " + fileCreateTempFile).toString());
                        }
                        Object obj = new Object();
                        HandlerThread handlerThread = new HandlerThread("SettingsProvider2", 10);
                        SparseArray sparseArray = new SparseArray();
                        handlerThread.start();
                        try {
                            int i = g00.i();
                            int i2 = va7.l;
                            int i3 = i | 805306368;
                            int i4 = i3 >>> 28;
                            int i5 = (i4 == 0 || i4 == 2 || i4 == 3 || i4 == 4) ? -1 : Header.MAX_HEADER_STRING_LENGTH;
                            SwiftApp.Companion companion2 = SwiftApp.d;
                            sparseArray.put(i3, new va7(SwiftApp.Companion.c(), obj, fileCreateTempFile, i5, handlerThread.getLooper()));
                            va7 va7Var = (va7) sparseArray.get(g00.i() | 805306368);
                            Collection collectionValues = va7Var.d.values();
                            collectionValues.getClass();
                            if (collectionValues.isEmpty()) {
                                throw new IllegalStateException("Empty settings");
                            }
                            Collection<ua7> collectionValues2 = va7Var.d.values();
                            collectionValues2.getClass();
                            HashMap map = new HashMap();
                            for (ua7 ua7Var : collectionValues2) {
                                String str = ua7Var.e;
                                String str2 = ua7Var.d;
                                String str3 = ua7Var.b;
                                kk7 kk7Var = new kk7(str, str2, str3);
                                ai6 ai6Var = lk7.a;
                                if ((str2 == null || str2.length() == 0 || str3 == null || !lk7.a.b(str3)) ? false : true) {
                                    map.put(ua7Var.d, kk7Var);
                                }
                            }
                            if (map.isEmpty()) {
                                map = null;
                            } else {
                                vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Built with " + map.size() + " valid entries", null, 4, null);
                            }
                            handlerThread.quitSafely();
                            fileCreateTempFile.delete();
                            return map;
                        } catch (Throwable th) {
                            handlerThread.quitSafely();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            rs9.c(fileOutputStream, th2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        rs9.c(inputStreamX, th4);
                        throw th5;
                    }
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "SsaidHelper", "buildMap", e, null, 8, null);
                fileCreateTempFile.delete();
                return null;
            }
        } catch (Throwable th6) {
            fileCreateTempFile.delete();
            throw th6;
        }
    }

    /* JADX WARN: Code duplicated, block: B:182:0x03ba A[Catch: all -> 0x0248, TRY_ENTER, TryCatch #5 {all -> 0x0248, blocks: (B:74:0x01cf, B:85:0x01ee, B:87:0x0225, B:88:0x0232, B:90:0x0238, B:96:0x024c, B:182:0x03ba, B:183:0x03bf), top: B:230:0x01cf }] */
    /* JADX WARN: Code duplicated, block: B:251:0x024b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0225 A[Catch: all -> 0x0248, TryCatch #5 {all -> 0x0248, blocks: (B:74:0x01cf, B:85:0x01ee, B:87:0x0225, B:88:0x0232, B:90:0x0238, B:96:0x024c, B:182:0x03ba, B:183:0x03bf), top: B:230:0x01cf }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0238 A[Catch: all -> 0x0248, TryCatch #5 {all -> 0x0248, blocks: (B:74:0x01cf, B:85:0x01ee, B:87:0x0225, B:88:0x0232, B:90:0x0238, B:96:0x024c, B:182:0x03ba, B:183:0x03bf), top: B:230:0x01cf }] */
    @Override // defpackage.mk7
    public final void b(String str, String str2) throws IOException {
        Object next;
        char c;
        int i;
        va7 va7Var;
        Collection collectionValues;
        Iterator it;
        Object next2;
        ua7 ua7Var;
        Object next3;
        str.getClass();
        str2.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        File fileCreateTempFile = File.createTempFile("settings_ssaid_", ".xml", SwiftApp.Companion.c().getCacheDir());
        fileCreateTempFile.getClass();
        try {
            try {
                if (!mp6.g) {
                    fileCreateTempFile.delete();
                    return;
                }
                if (!lk7.a.b(str2)) {
                    throw new IllegalStateException("Invalid backed up ssaid value");
                }
                g00 g00Var = g00.a;
                InputStream inputStreamX = xx3.x(new jr7(new File(new File(new File((File) mk7.a.getValue(), "system"), "users"), String.valueOf(g00.i())).getAbsolutePath(), "settings_ssaid.xml"));
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    try {
                        inputStreamX.getClass();
                        cy0.j(inputStreamX, fileOutputStream, 262144);
                        fileOutputStream.close();
                        inputStreamX.close();
                        if (!fileCreateTempFile.exists()) {
                            throw new IllegalStateException(("File not found: " + fileCreateTempFile).toString());
                        }
                        if (!fileCreateTempFile.canRead() || !fileCreateTempFile.canWrite()) {
                            throw new IllegalStateException(("Failed r/w access check for file: " + fileCreateTempFile).toString());
                        }
                        Object obj = new Object();
                        HandlerThread handlerThread = new HandlerThread("SettingsProvider2", 10);
                        SparseArray sparseArray = new SparseArray();
                        handlerThread.start();
                        try {
                            int i2 = g00.i();
                            int i3 = va7.l;
                            int i4 = i2 | 805306368;
                            int i5 = i4 >>> 28;
                            int i6 = (i5 == 0 || i5 == 2 || i5 == 3 || i5 == 4) ? -1 : 20000;
                            SwiftApp.Companion companion2 = SwiftApp.d;
                            sparseArray.put(i4, new va7(SwiftApp.Companion.c(), obj, fileCreateTempFile, i6, handlerThread.getLooper()));
                            va7 va7Var2 = (va7) sparseArray.get(805306368 | g00.i());
                            ArrayMap arrayMap = va7Var2.d;
                            Collection collectionValues2 = arrayMap.values();
                            collectionValues2.getClass();
                            if (collectionValues2.isEmpty()) {
                                throw new IllegalStateException("Empty settings");
                            }
                            Collection collectionValues3 = arrayMap.values();
                            collectionValues3.getClass();
                            Iterator it2 = collectionValues3.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it2.next();
                            } while (!pe4.d(((ua7) next).d, str));
                            ua7 ua7Var2 = (ua7) next;
                            g00 g00Var2 = g00.a;
                            boolean zC = false;
                            PackageInfo packageInfoQ = g00.q(0, str);
                            if (packageInfoQ == null) {
                                throw new IllegalStateException(("App not installed: " + str).toString());
                            }
                            ApplicationInfo applicationInfo = packageInfoQ.applicationInfo;
                            Integer numValueOf = applicationInfo != null ? Integer.valueOf(applicationInfo.uid) : null;
                            if (numValueOf == null) {
                                throw new IllegalStateException(("App uid not available: " + str).toString());
                            }
                            int iIntValue = numValueOf.intValue();
                            if (ua7Var2 == null) {
                                vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Adding ssaid", null, 4, null);
                                zC = va7Var2.c(String.valueOf(iIntValue), str2, str);
                            } else if (pe4.d(ua7Var2.b, str2)) {
                                vr6.i$default(vr6.INSTANCE, "SsaidHelper", "No change in ssaid", null, 4, null);
                                handlerThread.quitSafely();
                                fileCreateTempFile.delete();
                                return;
                            } else {
                                vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Updating ssaid", null, 4, null);
                                String strValueOf = String.valueOf(iIntValue);
                                if (arrayMap.indexOfKey(strValueOf) >= 0) {
                                    zC = va7Var2.c(strValueOf, str2, str);
                                } else {
                                    Log.e("SettingsState", "Settings isn't locked!");
                                }
                            }
                            if (!zC) {
                                throw new IllegalStateException("Failed restoring ssaid");
                            }
                            handlerThread.quitSafely();
                            if (!fileCreateTempFile.exists()) {
                                throw new IllegalStateException(("File not found: " + fileCreateTempFile).toString());
                            }
                            if (!fileCreateTempFile.canRead() || !fileCreateTempFile.canWrite()) {
                                throw new IllegalStateException(("Failed r/w access check for file: " + fileCreateTempFile).toString());
                            }
                            Object obj2 = new Object();
                            HandlerThread handlerThread2 = new HandlerThread("SettingsProvider2", 10);
                            SparseArray sparseArray2 = new SparseArray();
                            handlerThread2.start();
                            try {
                                int iE = va7.e(g00.i());
                                int i7 = iE >>> 28;
                                if (i7 != 0 && i7 != 2 && i7 != 3) {
                                    c = 4;
                                    if (i7 != 4) {
                                        i = 20000;
                                    }
                                    SwiftApp.Companion companion3 = SwiftApp.d;
                                    sparseArray2.put(iE, new va7(SwiftApp.Companion.c(), obj2, fileCreateTempFile, i, handlerThread2.getLooper()));
                                    va7Var = (va7) sparseArray2.get(va7.e(g00.i()));
                                    collectionValues = va7Var.d.values();
                                    collectionValues.getClass();
                                    if (!collectionValues.isEmpty()) {
                                        throw new IllegalStateException("Empty settings");
                                    }
                                    Collection collectionValues4 = va7Var.d.values();
                                    collectionValues4.getClass();
                                    it = collectionValues4.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next2 = null;
                                            break;
                                        }
                                        next2 = it.next();
                                    } while (!pe4.d(((ua7) next2).d, str));
                                    ua7Var = (ua7) next2;
                                    handlerThread2.quitSafely();
                                    if (ua7Var != null || !pe4.d(ua7Var.b, str2)) {
                                        throw new IllegalStateException("Verification of new ssaid failed");
                                    }
                                    FileInputStream fileInputStream = new FileInputStream(fileCreateTempFile);
                                    try {
                                        vr6.i$default(vr6.INSTANCE, "SsaidHelper", "Committing app ssaid, requires device reboot to take effect", null, 4, null);
                                        OutputStream outputStreamD = jd4.D(b05.h());
                                        try {
                                            outputStreamD.getClass();
                                            cy0.j(fileInputStream, outputStreamD, 262144);
                                            rs9.c(outputStreamD, null);
                                            rs9.c(fileInputStream, null);
                                            InputStream inputStreamX2 = xx3.x(b05.h());
                                            try {
                                                FileOutputStream fileOutputStream2 = new FileOutputStream(fileCreateTempFile);
                                                try {
                                                    inputStreamX2.getClass();
                                                    cy0.j(inputStreamX2, fileOutputStream2, 262144);
                                                    rs9.c(fileOutputStream2, null);
                                                    rs9.c(inputStreamX2, null);
                                                    if (!fileCreateTempFile.exists()) {
                                                        throw new IllegalStateException(("File not found: " + fileCreateTempFile).toString());
                                                    }
                                                    if (!fileCreateTempFile.canRead() || !fileCreateTempFile.canWrite()) {
                                                        throw new IllegalStateException(("Failed r/w access check for file: " + fileCreateTempFile).toString());
                                                    }
                                                    Object obj3 = new Object();
                                                    HandlerThread handlerThread3 = new HandlerThread("SettingsProvider2", 10);
                                                    SparseArray sparseArray3 = new SparseArray();
                                                    handlerThread3.start();
                                                    try {
                                                        g00 g00Var3 = g00.a;
                                                        int iE2 = va7.e(g00.i());
                                                        int i8 = iE2 >>> 28;
                                                        int i9 = (i8 == 0 || i8 == 2 || i8 == 3 || i8 == 4) ? -1 : 20000;
                                                        SwiftApp.Companion companion4 = SwiftApp.d;
                                                        sparseArray3.put(iE2, new va7(SwiftApp.Companion.c(), obj3, fileCreateTempFile, i9, handlerThread3.getLooper()));
                                                        va7 va7Var3 = (va7) sparseArray3.get(va7.e(g00.i()));
                                                        Collection collectionValues5 = va7Var3.d.values();
                                                        collectionValues5.getClass();
                                                        if (collectionValues5.isEmpty()) {
                                                            throw new IllegalStateException("Empty settings");
                                                        }
                                                        Collection collectionValues6 = va7Var3.d.values();
                                                        collectionValues6.getClass();
                                                        Iterator it3 = collectionValues6.iterator();
                                                        do {
                                                            if (!it3.hasNext()) {
                                                                next3 = null;
                                                                break;
                                                            }
                                                            next3 = it3.next();
                                                        } while (!pe4.d(((ua7) next3).d, str));
                                                        ua7 ua7Var3 = (ua7) next3;
                                                        String str3 = ua7Var3 != null ? ua7Var3.b : null;
                                                        handlerThread3.quitSafely();
                                                        if (!pe4.d(str3, str2)) {
                                                            throw new IllegalStateException("Verification of committed ssaid failed");
                                                        }
                                                        fileCreateTempFile.delete();
                                                        return;
                                                    } catch (Throwable th) {
                                                        handlerThread3.quitSafely();
                                                        throw th;
                                                    }
                                                } catch (Throwable th2) {
                                                    try {
                                                        throw th2;
                                                    } catch (Throwable th3) {
                                                        rs9.c(fileOutputStream2, th2);
                                                        throw th3;
                                                    }
                                                }
                                            } catch (Throwable th4) {
                                                try {
                                                    throw th4;
                                                } catch (Throwable th5) {
                                                    rs9.c(inputStreamX2, th4);
                                                    throw th5;
                                                }
                                            }
                                        } catch (Throwable th6) {
                                            try {
                                                throw th6;
                                            } catch (Throwable th7) {
                                                rs9.c(outputStreamD, th6);
                                                throw th7;
                                            }
                                        }
                                    } catch (Throwable th8) {
                                        try {
                                            throw th8;
                                        } catch (Throwable th9) {
                                            rs9.c(fileInputStream, th8);
                                            throw th9;
                                        }
                                    }
                                }
                                c = 4;
                                i = -1;
                                SwiftApp.Companion companion5 = SwiftApp.d;
                                sparseArray2.put(iE, new va7(SwiftApp.Companion.c(), obj2, fileCreateTempFile, i, handlerThread2.getLooper()));
                                va7Var = (va7) sparseArray2.get(va7.e(g00.i()));
                                collectionValues = va7Var.d.values();
                                collectionValues.getClass();
                                if (!collectionValues.isEmpty()) {
                                    throw new IllegalStateException("Empty settings");
                                }
                                Collection collectionValues7 = va7Var.d.values();
                                collectionValues7.getClass();
                                it = collectionValues7.iterator();
                                do {
                                    if (it.hasNext()) {
                                        next2 = null;
                                        break;
                                    }
                                    next2 = it.next();
                                } while (!pe4.d(((ua7) next2).d, str));
                                ua7Var = (ua7) next2;
                                handlerThread2.quitSafely();
                                if (ua7Var != null) {
                                }
                                throw new IllegalStateException("Verification of new ssaid failed");
                            } catch (Throwable th10) {
                                handlerThread2.quitSafely();
                                throw th10;
                            }
                        } catch (Throwable th11) {
                            handlerThread.quitSafely();
                            throw th11;
                        }
                    } catch (Throwable th12) {
                        try {
                            throw th12;
                        } catch (Throwable th13) {
                            rs9.c(fileOutputStream, th12);
                            throw th13;
                        }
                    }
                } catch (Throwable th14) {
                    try {
                        throw th14;
                    } catch (Throwable th15) {
                        rs9.c(inputStreamX, th14);
                        throw th15;
                    }
                }
            } catch (Throwable th16) {
                fileCreateTempFile.delete();
                throw th16;
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "SsaidHelper", "restoreSsaid", e, null, 8, null);
            fileCreateTempFile.delete();
        }
    }
}
