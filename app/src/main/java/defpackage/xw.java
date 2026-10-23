package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.apptasks.AppsWorkingDir;
import org.swiftapps.swiftbackup.apptasks.notifications.NotificationPolicyProxy;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.compress.Packer;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xw {
    public final jz a;
    public final c40 b;
    public final ry7 c;
    public final String d;
    public final boolean e;
    public final ck f;
    public final st3 g;
    public final ji h;
    public final boolean i;
    public final CloudMetadata j;
    public final hk k;
    public final gv7 l;
    public final gv7 m;
    public final gv7 n;
    public final LinkedHashSet o;
    public final gv7 p;
    public final nm6 q;
    public final boolean r;
    public boolean s;
    public boolean t;
    public final uw u;

    public xw(jz jzVar, c40 c40Var, ry7 ry7Var, String str, boolean z, ck ckVar) {
        CloudMetadata metadata;
        tw twVar = new tw(4, ox7.a, ox7.class, "extractWithFileCount", "extractWithFileCount(Lorg/swiftapps/filesystem/File;Ljava/lang/String;Lorg/swiftapps/swiftbackup/shell/RootHelper$ShellType;Lkotlin/jvm/functions/Function3;)V", 0);
        ry7Var.getClass();
        str.getClass();
        this.a = jzVar;
        this.b = c40Var;
        this.c = ry7Var;
        this.d = str;
        this.e = z;
        this.f = ckVar;
        this.g = twVar;
        this.h = jzVar.b;
        AppCloudBackup appCloudBackup = jzVar.h;
        int i = 1;
        boolean z2 = false;
        this.i = appCloudBackup != null;
        if (appCloudBackup != null) {
            metadata = appCloudBackup != null ? appCloudBackup.getMetadata() : null;
            if (metadata == null) {
                c6.f("Required value was null.");
                throw null;
            }
        } else {
            metadata = null;
        }
        this.j = metadata;
        this.k = jzVar.g;
        int i2 = 5;
        this.l = new gv7(new lf(this, i2));
        this.m = new gv7(new ej(this, i2));
        this.n = new gv7(new fj(this, 6));
        this.o = new LinkedHashSet();
        this.p = new gv7(new sm(i));
        this.q = new nm6(jzVar);
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z2 = sharedPreferences.getBoolean("KEY_BACKUP_APP_CACHE", false);
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences2.getBoolean("backup_app_cache", z2);
                this.r = z2;
                this.u = new uw(this);
            } catch (ClassCastException unused) {
            }
        } catch (ClassCastException unused2) {
        }
    }

    public static void c(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            q63 q63Var = (q63) it.next();
            q63Var.getClass();
            cy0.e(q63Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001c  */
    public final void a(iu iuVar, q63 q63Var, String str) {
        Long dataBackupSize;
        int i = ww.c[iuVar.ordinal()];
        CloudMetadata cloudMetadata = this.j;
        boolean z = this.i;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            q.j();
                            return;
                        }
                    } else if (!z) {
                        LocalMetadata localMetadataF = f();
                        if (localMetadataF != null) {
                            dataBackupSize = localMetadataF.getExpBackupSize();
                        }
                    } else if (cloudMetadata != null) {
                        dataBackupSize = cloudMetadata.getExpSize();
                    }
                    dataBackupSize = null;
                } else if (!z) {
                    LocalMetadata localMetadataF2 = f();
                    if (localMetadataF2 != null) {
                        dataBackupSize = localMetadataF2.getMediaBackupSize();
                    } else {
                        dataBackupSize = null;
                    }
                } else if (cloudMetadata != null) {
                    dataBackupSize = cloudMetadata.getMediaSize();
                } else {
                    dataBackupSize = null;
                }
            } else if (!z) {
                LocalMetadata localMetadataF3 = f();
                if (localMetadataF3 != null) {
                    dataBackupSize = localMetadataF3.getExtDataBackupSize();
                } else {
                    dataBackupSize = null;
                }
            } else if (cloudMetadata != null) {
                dataBackupSize = cloudMetadata.getExtDataSize();
            } else {
                dataBackupSize = null;
            }
        } else if (!z) {
            LocalMetadata localMetadataF4 = f();
            if (localMetadataF4 != null) {
                dataBackupSize = localMetadataF4.getDataBackupSize();
            } else {
                dataBackupSize = null;
            }
        } else if (cloudMetadata != null) {
            dataBackupSize = cloudMetadata.getDataSize();
        } else {
            dataBackupSize = null;
        }
        long jH = io4.h(dataBackupSize);
        g00 g00Var = g00.a;
        String strB = g00.b(q63Var, Long.valueOf(jH));
        if (str == null || nq7.j0(str)) {
            str = null;
        }
        if (strB == null || nq7.j0(strB)) {
            strB = null;
        }
        String strY0 = el1.Y0(x50.p0(new String[]{str, strB}), "; ", null, null, null, 62);
        if (nq7.j0(strY0)) {
            strY0 = null;
        }
        uw uwVar = this.u;
        uwVar.getClass();
        String str2 = uwVar.e;
        if (str2 == null || str2.length() == 0) {
            String name = uwVar.i.h.getName();
            String displayString$default = iu.toDisplayString$default(iuVar, false, 1, null);
            if (strY0 == null) {
                strY0 = "File corrupt";
            }
            uwVar.e = name + ": " + displayString$default + " (" + strY0 + ")";
            return;
        }
        String str3 = uwVar.e;
        String displayString$default2 = iu.toDisplayString$default(iuVar, false, 1, null);
        if (strY0 == null) {
            strY0 = "File corrupt";
        }
        uwVar.e = str3 + ", " + displayString$default2 + " (" + strY0 + ")";
    }

    public final boolean b(q63 q63Var, String str, q63 q63Var2, iu iuVar) {
        Object bn6Var;
        long jA;
        Object next;
        q63Var.getClass();
        str.getClass();
        try {
            HashSet hashSet = mz6.a;
            Iterator it = mz6.t(q63Var).i.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!pe4.d(((xy6) next).a, str));
            xy6 xy6Var = (xy6) next;
            bn6Var = xy6Var != null ? Long.valueOf(xy6Var.g) : null;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Throwable thA = en6.a(bn6Var);
        if (thA == null) {
            thA = null;
        }
        Long l = (Long) (bn6Var instanceof bn6 ? null : bn6Var);
        if (l == null || l.longValue() <= 0) {
            if (thA != null) {
                vr6.w$default(vr6.INSTANCE, "SpaceChecker", dj7.n(u48.p("Unable to read SBA restore size for ", q63Var.v(), "/", str, "; falling back to archive size ("), io4.b(thA), ")"), null, 4, null);
            }
            jA = q63Var.A();
        } else {
            jA = l.longValue();
        }
        oj7 oj7VarB = pj7.b(q63Var2, jA);
        if (oj7VarB == null) {
            return true;
        }
        String str2 = oj7VarB.a;
        boolean z = oj7VarB.b;
        uw uwVar = this.u;
        if (z) {
            uwVar.a(str2);
            return false;
        }
        uwVar.b(iuVar, str2);
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0277  */
    /* JADX WARN: Code duplicated, block: B:105:0x0289  */
    /* JADX WARN: Code duplicated, block: B:107:0x028f  */
    /* JADX WARN: Code duplicated, block: B:110:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:120:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:121:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:124:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:125:0x0306  */
    /* JADX WARN: Code duplicated, block: B:128:0x0312  */
    /* JADX WARN: Code duplicated, block: B:129:0x0317  */
    /* JADX WARN: Code duplicated, block: B:132:0x0329  */
    /* JADX WARN: Code duplicated, block: B:135:0x0334  */
    /* JADX WARN: Code duplicated, block: B:139:0x035b  */
    /* JADX WARN: Code duplicated, block: B:146:0x0371  */
    /* JADX WARN: Code duplicated, block: B:147:0x0376  */
    /* JADX WARN: Code duplicated, block: B:150:0x0382  */
    /* JADX WARN: Code duplicated, block: B:151:0x038b  */
    /* JADX WARN: Code duplicated, block: B:154:0x0397  */
    /* JADX WARN: Code duplicated, block: B:155:0x039c  */
    /* JADX WARN: Code duplicated, block: B:158:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:159:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:162:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:172:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:173:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:176:0x0405  */
    /* JADX WARN: Code duplicated, block: B:177:0x040e  */
    /* JADX WARN: Code duplicated, block: B:180:0x041a  */
    /* JADX WARN: Code duplicated, block: B:181:0x041f  */
    /* JADX WARN: Code duplicated, block: B:184:0x0431  */
    /* JADX WARN: Code duplicated, block: B:187:0x043c  */
    /* JADX WARN: Code duplicated, block: B:197:0x0474  */
    /* JADX WARN: Code duplicated, block: B:198:0x0479  */
    /* JADX WARN: Code duplicated, block: B:201:0x0485  */
    /* JADX WARN: Code duplicated, block: B:202:0x048e  */
    /* JADX WARN: Code duplicated, block: B:205:0x049a  */
    /* JADX WARN: Code duplicated, block: B:206:0x049f  */
    /* JADX WARN: Code duplicated, block: B:209:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:210:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:216:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:219:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:222:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:223:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:227:0x051a  */
    /* JADX WARN: Code duplicated, block: B:231:0x052f  */
    /* JADX WARN: Code duplicated, block: B:232:0x0532  */
    /* JADX WARN: Code duplicated, block: B:233:0x053c  */
    /* JADX WARN: Code duplicated, block: B:234:0x0546  */
    /* JADX WARN: Code duplicated, block: B:235:0x0550  */
    /* JADX WARN: Code duplicated, block: B:236:0x055a  */
    /* JADX WARN: Code duplicated, block: B:237:0x0564  */
    /* JADX WARN: Code duplicated, block: B:23:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:243:0x0581 A[LOOP:2: B:241:0x057b->B:243:0x0581, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:247:0x0598  */
    /* JADX WARN: Code duplicated, block: B:250:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:252:0x05bb A[LOOP:4: B:251:0x05b9->B:252:0x05bb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:282:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:28:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:316:0x0821 A[PHI: r2
      0x0821: PHI (r2v36 java.lang.Iterable) = (r2v35 java.lang.Iterable), (r2v35 java.lang.Iterable), (r2v46 java.lang.Iterable) binds: [B:313:0x0800, B:315:0x081f, B:319:0x083b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0114  */
    /* JADX WARN: Code duplicated, block: B:335:0x08be  */
    /* JADX WARN: Code duplicated, block: B:348:0x0903  */
    /* JADX WARN: Code duplicated, block: B:361:0x0943  */
    /* JADX WARN: Code duplicated, block: B:363:0x0955  */
    /* JADX WARN: Code duplicated, block: B:364:0x0957  */
    /* JADX WARN: Code duplicated, block: B:367:0x0961  */
    /* JADX WARN: Code duplicated, block: B:375:0x0987  */
    /* JADX WARN: Code duplicated, block: B:377:0x09ae  */
    /* JADX WARN: Code duplicated, block: B:38:0x0136  */
    /* JADX WARN: Code duplicated, block: B:39:0x0139  */
    /* JADX WARN: Code duplicated, block: B:41:0x0149  */
    /* JADX WARN: Code duplicated, block: B:424:0x0a89  */
    /* JADX WARN: Code duplicated, block: B:42:0x0150  */
    /* JADX WARN: Code duplicated, block: B:443:0x0b02  */
    /* JADX WARN: Code duplicated, block: B:450:0x0b1d  */
    /* JADX WARN: Code duplicated, block: B:455:0x0b32  */
    /* JADX WARN: Code duplicated, block: B:458:0x0b3c  */
    /* JADX WARN: Code duplicated, block: B:45:0x015a  */
    /* JADX WARN: Code duplicated, block: B:465:0x0b56  */
    /* JADX WARN: Code duplicated, block: B:470:0x0b6d  */
    /* JADX WARN: Code duplicated, block: B:473:0x0b85  */
    /* JADX WARN: Code duplicated, block: B:476:0x0b98 A[LOOP:10: B:471:0x0b7f->B:476:0x0b98, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:480:0x0ba3  */
    /* JADX WARN: Code duplicated, block: B:485:0x0bb6  */
    /* JADX WARN: Code duplicated, block: B:488:0x0bc0  */
    /* JADX WARN: Code duplicated, block: B:48:0x0164  */
    /* JADX WARN: Code duplicated, block: B:494:0x0bd7  */
    /* JADX WARN: Code duplicated, block: B:498:0x0be9  */
    /* JADX WARN: Code duplicated, block: B:502:0x0bfb  */
    /* JADX WARN: Code duplicated, block: B:506:0x0c11  */
    /* JADX WARN: Code duplicated, block: B:509:0x0c18  */
    /* JADX WARN: Code duplicated, block: B:50:0x016b  */
    /* JADX WARN: Code duplicated, block: B:511:0x0c1c  */
    /* JADX WARN: Code duplicated, block: B:513:0x0c25  */
    /* JADX WARN: Code duplicated, block: B:514:0x0c28  */
    /* JADX WARN: Code duplicated, block: B:518:0x0c4c  */
    /* JADX WARN: Code duplicated, block: B:520:0x0c5b  */
    /* JADX WARN: Code duplicated, block: B:526:0x0c76  */
    /* JADX WARN: Code duplicated, block: B:528:0x0c7a  */
    /* JADX WARN: Code duplicated, block: B:530:0x0c86  */
    /* JADX WARN: Code duplicated, block: B:532:0x0c8c  */
    /* JADX WARN: Code duplicated, block: B:535:0x0c9a  */
    /* JADX WARN: Code duplicated, block: B:536:0x0c9f  */
    /* JADX WARN: Code duplicated, block: B:542:0x0caf  */
    /* JADX WARN: Code duplicated, block: B:544:0x0cc7  */
    /* JADX WARN: Code duplicated, block: B:548:0x0cd1  */
    /* JADX WARN: Code duplicated, block: B:551:0x0cdc  */
    /* JADX WARN: Code duplicated, block: B:557:0x0cef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:558:0x0cf1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:559:0x0cf3  */
    /* JADX WARN: Code duplicated, block: B:560:0x0cf8  */
    /* JADX WARN: Code duplicated, block: B:561:0x0cfb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:562:0x0cfd  */
    /* JADX WARN: Code duplicated, block: B:564:0x0d03  */
    /* JADX WARN: Code duplicated, block: B:567:0x0d0a  */
    /* JADX WARN: Code duplicated, block: B:568:0x0d1a  */
    /* JADX WARN: Code duplicated, block: B:586:0x0d8c  */
    /* JADX WARN: Code duplicated, block: B:58:0x017f  */
    /* JADX WARN: Code duplicated, block: B:597:0x0dd6  */
    /* JADX WARN: Code duplicated, block: B:603:0x0de9  */
    /* JADX WARN: Code duplicated, block: B:613:0x0262 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:614:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:? A[LOOP:0: B:92:0x024e->B:615:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x052b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:618:0x056f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:620:0x0514 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:624:0x05a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:626:0x0981 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:636:0x0ca4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:638:0x0c46 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:644:0x0b15 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x0b50 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:648:0x0b9b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:649:0x0b9f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x0bd1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:0x0c0b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:0x0bf5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:658:0x096b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:0x0955 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0192  */
    /* JADX WARN: Code duplicated, block: B:660:? A[LOOP:13: B:365:0x095b->B:660:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:72:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:76:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:79:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:81:0x0206  */
    /* JADX WARN: Code duplicated, block: B:82:0x020e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0216  */
    /* JADX WARN: Code duplicated, block: B:85:0x0219  */
    /* JADX WARN: Code duplicated, block: B:88:0x022b  */
    /* JADX WARN: Code duplicated, block: B:91:0x024a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0254  */
    /* JADX WARN: Code duplicated, block: B:97:0x0262 A[EDGE_INSN: B:97:0x0262->B:98:0x0263 BREAK  A[LOOP:0: B:92:0x024e->B:615:?]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* JADX WARN: Type inference failed for: r0v126, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r0v128 */
    /* JADX WARN: Type inference failed for: r0v129, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r0v131 */
    /* JADX WARN: Type inference failed for: r0v132, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r0v151 */
    /* JADX WARN: Type inference failed for: r0v152 */
    /* JADX WARN: Type inference failed for: r0v153 */
    /* JADX WARN: Type inference failed for: r0v154 */
    /* JADX WARN: Type inference failed for: r0v155 */
    /* JADX WARN: Type inference failed for: r0v156 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v47, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v60, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v65, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r0v66, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r1v21, types: [mk7] */
    /* JADX WARN: Type inference failed for: r33v11 */
    /* JADX WARN: Type inference failed for: r33v12, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r33v13 */
    /* JADX WARN: Type inference failed for: r3v101 */
    /* JADX WARN: Type inference failed for: r3v102, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r3v124 */
    /* JADX WARN: Type inference failed for: r3v125 */
    /* JADX WARN: Type inference failed for: r3v126 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59, types: [q63] */
    /* JADX WARN: Type inference failed for: r3v74 */
    /* JADX WARN: Type inference failed for: r3v95 */
    /* JADX WARN: Type inference failed for: r3v96, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r3v98 */
    /* JADX WARN: Type inference failed for: r3v99, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r4v29, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r6v68 */
    /* JADX WARN: Type inference failed for: r6v69 */
    /* JADX WARN: Type inference failed for: r6v70 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v34, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r8v50 */
    /* JADX WARN: Type inference failed for: r8v51 */
    /* JADX WARN: Type inference failed for: r8v52 */
    public final uw d(qv qvVar) {
        hk hkVar;
        q63 q63VarC;
        boolean zO;
        LinkedHashSet linkedHashSet;
        yu yuVar;
        List list;
        LinkedHashSet linkedHashSet2;
        uw uwVar;
        boolean z;
        q63 q63Var;
        boolean z2;
        boolean restoresAnyPermissions;
        boolean z3;
        boolean z4;
        LinkedHashSet linkedHashSet3;
        ArrayList arrayList;
        Iterator it;
        Iterator it2;
        long jA;
        Iterator it3;
        int i;
        boolean z5;
        xw xwVar;
        gx gxVar;
        kh6 kh6Var;
        int i2;
        long j;
        boolean z6;
        boolean zW;
        CloudMetadata cloudMetadata;
        xw xwVar2;
        long j2;
        CloudMetadata cloudMetadata2;
        ArrayList arrayList2;
        String str;
        c40 c40Var;
        ji jiVar;
        jz jzVar;
        boolean z7;
        Iterator it4;
        kh6 kh6Var2;
        gx gxVar2;
        Integer numN;
        qv qvVar2;
        jz jzVar2;
        String str2;
        kh6 kh6Var3;
        int i3;
        LocalMetadata localMetadataF;
        AppSpecialDataPayload appSpecialDataPayload;
        String ssaid;
        ?? r0;
        String ssaid2;
        String ssaid3;
        eb2 eb2Var;
        ?? arrayList3;
        String str3;
        Iterator it5;
        Object next;
        String str4;
        Iterator it6;
        Object next2;
        String str5;
        Iterator it7;
        ArrayList arrayList4;
        Object next3;
        String str6;
        Iterator it8;
        Object next4;
        String str7;
        Integer numW;
        Integer numW2;
        Integer numW3;
        Integer numW4;
        boolean z8;
        eb2 eb2Var2;
        ?? r1;
        int size;
        String str8;
        ArrayList arrayList5;
        String deDataDir;
        Object obj;
        String strI0;
        String strT;
        Object objT;
        String dataDir;
        String strI1;
        ?? r3;
        String installerPackage;
        ?? r5;
        boolean zCheckInstalled;
        Long apkBackupSize;
        Long splitsBackupSize;
        Iterable iterable;
        Iterator it9;
        boolean z9;
        Object fxVar;
        boolean zP;
        boolean z10;
        iu iuVar;
        boolean zJ;
        LocalMetadata localMetadataF2;
        ?? mediaBackupDate;
        qx sizeInfo;
        ?? ValueOf;
        LocalMetadata localMetadataF3;
        ?? mediaSizeMirrored;
        iu iuVar2;
        boolean zJ2;
        LocalMetadata localMetadataF4;
        ?? expansionBackupDate;
        qx sizeInfo2;
        ?? ValueOf2;
        LocalMetadata localMetadataF5;
        ?? expSizeMirrored;
        iu iuVar3;
        boolean zJ3;
        LocalMetadata localMetadataF6;
        ?? extDataBackupDate;
        qx sizeInfo3;
        ?? ValueOf3;
        LocalMetadata localMetadataF7;
        ?? extDataSizeMirrored;
        iu iuVar4;
        boolean zJ4;
        LocalMetadata localMetadataF8;
        ?? dataBackupDate;
        qx sizeInfo4;
        ?? ValueOf4;
        LocalMetadata localMetadataF9;
        ?? dataSizeMirrored;
        List listA0;
        Iterator it10;
        boolean zJ5;
        rg rgVarA;
        long jC;
        String sourceDir;
        LocalMetadata localMetadataF10;
        ?? apkSizeMirrored;
        String versionName;
        Long versionCode;
        long jLongValue;
        List<String> splitSourceDirs;
        boolean z11;
        List<yc7> sharedLibsInfos;
        boolean z12;
        boolean zA;
        boolean z13;
        xw xwVar3 = this;
        String str9 = "";
        c40 c40Var2 = xwVar3.b;
        ex6 ex6Var = c40Var2.i;
        SwiftApp.Companion companion = SwiftApp.d;
        ex6Var.k(SwiftApp.Companion.c().getString(R.string.restoring));
        vr6 vr6Var = vr6.INSTANCE;
        ji jiVar2 = xwVar3.h;
        vr6.i$default(vr6Var, "AppRestoreTask", xs1.j("Started restore: ", jiVar2.asString()), null, 4, null);
        StringBuilder sb = new StringBuilder("Props=");
        jz jzVar3 = xwVar3.a;
        sb.append(jzVar3);
        vr6.i$default(vr6Var, "AppRestoreTask", sb.toString(), null, 4, null);
        long jCurrentTimeMillis = System.currentTimeMillis();
        mp6 mp6Var = mp6.a;
        boolean zG = mp6.g();
        uw uwVar2 = xwVar3.u;
        if (zG && pe4.d(jiVar2.getPackageName(), "moe.shizuku.privileged.api")) {
            vr6Var.i("AppRestoreTask", "Shizuku package shouldn't be restored when Swift Backup is actively using Shizuku! Skipping.", vr6.a.YELLOW);
            uwVar2.c("Shizuku package shouldn't be restored when Swift Backup is actively using Shizuku! Skipping.");
            return uwVar2;
        }
        List list2 = jzVar3.c;
        yu yuVar2 = jzVar3.d;
        List list3 = jzVar3.c;
        if (!wx3.o(list2) && !jiVar2.checkInstalled()) {
            vr6Var.i("AppRestoreTask", "Can't restore any data parts since app isn't installed.", vr6.a.YELLOW);
            uwVar2.c("Can't restore any data parts since app isn't installed.");
            return uwVar2;
        }
        int i4 = 2;
        boolean z14 = xwVar3.i;
        if (z14) {
            jiVar2.checkInstalled();
            if (jiVar2.isInstalled()) {
                boolean z15 = g42.a;
                String packageName = jiVar2.getPackageName();
                packageName.getClass();
                mp6.a.h(new String[]{String.format((String) g42.e.getValue(), Arrays.copyOf(new Object[]{packageName}, 1))}, ip6.SU);
            }
            hkVar = xwVar3.k;
            q63VarC = hkVar.c();
            zO = wx3.o(list3);
            linkedHashSet = xwVar3.o;
            if (zO) {
                zJ5 = q63VarC.j();
                if (!zJ5 || z14) {
                    yuVar = yuVar2;
                    list = list3;
                    uwVar = null;
                    z = false;
                    q63Var = q63VarC;
                } else {
                    q63Var = q63VarC;
                    yuVar = yuVar2;
                    list = list3;
                    z = false;
                    uwVar = null;
                    vr6.i$default(vr6Var, "AppRestoreTask", "No APK backup", null, 4, null);
                }
                if (jiVar2.isInstalled() && zJ5) {
                    rgVarA = ng.a(q63Var, z);
                    jC = rgVarA.c();
                    sourceDir = jiVar2.getSourceDir();
                    if (sourceDir == null) {
                        z13 = true;
                    } else {
                        long jA2 = new q63(sourceDir, 1).A();
                        localMetadataF10 = xwVar3.f();
                        if (localMetadataF10 != null) {
                            apkSizeMirrored = localMetadataF10.getApkSizeMirrored();
                        } else {
                            apkSizeMirrored = uwVar;
                        }
                        versionName = jiVar2.getVersionName();
                        if (versionName == null) {
                            versionName = "Empty";
                        }
                        String str10 = versionName;
                        versionCode = jiVar2.getVersionCode();
                        if (versionCode != null) {
                            jLongValue = versionCode.longValue();
                        } else {
                            jLongValue = -1;
                        }
                        long j3 = jLongValue;
                        splitSourceDirs = jiVar2.getSplitSourceDirs();
                        if (splitSourceDirs != null || splitSourceDirs.isEmpty()) {
                            z11 = true;
                        } else {
                            z11 = z;
                        }
                        boolean z16 = !z11;
                        sharedLibsInfos = jiVar2.getSharedLibsInfos();
                        if (sharedLibsInfos != null || sharedLibsInfos.isEmpty()) {
                            z12 = true;
                        } else {
                            z12 = z;
                        }
                        zA = eq.a(jA2, apkSizeMirrored, new pg(str10, j3, z16, !z12), rgVarA, hkVar.C().j(), hkVar.z().j());
                        if (jC >= io4.h(jiVar2.getVersionCode())) {
                            z13 = zA;
                        } else {
                            if (!xwVar3.c.f) {
                                vr6.w$default(vr6Var, "AppRestoreTask", "Backup APK is older, APK downgrade is not allowed in batch actions.", null, 4, null);
                            } else if (jiVar2.isBundled()) {
                                vr6.w$default(vr6Var, "AppRestoreTask", "Backup APK is older and this is a system app. You'd have to be a monkey to downgrade!", null, 4, null);
                                Context contextC = SwiftApp.Companion.c();
                                zn4 zn4Var = zn4.a;
                                dj7.y(contextC, "Skipped APK installation. System apps must not be downgraded!");
                            } else {
                                vr6.w$default(vr6Var, "AppRestoreTask", "APK downgrade restricted by Android System since Android Nougat 7.0, Swift Backup will attempt to downgrade using workarounds.", null, 4, null);
                                xwVar3.s = true;
                                z13 = zA;
                            }
                            z13 = z;
                        }
                    }
                    zJ5 = z13;
                }
                if (zJ5) {
                    if (hkVar.z().j()) {
                        linkedHashSet2 = linkedHashSet;
                        linkedHashSet2.add(gz.SharedLibs);
                    } else {
                        linkedHashSet2 = r19;
                    }
                    linkedHashSet2.add(gz.Apk);
                } else {
                    linkedHashSet2 = r19;
                }
            } else {
                yuVar = yuVar2;
                list = list3;
                jCurrentTimeMillis = jCurrentTimeMillis;
                linkedHashSet2 = linkedHashSet;
                uwVar = null;
                z = false;
                q63Var = q63VarC;
            }
            if (wx3.n(list)) {
                z2 = true;
                break;
            }
            listA0 = fl1.A0(hkVar.g(), hkVar.n(), hkVar.m(), hkVar.q());
            if (listA0.isEmpty()) {
                z2 = true;
                break;
            }
            it10 = listA0.iterator();
            while (true) {
                if (it10.hasNext()) {
                    z2 = true;
                    break;
                }
                if (((q63) it10.next()).j()) {
                    z2 = z;
                    break;
                }
            }
            if (xwVar3.e && !z2) {
                gs0 gs0Var = gs0.a;
                if (gs0.c(jiVar2.getPackageName(), is0.NoData)) {
                    vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "App is blacklisted. No data parts will be restored.", null, 4, null);
                    z2 = true;
                }
            }
            if (z2) {
                hkVar = hkVar;
            } else {
                if (jiVar2.isInstalled()) {
                    jiVar2.calculateSize(wx3.p(list), wx3.r(list), wx3.s(list), wx3.q(list));
                }
                zP = wx3.p(list);
                z10 = xwVar3.r;
                if (zP) {
                    iuVar4 = iu.DATA;
                    zJ4 = hkVar.g().j();
                    if (!zJ4 && !z14) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "No " + iuVar4 + " backup", null, 4, null);
                    }
                    if (jiVar2.isInstalled() && zJ4 && !z14) {
                        String dataDir2 = jiVar2.getDataDir();
                        localMetadataF8 = xwVar3.f();
                        if (localMetadataF8 != null) {
                            dataBackupDate = localMetadataF8.getDataBackupDate();
                        } else {
                            dataBackupDate = uwVar;
                        }
                        long jH = io4.h(dataBackupDate);
                        sizeInfo4 = jiVar2.getSizeInfo();
                        if (sizeInfo4 != null) {
                            ValueOf4 = Long.valueOf(sizeInfo4.getTotalDataSize(z10));
                        } else {
                            ValueOf4 = uwVar;
                        }
                        long jH2 = io4.h(ValueOf4);
                        localMetadataF9 = xwVar3.f();
                        if (localMetadataF9 != null) {
                            dataSizeMirrored = localMetadataF9.getDataSizeMirrored();
                        } else {
                            dataSizeMirrored = uwVar;
                        }
                        zJ4 = xwVar3.q.b(iuVar4, dataDir2, jH, jH2, io4.h(dataSizeMirrored));
                    }
                    if (zJ4) {
                        linkedHashSet2.add(gz.Data);
                    }
                }
                if (wx3.r(list)) {
                    iuVar3 = iu.EXTDATA;
                    zJ3 = hkVar.n().j();
                    if (zJ3 && !z14) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", eq3.k("No ", iuVar3.toDisplayString(true), " backup"), null, 4, null);
                    }
                    if (jiVar2.isInstalled() && zJ3 && !z14) {
                        String externalDataDir = jiVar2.getExternalDataDir();
                        localMetadataF6 = xwVar3.f();
                        if (localMetadataF6 != null) {
                            extDataBackupDate = localMetadataF6.getExtDataBackupDate();
                        } else {
                            extDataBackupDate = uwVar;
                        }
                        long jH3 = io4.h(extDataBackupDate);
                        sizeInfo3 = jiVar2.getSizeInfo();
                        if (sizeInfo3 != null) {
                            ValueOf3 = Long.valueOf(sizeInfo3.getExtDataSize(z10));
                        } else {
                            ValueOf3 = uwVar;
                        }
                        long jH4 = io4.h(ValueOf3);
                        localMetadataF7 = xwVar3.f();
                        if (localMetadataF7 != null) {
                            extDataSizeMirrored = localMetadataF7.getExtDataSizeMirrored();
                        } else {
                            extDataSizeMirrored = uwVar;
                        }
                        zJ3 = xwVar3.q.b(iuVar3, externalDataDir, jH3, jH4, io4.h(extDataSizeMirrored));
                    }
                    if (zJ3) {
                        linkedHashSet2.add(gz.ExtData);
                    }
                } else {
                    hkVar = hkVar;
                }
                if (wx3.q(list)) {
                    iuVar2 = iu.EXPANSION;
                    zJ2 = hkVar.m().j();
                    if (!zJ2 && !z14) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", eq3.k("No ", iuVar2.toDisplayString(true), " backup"), null, 4, null);
                    }
                    if (jiVar2.isInstalled() && zJ2 && !z14) {
                        String expansionDir = jiVar2.getExpansionDir();
                        localMetadataF4 = xwVar3.f();
                        if (localMetadataF4 != null) {
                            expansionBackupDate = localMetadataF4.getExpansionBackupDate();
                        } else {
                            expansionBackupDate = uwVar;
                        }
                        long jH5 = io4.h(expansionBackupDate);
                        sizeInfo2 = jiVar2.getSizeInfo();
                        if (sizeInfo2 != null) {
                            ValueOf2 = Long.valueOf(sizeInfo2.getExternalObbSize());
                        } else {
                            ValueOf2 = uwVar;
                        }
                        long jH6 = io4.h(ValueOf2);
                        localMetadataF5 = xwVar3.f();
                        if (localMetadataF5 != null) {
                            expSizeMirrored = localMetadataF5.getExpSizeMirrored();
                        } else {
                            expSizeMirrored = uwVar;
                        }
                        zJ2 = xwVar3.q.b(iuVar2, expansionDir, jH5, jH6, io4.h(expSizeMirrored));
                    }
                    if (zJ2) {
                        linkedHashSet2.add(gz.Expansion);
                    }
                }
                if (wx3.s(list)) {
                    iuVar = iu.MEDIA;
                    zJ = hkVar.q().j();
                    if (!zJ && !z14) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", eq3.k("No ", iuVar.toDisplayString(true), " backup"), null, 4, null);
                    }
                    if (jiVar2.isInstalled() && zJ && !z14) {
                        String mediaDir = jiVar2.getMediaDir();
                        localMetadataF2 = xwVar3.f();
                        if (localMetadataF2 != null) {
                            mediaBackupDate = localMetadataF2.getMediaBackupDate();
                        } else {
                            mediaBackupDate = uwVar;
                        }
                        long jH7 = io4.h(mediaBackupDate);
                        sizeInfo = jiVar2.getSizeInfo();
                        if (sizeInfo != null) {
                            ValueOf = Long.valueOf(sizeInfo.getMediaSize());
                        } else {
                            ValueOf = uwVar;
                        }
                        long jH8 = io4.h(ValueOf);
                        localMetadataF3 = xwVar3.f();
                        if (localMetadataF3 != null) {
                            mediaSizeMirrored = localMetadataF3.getMediaSizeMirrored();
                        } else {
                            mediaSizeMirrored = uwVar;
                        }
                        zJ = xwVar3.q.b(iuVar, mediaDir, jH7, jH8, io4.h(mediaSizeMirrored));
                    }
                    if (zJ) {
                        linkedHashSet2.add(gz.Media);
                    }
                }
            }
            restoresAnyPermissions = yuVar.getRestoresAnyPermissions();
            z3 = jzVar3.e;
            if (jiVar2.isInstalled() || !(restoresAnyPermissions || z3)) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (linkedHashSet2.isEmpty()) {
                vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "No tasks to perform with this app!", null, 4, null);
                if (z4) {
                    linkedHashSet3 = linkedHashSet2;
                }
            } else {
                linkedHashSet3 = linkedHashSet2;
                vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Tasks to perform = ".concat(el1.Y0(linkedHashSet3, null, null, null, null, 63)), null, 4, null);
            }
            arrayList = new ArrayList();
            it = linkedHashSet3.iterator();
            while (it.hasNext()) {
                switch (ww.a[((gz) it.next()).ordinal()]) {
                    case 1:
                        fxVar = new fx(hkVar.z());
                        break;
                    case 2:
                        fxVar = new yw(q63Var, hkVar.C());
                        break;
                    case 3:
                    case 8:
                        fxVar = uwVar;
                        break;
                    case 4:
                        fxVar = new ax(hkVar.g());
                        break;
                    case 5:
                        fxVar = new cx(hkVar.n());
                        break;
                    case 6:
                        fxVar = new bx(hkVar.m());
                        break;
                    case 7:
                        fxVar = new dx(hkVar.q());
                        break;
                    default:
                        q.j();
                        return uwVar;
                }
                if (fxVar != null) {
                    arrayList.add(fxVar);
                }
            }
            it2 = arrayList.iterator();
            jA = 0;
            while (it2.hasNext()) {
                jA += ((gx) it2.next()).a();
            }
            it3 = arrayList.iterator();
            i = 0;
            while (it3.hasNext()) {
                int i5 = i + 1;
                gxVar = (gx) it3.next();
                if (xwVar3.w()) {
                    z5 = z3;
                    xwVar = xwVar3;
                    ji jiVar3 = jiVar2;
                    boolean z17 = restoresAnyPermissions;
                    if (!xwVar.w() && jiVar3.isInstalled() && (z17 || z5)) {
                        xwVar.q(xwVar.f());
                        if (z5) {
                            xwVar.p();
                        }
                    }
                    qvVar.invoke(100);
                    vr6.i$default(vr6.INSTANCE, "AppRestoreTask", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                    return uwVar2;
                }
                kh6Var = new kh6();
                boolean z18 = z3;
                i2 = 0;
                while (i2 < i) {
                    kh6Var.a = ((gx) arrayList.get(i2)).a() + kh6Var.a;
                    i2++;
                    jA = jA;
                }
                j = jA;
                if (xwVar3.w() && (gxVar instanceof fx)) {
                    z6 = z14;
                    jA = j;
                    xwVar3.u((fx) gxVar, new ql(kh6Var, jA, qvVar, 1));
                    xwVar2 = xwVar3;
                    arrayList2 = arrayList;
                    str2 = str9;
                    c40Var = c40Var2;
                    jiVar = jiVar2;
                    jzVar2 = jzVar3;
                    z7 = restoresAnyPermissions;
                    it4 = it3;
                } else {
                    z6 = z14;
                    zW = xwVar3.w();
                    cloudMetadata = xwVar3.j;
                    if (zW && (gxVar instanceof yw)) {
                        boolean zIsInstalled = jiVar2.isInstalled();
                        yw ywVar = (yw) gxVar;
                        arrayList2 = arrayList;
                        kw kwVar = new kw(kh6Var, j, qvVar);
                        p93 p93Var = p93.a;
                        long j4 = ywVar.j;
                        jiVar = jiVar2;
                        q63 q63Var2 = ywVar.a;
                        z7 = restoresAnyPermissions;
                        q63 q63Var3 = ywVar.b;
                        String strC = p93.c(Long.valueOf(j4));
                        vr6 vr6Var2 = vr6.INSTANCE;
                        vr6.i$default(vr6Var2, "AppRestoreTask", eq3.k("Restoring app (~", strC, ")"), null, 4, null);
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        String strG = dj7.g(R.string.restoring_app);
                        c40Var2.i.k(strG + " (" + strC + ")");
                        if (ywVar.d == 0) {
                            vr6.e$default(vr6Var2, "AppRestoreTask", "Invalid base APK file at " + q63Var2 + " (0B)", null, 4, null);
                            uwVar2.c("Invalid/Empty base APK file");
                        } else {
                            if (q63Var3.j()) {
                                long jA3 = q63Var3.A() * 2;
                                q63 workingDir = AppsWorkingDir.INSTANCE.getWorkingDir(jiVar.getPackageName(), jA3);
                                oj7 oj7VarB = pj7.b(workingDir, jA3);
                                if (oj7VarB != null) {
                                    String str11 = oj7VarB.a;
                                    if (oj7VarB.b) {
                                        uwVar2.a(str11);
                                    } else {
                                        uwVar2.b(iu.APP, str11);
                                    }
                                } else {
                                    r3 = workingDir;
                                }
                            } else {
                                r3 = uwVar;
                            }
                            boolean grantsAllSupportedPermissions = yuVar.getGrantsAllSupportedPermissions();
                            if (!z6) {
                                LocalMetadata localMetadataF11 = xwVar3.f();
                                if (localMetadataF11 != null) {
                                    installerPackage = localMetadataF11.getInstallerPackage();
                                    r5 = installerPackage;
                                } else {
                                    r5 = uwVar;
                                }
                            } else if (cloudMetadata != null) {
                                installerPackage = cloudMetadata.getInstallerPackage();
                                r5 = installerPackage;
                            } else {
                                r5 = uwVar;
                            }
                            jzVar = jzVar3;
                            kh6Var2 = kh6Var;
                            cloudMetadata2 = cloudMetadata;
                            c40Var = c40Var2;
                            it4 = it3;
                            gxVar2 = gxVar;
                            j2 = j;
                            int i6 = 2;
                            str = str9;
                            xwVar2 = xwVar3;
                            List listE = new mv(xwVar3, xwVar3.h, r3, grantsAllSupportedPermissions, r5, xwVar3.d, new ah(xwVar3, 6), kwVar).e(ywVar, new jv(q63Var3), xwVar2.s);
                            if (listE.isEmpty() || !jd4.v(listE)) {
                                zCheckInstalled = jiVar.checkInstalled();
                            } else if (jd4.t(listE) && jiVar.checkInstalled()) {
                                vr6.w$default(vr6Var2, "AppRestoreTask", "APK downgrade failed, but app is installed; continuing data restore", null, 4, null);
                                uwVar2.e("APK restore skipped because installed version is newer than backup");
                                zCheckInstalled = true;
                            } else {
                                ArrayList arrayList6 = new ArrayList();
                                for (Object obj2 : listE) {
                                    String string = nq7.H0((String) obj2).toString();
                                    if (!uq7.V(string, "Success: streamed ", true) || !uq7.O(string, " bytes", true)) {
                                        arrayList6.add(obj2);
                                    }
                                }
                                String strY0 = el1.Y0(arrayList6.isEmpty() ? listE : arrayList6, null, null, null, null, 63);
                                vr6.e$default(vr6.INSTANCE, "AppRestoreTask", strY0, null, 4, null);
                                SwiftApp.Companion companion3 = SwiftApp.d;
                                String string2 = SwiftApp.Companion.c().getString(R.string.x_app_failed_to_install_message, jiVar.getName());
                                string2.getClass();
                                q63Var2.getClass();
                                if (nq7.Z(strY0, "NO_MATCHING_ABIS", false)) {
                                    g00 g00Var = g00.a;
                                    if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                                        uw uwVar3 = uwVar;
                                        d6.o();
                                        return uwVar3;
                                    }
                                    i40 i40VarC = Packer.c(q63Var2);
                                    Iterable iterableY = sv2.a;
                                    if (i40VarC != null) {
                                        ArrayList arrayList7 = i40VarC.b;
                                        arrayList7.getClass();
                                        Iterator it11 = new me3(new ll1(arrayList7), true, new ou(i6)).iterator();
                                        if (it11.hasNext()) {
                                            String str12 = (String) it11.next();
                                            str12.getClass();
                                            String strA = jq7.a(str12, "lib/", "/");
                                            if (it11.hasNext()) {
                                                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                                                linkedHashSet4.add(strA);
                                                while (it11.hasNext()) {
                                                    String str13 = (String) it11.next();
                                                    str13.getClass();
                                                    linkedHashSet4.add(jq7.a(str13, "lib/", "/"));
                                                }
                                                iterable = linkedHashSet4;
                                            } else {
                                                iterableY = sz8.Y(strA);
                                                iterable = iterableY;
                                            }
                                        } else {
                                            iterable = iterableY;
                                        }
                                    } else {
                                        iterable = iterableY;
                                    }
                                    String[] strArr = Build.SUPPORTED_ABIS;
                                    strArr.getClass();
                                    strY0 = dj7.l("Incompatible APK with ABIs: ", el1.Y0(iterable, null, null, null, null, 63), "\nDevice supported ABIs: ", x50.s0(63, uwVar, strArr));
                                } else if (nq7.Z(strY0, "VERIFICATION_FAILURE", false)) {
                                    strY0 = eq3.k("System package manager rejected the backed up APK [", strY0, "]");
                                }
                                vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "Simplified error: ".concat(strY0), null, 4, null);
                                String strK = dj7.k(string2, ":\n", strY0);
                                if (!z6) {
                                    LocalMetadata localMetadataF12 = xwVar2.f();
                                    if (localMetadataF12 != null) {
                                        apkBackupSize = localMetadataF12.getApkBackupSize();
                                    } else {
                                        apkBackupSize = null;
                                    }
                                } else if (cloudMetadata2 != null) {
                                    apkBackupSize = cloudMetadata2.getApkSize();
                                } else {
                                    apkBackupSize = null;
                                }
                                long jH9 = io4.h(apkBackupSize);
                                g00 g00Var2 = g00.a;
                                String strB = g00.b(q63Var2, Long.valueOf(jH9));
                                if (strB != null && strB.length() != 0) {
                                    strK = ((Object) strK) + "\n\n" + strB + "\n";
                                }
                                if (!z6) {
                                    LocalMetadata localMetadataF13 = xwVar2.f();
                                    if (localMetadataF13 != null) {
                                        splitsBackupSize = localMetadataF13.getSplitsBackupSize();
                                    } else {
                                        splitsBackupSize = null;
                                    }
                                } else if (cloudMetadata2 != null) {
                                    splitsBackupSize = cloudMetadata2.getSplitsSize();
                                } else {
                                    splitsBackupSize = null;
                                }
                                String strB2 = g00.b(q63Var3, Long.valueOf(io4.h(splitsBackupSize)));
                                if (strB2 != null && strB2.length() != 0) {
                                    strK = ((Object) strK) + "\n\n" + strB2 + "\n";
                                }
                                uwVar2.b = strK;
                                zCheckInstalled = false;
                            }
                            if (zCheckInstalled) {
                                vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "App installed", null, 4, null);
                                if (arrayList2.isEmpty()) {
                                    z9 = false;
                                } else {
                                    it9 = arrayList2.iterator();
                                    while (true) {
                                        if (it9.hasNext()) {
                                            z9 = false;
                                        } else if (((gx) it9.next()) instanceof ax) {
                                            z9 = true;
                                        }
                                    }
                                }
                                if (!zIsInstalled && z9) {
                                    xwVar2.t = true;
                                    g00 g00Var3 = g00.a;
                                    g00.d(jiVar.getPackageName(), jiVar.getName(), true);
                                }
                            } else if (wx3.n(list)) {
                                SwiftApp.Companion companion4 = SwiftApp.d;
                                String string3 = SwiftApp.Companion.c().getString(R.string.skipping_data_restore_for_x_app_message, jiVar.asString());
                                string3.getClass();
                                vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "Skipping data restore as app isn't installed", null, 4, null);
                                uwVar2.c = string3;
                            }
                        }
                        xwVar2 = xwVar3;
                        c40Var = c40Var2;
                        jzVar = jzVar3;
                        it4 = it3;
                        gxVar2 = gxVar;
                        kh6Var2 = kh6Var;
                        j2 = j;
                        cloudMetadata2 = cloudMetadata;
                        str = str9;
                        zCheckInstalled = false;
                        if (zCheckInstalled) {
                            vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "App installed", null, 4, null);
                            if (arrayList2.isEmpty()) {
                                z9 = false;
                            } else {
                                it9 = arrayList2.iterator();
                                while (true) {
                                    if (it9.hasNext()) {
                                        z9 = false;
                                    } else if (((gx) it9.next()) instanceof ax) {
                                        z9 = true;
                                    }
                                }
                            }
                            if (!zIsInstalled) {
                                xwVar2.t = true;
                                g00 g00Var4 = g00.a;
                                g00.d(jiVar.getPackageName(), jiVar.getName(), true);
                            }
                        } else if (wx3.n(list)) {
                            SwiftApp.Companion companion5 = SwiftApp.d;
                            String string4 = SwiftApp.Companion.c().getString(R.string.skipping_data_restore_for_x_app_message, jiVar.asString());
                            string4.getClass();
                            vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "Skipping data restore as app isn't installed", null, 4, null);
                            uwVar2.c = string4;
                        }
                    } else {
                        xwVar2 = xwVar3;
                        j2 = j;
                        cloudMetadata2 = cloudMetadata;
                        arrayList2 = arrayList;
                        str = str9;
                        c40Var = c40Var2;
                        jiVar = jiVar2;
                        jzVar = jzVar3;
                        z7 = restoresAnyPermissions;
                        it4 = it3;
                        kh6Var2 = kh6Var;
                        gxVar2 = gxVar;
                    }
                    g00 g00Var5 = g00.a;
                    numN = g00.n(jiVar.getPackageName());
                    if (numN != null || numN.intValue() <= 0) {
                        vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "Installed app's uid not available. Skipping data restore.", null, 4, null);
                        uwVar2.c("Installed app's uid not available. Skipping data restore.");
                        return uwVar2;
                    }
                    if (xwVar2.w() || !(gxVar2 instanceof ax)) {
                        qvVar2 = qvVar;
                        jzVar2 = jzVar;
                        str2 = str;
                        jA = j2;
                        uwVar = null;
                    } else {
                        try {
                            qvVar2 = qvVar;
                            jA = j2;
                            xwVar2.h((ax) gxVar2, numN.intValue(), new lw(kh6Var2, jA, qvVar2));
                            if (xwVar2.t) {
                                str2 = str;
                                i3 = 0;
                                g00.d(jiVar.getPackageName(), str2, false);
                            } else {
                                str2 = str;
                                i3 = 0;
                            }
                            String packageName2 = jiVar.getPackageName();
                            g00 g00Var6 = g00.a;
                            PackageInfo packageInfoQ = g00.q(i3, packageName2);
                            if (packageInfoQ != null) {
                                long jR = jd4.r(packageInfoQ);
                                boolean z19 = j36.a;
                                if (packageName2 == null) {
                                    arrayList3 = 0;
                                    uwVar = null;
                                } else {
                                    String strT2 = uq7.T(packageName2, ".", str2);
                                    if (V.INSTANCE.getT()) {
                                        try {
                                            SharedPreferences sharedPreferences = cz4.f;
                                            if (sharedPreferences != null) {
                                                z8 = sharedPreferences.getBoolean("use_test_pdras", false);
                                                uwVar = null;
                                                if (!z8 && (eb2Var2 = j36.d) != null) {
                                                    zc2 zc2Var = eb2Var2.b;
                                                    gy5 gy5VarL = zc2Var.b.l();
                                                    if ((gy5VarL != null ? new zc2(zc2Var.a, gy5VarL) : uwVar) == null) {
                                                        ui8.b(strT2);
                                                    } else {
                                                        ui8.a(strT2);
                                                    }
                                                    if (!eb2Var2.a.a.U(new gy5(strT2)).isEmpty()) {
                                                        eb2Var = j36.d;
                                                    }
                                                }
                                                if (eb2Var != null || (str3 = (String) eb2Var.a(strT2).c(String.class)) == null) {
                                                    arrayList3 = uwVar;
                                                } else {
                                                    List listX0 = nq7.x0(str3, new String[]{","}, 6);
                                                    ArrayList arrayList8 = new ArrayList(hl1.G0(listX0, 10));
                                                    Iterator it12 = listX0.iterator();
                                                    while (it12.hasNext()) {
                                                        arrayList8.add(nq7.H0((String) it12.next()).toString());
                                                    }
                                                    if (arrayList8.isEmpty()) {
                                                        new gv7(new pu(13));
                                                        it5 = arrayList8.iterator();
                                                        do {
                                                            if (it5.hasNext()) {
                                                                next = it5.next();
                                                            } else {
                                                                next = uwVar;
                                                            }
                                                            str4 = (String) next;
                                                            if (str4 != null || (numW4 = uq7.W(10, nq7.z0(str4, "=", str4))) == null || jR <= numW4.intValue()) {
                                                                it6 = arrayList8.iterator();
                                                                do {
                                                                    if (it6.hasNext()) {
                                                                        next2 = it6.next();
                                                                    } else {
                                                                        next2 = uwVar;
                                                                    }
                                                                    str5 = (String) next2;
                                                                    if (str5 != null || (numW3 = uq7.W(10, nq7.z0(str5, "=", str5))) == null || jR >= numW3.intValue()) {
                                                                        new gv7(new sm(12));
                                                                        int i7 = Build.VERSION.SDK_INT;
                                                                        it7 = arrayList8.iterator();
                                                                        while (true) {
                                                                            if (it7.hasNext()) {
                                                                                next3 = it7.next();
                                                                                arrayList4 = arrayList8;
                                                                                if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                    arrayList8 = arrayList4;
                                                                                }
                                                                            } else {
                                                                                arrayList4 = arrayList8;
                                                                                next3 = uwVar;
                                                                            }
                                                                        }
                                                                        str6 = (String) next3;
                                                                        if (str6 != null || (numW2 = uq7.W(10, nq7.z0(str6, "=", str6))) == null || i7 <= numW2.intValue()) {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null || (numW = uq7.W(10, nq7.z0(str7, "=", str7))) == null || i7 >= numW.intValue()) {
                                                                                    arrayList3 = new ArrayList();
                                                                                    for (Object obj3 : arrayList4) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    arrayList3 = uwVar;
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            arrayList3 = uwVar;
                                                                        }
                                                                    } else {
                                                                        arrayList3 = uwVar;
                                                                    }
                                                                } while (!uq7.V((String) next2, "::minAppVersion", false));
                                                                str5 = (String) next2;
                                                                if (str5 != null) {
                                                                    new gv7(new sm(12));
                                                                    int i8 = Build.VERSION.SDK_INT;
                                                                    it7 = arrayList8.iterator();
                                                                    while (true) {
                                                                        if (it7.hasNext()) {
                                                                            next3 = it7.next();
                                                                            arrayList4 = arrayList8;
                                                                            if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                arrayList8 = arrayList4;
                                                                            }
                                                                        } else {
                                                                            arrayList4 = arrayList8;
                                                                            next3 = uwVar;
                                                                        }
                                                                    }
                                                                    str6 = (String) next3;
                                                                    if (str6 != null) {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    new gv7(new sm(12));
                                                                    int i9 = Build.VERSION.SDK_INT;
                                                                    it7 = arrayList8.iterator();
                                                                    while (true) {
                                                                        if (it7.hasNext()) {
                                                                            next3 = it7.next();
                                                                            arrayList4 = arrayList8;
                                                                            if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                arrayList8 = arrayList4;
                                                                            }
                                                                        } else {
                                                                            arrayList4 = arrayList8;
                                                                            next3 = uwVar;
                                                                        }
                                                                    }
                                                                    str6 = (String) next3;
                                                                    if (str6 != null) {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                arrayList3 = uwVar;
                                                            }
                                                        } while (!uq7.V((String) next, "::maxAppVersion", false));
                                                        str4 = (String) next;
                                                        if (str4 != null) {
                                                            it6 = arrayList8.iterator();
                                                            do {
                                                                if (it6.hasNext()) {
                                                                    next2 = it6.next();
                                                                } else {
                                                                    next2 = uwVar;
                                                                }
                                                                str5 = (String) next2;
                                                                if (str5 != null) {
                                                                    new gv7(new sm(12));
                                                                    int i10 = Build.VERSION.SDK_INT;
                                                                    it7 = arrayList8.iterator();
                                                                    while (true) {
                                                                        if (it7.hasNext()) {
                                                                            next3 = it7.next();
                                                                            arrayList4 = arrayList8;
                                                                            if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                arrayList8 = arrayList4;
                                                                            }
                                                                        } else {
                                                                            arrayList4 = arrayList8;
                                                                            next3 = uwVar;
                                                                        }
                                                                    }
                                                                    str6 = (String) next3;
                                                                    if (str6 != null) {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    new gv7(new sm(12));
                                                                    int i11 = Build.VERSION.SDK_INT;
                                                                    it7 = arrayList8.iterator();
                                                                    while (true) {
                                                                        if (it7.hasNext()) {
                                                                            next3 = it7.next();
                                                                            arrayList4 = arrayList8;
                                                                            if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                arrayList8 = arrayList4;
                                                                            }
                                                                        } else {
                                                                            arrayList4 = arrayList8;
                                                                            next3 = uwVar;
                                                                        }
                                                                    }
                                                                    str6 = (String) next3;
                                                                    if (str6 != null) {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } while (!uq7.V((String) next2, "::minAppVersion", false));
                                                            str5 = (String) next2;
                                                            if (str5 != null) {
                                                                new gv7(new sm(12));
                                                                int i12 = Build.VERSION.SDK_INT;
                                                                it7 = arrayList8.iterator();
                                                                while (true) {
                                                                    if (it7.hasNext()) {
                                                                        next3 = it7.next();
                                                                        arrayList4 = arrayList8;
                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                            arrayList8 = arrayList4;
                                                                        }
                                                                    } else {
                                                                        arrayList4 = arrayList8;
                                                                        next3 = uwVar;
                                                                    }
                                                                }
                                                                str6 = (String) next3;
                                                                if (str6 != null) {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                } else {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                new gv7(new sm(12));
                                                                int i13 = Build.VERSION.SDK_INT;
                                                                it7 = arrayList8.iterator();
                                                                while (true) {
                                                                    if (it7.hasNext()) {
                                                                        next3 = it7.next();
                                                                        arrayList4 = arrayList8;
                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                            arrayList8 = arrayList4;
                                                                        }
                                                                    } else {
                                                                        arrayList4 = arrayList8;
                                                                        next3 = uwVar;
                                                                    }
                                                                }
                                                                str6 = (String) next3;
                                                                if (str6 != null) {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                } else {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it6 = arrayList8.iterator();
                                                            do {
                                                                if (it6.hasNext()) {
                                                                    next2 = it6.next();
                                                                } else {
                                                                    next2 = uwVar;
                                                                }
                                                                str5 = (String) next2;
                                                                if (str5 != null) {
                                                                    new gv7(new sm(12));
                                                                    int i14 = Build.VERSION.SDK_INT;
                                                                    it7 = arrayList8.iterator();
                                                                    while (true) {
                                                                        if (it7.hasNext()) {
                                                                            next3 = it7.next();
                                                                            arrayList4 = arrayList8;
                                                                            if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                arrayList8 = arrayList4;
                                                                            }
                                                                        } else {
                                                                            arrayList4 = arrayList8;
                                                                            next3 = uwVar;
                                                                        }
                                                                    }
                                                                    str6 = (String) next3;
                                                                    if (str6 != null) {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    new gv7(new sm(12));
                                                                    int i15 = Build.VERSION.SDK_INT;
                                                                    it7 = arrayList8.iterator();
                                                                    while (true) {
                                                                        if (it7.hasNext()) {
                                                                            next3 = it7.next();
                                                                            arrayList4 = arrayList8;
                                                                            if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                arrayList8 = arrayList4;
                                                                            }
                                                                        } else {
                                                                            arrayList4 = arrayList8;
                                                                            next3 = uwVar;
                                                                        }
                                                                    }
                                                                    str6 = (String) next3;
                                                                    if (str6 != null) {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it8 = arrayList4.iterator();
                                                                        do {
                                                                            if (it8.hasNext()) {
                                                                                next4 = it8.next();
                                                                            } else {
                                                                                next4 = uwVar;
                                                                            }
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next4, "::minSdk", false));
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } while (!uq7.V((String) next2, "::minAppVersion", false));
                                                            str5 = (String) next2;
                                                            if (str5 != null) {
                                                                new gv7(new sm(12));
                                                                int i16 = Build.VERSION.SDK_INT;
                                                                it7 = arrayList8.iterator();
                                                                while (true) {
                                                                    if (it7.hasNext()) {
                                                                        next3 = it7.next();
                                                                        arrayList4 = arrayList8;
                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                            arrayList8 = arrayList4;
                                                                        }
                                                                    } else {
                                                                        arrayList4 = arrayList8;
                                                                        next3 = uwVar;
                                                                    }
                                                                }
                                                                str6 = (String) next3;
                                                                if (str6 != null) {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                } else {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                new gv7(new sm(12));
                                                                int i17 = Build.VERSION.SDK_INT;
                                                                it7 = arrayList8.iterator();
                                                                while (true) {
                                                                    if (it7.hasNext()) {
                                                                        next3 = it7.next();
                                                                        arrayList4 = arrayList8;
                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                            arrayList8 = arrayList4;
                                                                        }
                                                                    } else {
                                                                        arrayList4 = arrayList8;
                                                                        next3 = uwVar;
                                                                    }
                                                                }
                                                                str6 = (String) next3;
                                                                if (str6 != null) {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                } else {
                                                                    it8 = arrayList4.iterator();
                                                                    do {
                                                                        if (it8.hasNext()) {
                                                                            next4 = it8.next();
                                                                        } else {
                                                                            next4 = uwVar;
                                                                        }
                                                                        str7 = (String) next4;
                                                                        if (str7 != null) {
                                                                        }
                                                                        arrayList3 = new ArrayList();
                                                                        while (r1.hasNext()) {
                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                arrayList3.add(obj3);
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                    str7 = (String) next4;
                                                                    if (str7 != null) {
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    while (r1.hasNext()) {
                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                            arrayList3.add(obj3);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        Iterator it13 = arrayList8.iterator();
                                                        while (true) {
                                                            if (!it13.hasNext()) {
                                                                new gv7(new pu(13));
                                                                it5 = arrayList8.iterator();
                                                                do {
                                                                    if (it5.hasNext()) {
                                                                        next = it5.next();
                                                                    } else {
                                                                        next = uwVar;
                                                                    }
                                                                    str4 = (String) next;
                                                                    if (str4 != null) {
                                                                        it6 = arrayList8.iterator();
                                                                        do {
                                                                            if (it6.hasNext()) {
                                                                                next2 = it6.next();
                                                                            } else {
                                                                                next2 = uwVar;
                                                                            }
                                                                            str5 = (String) next2;
                                                                            if (str5 != null) {
                                                                                new gv7(new sm(12));
                                                                                int i18 = Build.VERSION.SDK_INT;
                                                                                it7 = arrayList8.iterator();
                                                                                while (true) {
                                                                                    if (it7.hasNext()) {
                                                                                        next3 = it7.next();
                                                                                        arrayList4 = arrayList8;
                                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                            arrayList8 = arrayList4;
                                                                                        }
                                                                                    } else {
                                                                                        arrayList4 = arrayList8;
                                                                                        next3 = uwVar;
                                                                                    }
                                                                                }
                                                                                str6 = (String) next3;
                                                                                if (str6 != null) {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                new gv7(new sm(12));
                                                                                int i19 = Build.VERSION.SDK_INT;
                                                                                it7 = arrayList8.iterator();
                                                                                while (true) {
                                                                                    if (it7.hasNext()) {
                                                                                        next3 = it7.next();
                                                                                        arrayList4 = arrayList8;
                                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                            arrayList8 = arrayList4;
                                                                                        }
                                                                                    } else {
                                                                                        arrayList4 = arrayList8;
                                                                                        next3 = uwVar;
                                                                                    }
                                                                                }
                                                                                str6 = (String) next3;
                                                                                if (str6 != null) {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next2, "::minAppVersion", false));
                                                                        str5 = (String) next2;
                                                                        if (str5 != null) {
                                                                            new gv7(new sm(12));
                                                                            int i110 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            new gv7(new sm(12));
                                                                            int i111 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it6 = arrayList8.iterator();
                                                                        do {
                                                                            if (it6.hasNext()) {
                                                                                next2 = it6.next();
                                                                            } else {
                                                                                next2 = uwVar;
                                                                            }
                                                                            str5 = (String) next2;
                                                                            if (str5 != null) {
                                                                                new gv7(new sm(12));
                                                                                int i112 = Build.VERSION.SDK_INT;
                                                                                it7 = arrayList8.iterator();
                                                                                while (true) {
                                                                                    if (it7.hasNext()) {
                                                                                        next3 = it7.next();
                                                                                        arrayList4 = arrayList8;
                                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                            arrayList8 = arrayList4;
                                                                                        }
                                                                                    } else {
                                                                                        arrayList4 = arrayList8;
                                                                                        next3 = uwVar;
                                                                                    }
                                                                                }
                                                                                str6 = (String) next3;
                                                                                if (str6 != null) {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                new gv7(new sm(12));
                                                                                int i113 = Build.VERSION.SDK_INT;
                                                                                it7 = arrayList8.iterator();
                                                                                while (true) {
                                                                                    if (it7.hasNext()) {
                                                                                        next3 = it7.next();
                                                                                        arrayList4 = arrayList8;
                                                                                        if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                            arrayList8 = arrayList4;
                                                                                        }
                                                                                    } else {
                                                                                        arrayList4 = arrayList8;
                                                                                        next3 = uwVar;
                                                                                    }
                                                                                }
                                                                                str6 = (String) next3;
                                                                                if (str6 != null) {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    it8 = arrayList4.iterator();
                                                                                    do {
                                                                                        if (it8.hasNext()) {
                                                                                            next4 = it8.next();
                                                                                        } else {
                                                                                            next4 = uwVar;
                                                                                        }
                                                                                        str7 = (String) next4;
                                                                                        if (str7 != null) {
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        while (r1.hasNext()) {
                                                                                            if (!uq7.V((String) obj3, "::", false)) {
                                                                                                arrayList3.add(obj3);
                                                                                            }
                                                                                        }
                                                                                    } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        } while (!uq7.V((String) next2, "::minAppVersion", false));
                                                                        str5 = (String) next2;
                                                                        if (str5 != null) {
                                                                            new gv7(new sm(12));
                                                                            int i114 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            new gv7(new sm(12));
                                                                            int i115 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } while (!uq7.V((String) next, "::maxAppVersion", false));
                                                                str4 = (String) next;
                                                                if (str4 != null) {
                                                                    it6 = arrayList8.iterator();
                                                                    do {
                                                                        if (it6.hasNext()) {
                                                                            next2 = it6.next();
                                                                        } else {
                                                                            next2 = uwVar;
                                                                        }
                                                                        str5 = (String) next2;
                                                                        if (str5 != null) {
                                                                            new gv7(new sm(12));
                                                                            int i116 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            new gv7(new sm(12));
                                                                            int i117 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next2, "::minAppVersion", false));
                                                                    str5 = (String) next2;
                                                                    if (str5 != null) {
                                                                        new gv7(new sm(12));
                                                                        int i118 = Build.VERSION.SDK_INT;
                                                                        it7 = arrayList8.iterator();
                                                                        while (true) {
                                                                            if (it7.hasNext()) {
                                                                                next3 = it7.next();
                                                                                arrayList4 = arrayList8;
                                                                                if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                    arrayList8 = arrayList4;
                                                                                }
                                                                            } else {
                                                                                arrayList4 = arrayList8;
                                                                                next3 = uwVar;
                                                                            }
                                                                        }
                                                                        str6 = (String) next3;
                                                                        if (str6 != null) {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        new gv7(new sm(12));
                                                                        int i119 = Build.VERSION.SDK_INT;
                                                                        it7 = arrayList8.iterator();
                                                                        while (true) {
                                                                            if (it7.hasNext()) {
                                                                                next3 = it7.next();
                                                                                arrayList4 = arrayList8;
                                                                                if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                    arrayList8 = arrayList4;
                                                                                }
                                                                            } else {
                                                                                arrayList4 = arrayList8;
                                                                                next3 = uwVar;
                                                                            }
                                                                        }
                                                                        str6 = (String) next3;
                                                                        if (str6 != null) {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    it6 = arrayList8.iterator();
                                                                    do {
                                                                        if (it6.hasNext()) {
                                                                            next2 = it6.next();
                                                                        } else {
                                                                            next2 = uwVar;
                                                                        }
                                                                        str5 = (String) next2;
                                                                        if (str5 != null) {
                                                                            new gv7(new sm(12));
                                                                            int i1110 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            new gv7(new sm(12));
                                                                            int i1111 = Build.VERSION.SDK_INT;
                                                                            it7 = arrayList8.iterator();
                                                                            while (true) {
                                                                                if (it7.hasNext()) {
                                                                                    next3 = it7.next();
                                                                                    arrayList4 = arrayList8;
                                                                                    if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                        arrayList8 = arrayList4;
                                                                                    }
                                                                                } else {
                                                                                    arrayList4 = arrayList8;
                                                                                    next3 = uwVar;
                                                                                }
                                                                            }
                                                                            str6 = (String) next3;
                                                                            if (str6 != null) {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it8 = arrayList4.iterator();
                                                                                do {
                                                                                    if (it8.hasNext()) {
                                                                                        next4 = it8.next();
                                                                                    } else {
                                                                                        next4 = uwVar;
                                                                                    }
                                                                                    str7 = (String) next4;
                                                                                    if (str7 != null) {
                                                                                    }
                                                                                    arrayList3 = new ArrayList();
                                                                                    while (r1.hasNext()) {
                                                                                        if (!uq7.V((String) obj3, "::", false)) {
                                                                                            arrayList3.add(obj3);
                                                                                        }
                                                                                    }
                                                                                } while (!uq7.V((String) next4, "::minSdk", false));
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } while (!uq7.V((String) next2, "::minAppVersion", false));
                                                                    str5 = (String) next2;
                                                                    if (str5 != null) {
                                                                        new gv7(new sm(12));
                                                                        int i1112 = Build.VERSION.SDK_INT;
                                                                        it7 = arrayList8.iterator();
                                                                        while (true) {
                                                                            if (it7.hasNext()) {
                                                                                next3 = it7.next();
                                                                                arrayList4 = arrayList8;
                                                                                if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                    arrayList8 = arrayList4;
                                                                                }
                                                                            } else {
                                                                                arrayList4 = arrayList8;
                                                                                next3 = uwVar;
                                                                            }
                                                                        }
                                                                        str6 = (String) next3;
                                                                        if (str6 != null) {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        new gv7(new sm(12));
                                                                        int i1113 = Build.VERSION.SDK_INT;
                                                                        it7 = arrayList8.iterator();
                                                                        while (true) {
                                                                            if (it7.hasNext()) {
                                                                                next3 = it7.next();
                                                                                arrayList4 = arrayList8;
                                                                                if (!uq7.V((String) next3, "::maxSdk", false)) {
                                                                                    arrayList8 = arrayList4;
                                                                                }
                                                                            } else {
                                                                                arrayList4 = arrayList8;
                                                                                next3 = uwVar;
                                                                            }
                                                                        }
                                                                        str6 = (String) next3;
                                                                        if (str6 != null) {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it8 = arrayList4.iterator();
                                                                            do {
                                                                                if (it8.hasNext()) {
                                                                                    next4 = it8.next();
                                                                                } else {
                                                                                    next4 = uwVar;
                                                                                }
                                                                                str7 = (String) next4;
                                                                                if (str7 != null) {
                                                                                }
                                                                                arrayList3 = new ArrayList();
                                                                                while (r1.hasNext()) {
                                                                                    if (!uq7.V((String) obj3, "::", false)) {
                                                                                        arrayList3.add(obj3);
                                                                                    }
                                                                                }
                                                                            } while (!uq7.V((String) next4, "::minSdk", false));
                                                                            str7 = (String) next4;
                                                                            if (str7 != null) {
                                                                            }
                                                                            arrayList3 = new ArrayList();
                                                                            while (r1.hasNext()) {
                                                                                if (!uq7.V((String) obj3, "::", false)) {
                                                                                    arrayList3.add(obj3);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else if (pe4.d((String) it13.next(), "::disabled")) {
                                                            }
                                                            arrayList3 = uwVar;
                                                        }
                                                    }
                                                }
                                            } else {
                                                pe4.F("prefs");
                                                uwVar = null;
                                                try {
                                                    throw null;
                                                } catch (ClassCastException unused) {
                                                    z8 = false;
                                                    eb2Var = !z8 ? j36.c : j36.c;
                                                    if (eb2Var != null) {
                                                        arrayList3 = uwVar;
                                                    } else {
                                                        arrayList3 = uwVar;
                                                    }
                                                    if (arrayList3 == 0) {
                                                        if (arrayList3.isEmpty()) {
                                                            r1 = arrayList3;
                                                            r1 = uwVar;
                                                        }
                                                        if (r1 != 0) {
                                                            size = r1.size();
                                                            vr6 vr6Var3 = vr6.INSTANCE;
                                                            if (size > 1) {
                                                                str8 = "patches";
                                                            } else {
                                                                str8 = "patch";
                                                            }
                                                            vr6.i$default(vr6Var3, "AppRestoreTask", u48.k(size, "Applying ", " post data restore ", str8), null, 4, null);
                                                            arrayList5 = new ArrayList();
                                                            for (String str14 : r1) {
                                                                if (nq7.Z(str14, "%dataDir", false)) {
                                                                    dataDir = jiVar.getDataDir();
                                                                    if (dataDir != null) {
                                                                        objT = uwVar;
                                                                    } else {
                                                                        objT = uwVar;
                                                                    }
                                                                } else {
                                                                    if (nq7.Z(str14, "%deDataDir", false)) {
                                                                        deDataDir = jiVar.getDeDataDir();
                                                                        if (deDataDir != null) {
                                                                            strI0 = nq7.I0(deDataDir, '/');
                                                                            if (strI0 == null) {
                                                                                strT = uq7.T(str14, "%deDataDir", strI0);
                                                                            }
                                                                        } else {
                                                                            objT = str14;
                                                                        }
                                                                        objT = str14;
                                                                        obj = uwVar;
                                                                    }
                                                                    if (obj != null) {
                                                                        objT = str14;
                                                                        obj = strT;
                                                                        arrayList5.add(obj);
                                                                    } else {
                                                                        objT = str14;
                                                                        obj = strT;
                                                                    }
                                                                }
                                                                objT = str14;
                                                                obj = objT;
                                                                if (obj != null) {
                                                                    objT = str14;
                                                                    obj = strT;
                                                                    arrayList5.add(obj);
                                                                } else {
                                                                    objT = str14;
                                                                    obj = strT;
                                                                }
                                                            }
                                                            if (!arrayList5.isEmpty()) {
                                                                mp6 mp6Var2 = mp6.a;
                                                                String[] strArr2 = (String[]) arrayList5.toArray(new String[0]);
                                                                mp6.a.h((String[]) Arrays.copyOf(strArr2, strArr2.length), ip6.SU);
                                                            }
                                                        }
                                                    }
                                                    jzVar2 = jzVar;
                                                    if (jzVar2.f) {
                                                        localMetadataF = xwVar2.f();
                                                        gv7 gv7Var = mk7.a;
                                                        if (mp6.g) {
                                                            appSpecialDataPayload = (AppSpecialDataPayload) xwVar2.m.getValue();
                                                            if (appSpecialDataPayload == null) {
                                                                if (z6) {
                                                                    if (cloudMetadata2 != null) {
                                                                        ssaid2 = cloudMetadata2.getSsaid();
                                                                    } else {
                                                                        r0 = uwVar;
                                                                    }
                                                                } else if (localMetadataF != null) {
                                                                    ssaid = localMetadataF.getSsaid();
                                                                } else {
                                                                    r0 = uwVar;
                                                                }
                                                            } else if (z6) {
                                                                if (cloudMetadata2 != null) {
                                                                    ssaid2 = cloudMetadata2.getSsaid();
                                                                } else {
                                                                    r0 = uwVar;
                                                                }
                                                            } else if (localMetadataF != null) {
                                                                ssaid = localMetadataF.getSsaid();
                                                            } else {
                                                                r0 = uwVar;
                                                            }
                                                            if (r0 != 0) {
                                                                r0 = ssaid;
                                                                r0 = ssaid2;
                                                                if (r0.length() == 0) {
                                                                    r0 = ssaid;
                                                                    r0 = ssaid2;
                                                                    vr6.d$default(vr6.INSTANCE, "AppRestoreTask", "restoreSsaid: No saved ssaid", null, 4, null);
                                                                } else {
                                                                    ((mk7) xwVar2.p.getValue()).b(jiVar.getPackageName(), r0);
                                                                }
                                                            } else {
                                                                r0 = ssaid;
                                                                r0 = ssaid2;
                                                                vr6.d$default(vr6.INSTANCE, "AppRestoreTask", "restoreSsaid: No saved ssaid", null, 4, null);
                                                            }
                                                        }
                                                    }
                                                    if (!xwVar2.w()) {
                                                        xwVar2.m((cx) gxVar2, numN.intValue(), new mw(kh6Var2, jA, qvVar2));
                                                    }
                                                    if (xwVar2.w()) {
                                                        kh6Var3 = kh6Var2;
                                                    } else {
                                                        kh6Var3 = kh6Var2;
                                                    }
                                                    if (xwVar2.w()) {
                                                    }
                                                    xwVar3 = xwVar2;
                                                    jzVar3 = jzVar2;
                                                    it3 = it4;
                                                    i = i5;
                                                    z3 = z18;
                                                    z14 = z6;
                                                    jiVar2 = jiVar;
                                                    restoresAnyPermissions = z7;
                                                    c40Var2 = c40Var;
                                                    str9 = str2;
                                                    arrayList = arrayList2;
                                                }
                                            }
                                        } catch (ClassCastException unused2) {
                                            uwVar = null;
                                        }
                                    } else {
                                        uwVar = null;
                                    }
                                    if (eb2Var != null) {
                                        arrayList3 = uwVar;
                                    } else {
                                        arrayList3 = uwVar;
                                    }
                                }
                                if (arrayList3 == 0) {
                                    if (arrayList3.isEmpty()) {
                                        r1 = arrayList3;
                                        r1 = uwVar;
                                    }
                                    if (r1 != 0) {
                                        size = r1.size();
                                        vr6 vr6Var4 = vr6.INSTANCE;
                                        if (size > 1) {
                                            str8 = "patches";
                                        } else {
                                            str8 = "patch";
                                        }
                                        vr6.i$default(vr6Var4, "AppRestoreTask", u48.k(size, "Applying ", " post data restore ", str8), null, 4, null);
                                        arrayList5 = new ArrayList();
                                        while (r0.hasNext()) {
                                            if (nq7.Z(str14, "%dataDir", false)) {
                                                dataDir = jiVar.getDataDir();
                                                if (dataDir != null || (strI1 = nq7.I0(dataDir, '/')) == null) {
                                                    objT = uwVar;
                                                } else {
                                                    objT = uq7.T(str14, "%dataDir", strI1);
                                                }
                                            } else {
                                                if (nq7.Z(str14, "%deDataDir", false)) {
                                                    deDataDir = jiVar.getDeDataDir();
                                                    if (deDataDir != null) {
                                                        strI0 = nq7.I0(deDataDir, '/');
                                                        if (strI0 == null) {
                                                            strT = uq7.T(str14, "%deDataDir", strI0);
                                                        }
                                                    } else {
                                                        objT = str14;
                                                    }
                                                    objT = str14;
                                                    obj = uwVar;
                                                }
                                                if (obj != null) {
                                                    objT = str14;
                                                    obj = strT;
                                                    arrayList5.add(obj);
                                                } else {
                                                    objT = str14;
                                                    obj = strT;
                                                }
                                            }
                                            objT = str14;
                                            obj = objT;
                                            if (obj != null) {
                                                objT = str14;
                                                obj = strT;
                                                arrayList5.add(obj);
                                            } else {
                                                objT = str14;
                                                obj = strT;
                                            }
                                        }
                                        if (!arrayList5.isEmpty()) {
                                            mp6 mp6Var3 = mp6.a;
                                            String[] strArr3 = (String[]) arrayList5.toArray(new String[0]);
                                            mp6.a.h((String[]) Arrays.copyOf(strArr3, strArr3.length), ip6.SU);
                                        }
                                    }
                                }
                            } else {
                                uwVar = null;
                            }
                            jzVar2 = jzVar;
                            if (jzVar2.f) {
                                localMetadataF = xwVar2.f();
                                gv7 gv7Var2 = mk7.a;
                                if (mp6.g) {
                                    appSpecialDataPayload = (AppSpecialDataPayload) xwVar2.m.getValue();
                                    if (appSpecialDataPayload == null && (ssaid3 = appSpecialDataPayload.getSsaid()) != null) {
                                        r0 = ssaid3;
                                    } else if (z6) {
                                        if (cloudMetadata2 != null) {
                                            ssaid2 = cloudMetadata2.getSsaid();
                                        } else {
                                            r0 = uwVar;
                                        }
                                    } else if (localMetadataF != null) {
                                        ssaid = localMetadataF.getSsaid();
                                    } else {
                                        r0 = uwVar;
                                    }
                                    if (r0 != 0) {
                                        r0 = ssaid;
                                        r0 = ssaid2;
                                        if (r0.length() == 0) {
                                            r0 = ssaid;
                                            r0 = ssaid2;
                                            vr6.d$default(vr6.INSTANCE, "AppRestoreTask", "restoreSsaid: No saved ssaid", null, 4, null);
                                        } else {
                                            ((mk7) xwVar2.p.getValue()).b(jiVar.getPackageName(), r0);
                                        }
                                    } else {
                                        r0 = ssaid;
                                        r0 = ssaid2;
                                        vr6.d$default(vr6.INSTANCE, "AppRestoreTask", "restoreSsaid: No saved ssaid", null, 4, null);
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            String str15 = str;
                            if (xwVar2.t) {
                                g00 g00Var7 = g00.a;
                                g00.d(jiVar.getPackageName(), str15, false);
                            }
                            throw th;
                        }
                    }
                    if (!xwVar2.w() && (gxVar2 instanceof cx)) {
                        xwVar2.m((cx) gxVar2, numN.intValue(), new mw(kh6Var2, jA, qvVar2));
                    }
                    if (xwVar2.w() || !(gxVar2 instanceof dx)) {
                        kh6Var3 = kh6Var2;
                    } else {
                        int iIntValue = numN.intValue();
                        long j5 = jA;
                        kh6 kh6Var4 = kh6Var2;
                        qv qvVar3 = qvVar2;
                        iw iwVar = new iw(kh6Var4, j5, qvVar3, 1);
                        qvVar2 = qvVar3;
                        jA = j5;
                        kh6Var3 = kh6Var4;
                        xwVar2.n((dx) gxVar2, iIntValue, iwVar);
                    }
                    if (xwVar2.w() && (gxVar2 instanceof bx)) {
                        xwVar2.l((bx) gxVar2, numN.intValue(), new nw(kh6Var3, jA, qvVar2));
                    }
                }
                xwVar3 = xwVar2;
                jzVar3 = jzVar2;
                it3 = it4;
                i = i5;
                z3 = z18;
                z14 = z6;
                jiVar2 = jiVar;
                restoresAnyPermissions = z7;
                c40Var2 = c40Var;
                str9 = str2;
                arrayList = arrayList2;
            }
            z5 = z3;
            xwVar = xwVar3;
            ji jiVar4 = jiVar2;
            boolean z110 = restoresAnyPermissions;
            if (!xwVar.w()) {
                xwVar.q(xwVar.f());
                if (z5) {
                    xwVar.p();
                }
            }
            qvVar.invoke(100);
            vr6.i$default(vr6.INSTANCE, "AppRestoreTask", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
            return uwVar2;
        }
        LocalMetadata localMetadataF14 = xwVar3.f();
        List<Long> sBVersionCodesRequired = localMetadataF14 != null ? localMetadataF14.getSBVersionCodesRequired() : null;
        hj hjVar = new hj(xwVar3, i4);
        xwVar3.q.getClass();
        if (nm6.a(sBVersionCodesRequired, hjVar)) {
            jiVar2.checkInstalled();
            if (jiVar2.isInstalled()) {
                boolean z111 = g42.a;
                String packageName3 = jiVar2.getPackageName();
                packageName3.getClass();
                mp6.a.h(new String[]{String.format((String) g42.e.getValue(), Arrays.copyOf(new Object[]{packageName3}, 1))}, ip6.SU);
            }
            hkVar = xwVar3.k;
            q63VarC = hkVar.c();
            zO = wx3.o(list3);
            linkedHashSet = xwVar3.o;
            if (zO) {
                zJ5 = q63VarC.j();
                if (zJ5) {
                    yuVar = yuVar2;
                    list = list3;
                    uwVar = null;
                    z = false;
                    q63Var = q63VarC;
                } else {
                    yuVar = yuVar2;
                    list = list3;
                    uwVar = null;
                    z = false;
                    q63Var = q63VarC;
                }
                if (jiVar2.isInstalled()) {
                    rgVarA = ng.a(q63Var, z);
                    jC = rgVarA.c();
                    sourceDir = jiVar2.getSourceDir();
                    if (sourceDir == null) {
                        z13 = true;
                    } else {
                        long jA4 = new q63(sourceDir, 1).A();
                        localMetadataF10 = xwVar3.f();
                        if (localMetadataF10 != null) {
                            apkSizeMirrored = localMetadataF10.getApkSizeMirrored();
                        } else {
                            apkSizeMirrored = uwVar;
                        }
                        versionName = jiVar2.getVersionName();
                        if (versionName == null) {
                            versionName = "Empty";
                        }
                        String str16 = versionName;
                        versionCode = jiVar2.getVersionCode();
                        if (versionCode != null) {
                            jLongValue = versionCode.longValue();
                        } else {
                            jLongValue = -1;
                        }
                        long j6 = jLongValue;
                        splitSourceDirs = jiVar2.getSplitSourceDirs();
                        if (splitSourceDirs != null) {
                            z11 = true;
                        } else {
                            z11 = true;
                        }
                        boolean z112 = !z11;
                        sharedLibsInfos = jiVar2.getSharedLibsInfos();
                        if (sharedLibsInfos != null) {
                            z12 = true;
                        } else {
                            z12 = true;
                        }
                        zA = eq.a(jA4, apkSizeMirrored, new pg(str16, j6, z112, !z12), rgVarA, hkVar.C().j(), hkVar.z().j());
                        if (jC >= io4.h(jiVar2.getVersionCode())) {
                            z13 = zA;
                        } else {
                            if (!xwVar3.c.f) {
                                vr6.w$default(vr6Var, "AppRestoreTask", "Backup APK is older, APK downgrade is not allowed in batch actions.", null, 4, null);
                            } else if (jiVar2.isBundled()) {
                                vr6.w$default(vr6Var, "AppRestoreTask", "Backup APK is older and this is a system app. You'd have to be a monkey to downgrade!", null, 4, null);
                                Context contextC2 = SwiftApp.Companion.c();
                                zn4 zn4Var2 = zn4.a;
                                dj7.y(contextC2, "Skipped APK installation. System apps must not be downgraded!");
                            } else {
                                vr6.w$default(vr6Var, "AppRestoreTask", "APK downgrade restricted by Android System since Android Nougat 7.0, Swift Backup will attempt to downgrade using workarounds.", null, 4, null);
                                xwVar3.s = true;
                                z13 = zA;
                            }
                            z13 = z;
                        }
                    }
                    zJ5 = z13;
                }
                if (zJ5) {
                    if (hkVar.z().j()) {
                        linkedHashSet2 = linkedHashSet;
                        linkedHashSet2.add(gz.SharedLibs);
                    } else {
                        linkedHashSet2 = r19;
                    }
                    linkedHashSet2.add(gz.Apk);
                } else {
                    linkedHashSet2 = r19;
                }
            } else {
                yuVar = yuVar2;
                list = list3;
                jCurrentTimeMillis = jCurrentTimeMillis;
                linkedHashSet2 = linkedHashSet;
                uwVar = null;
                z = false;
                q63Var = q63VarC;
            }
            if (wx3.n(list)) {
                z2 = true;
                break;
            }
            listA0 = fl1.A0(hkVar.g(), hkVar.n(), hkVar.m(), hkVar.q());
            if (listA0.isEmpty()) {
                z2 = true;
                break;
            }
            it10 = listA0.iterator();
            while (true) {
                if (it10.hasNext()) {
                    z2 = true;
                    break;
                }
                if (((q63) it10.next()).j()) {
                    z2 = z;
                    break;
                }
            }
            if (xwVar3.e) {
                gs0 gs0Var2 = gs0.a;
                if (gs0.c(jiVar2.getPackageName(), is0.NoData)) {
                    vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "App is blacklisted. No data parts will be restored.", null, 4, null);
                    z2 = true;
                }
            }
            if (z2) {
                if (jiVar2.isInstalled()) {
                    jiVar2.calculateSize(wx3.p(list), wx3.r(list), wx3.s(list), wx3.q(list));
                }
                zP = wx3.p(list);
                z10 = xwVar3.r;
                if (zP) {
                    iuVar4 = iu.DATA;
                    zJ4 = hkVar.g().j();
                    if (!zJ4) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "No " + iuVar4 + " backup", null, 4, null);
                    }
                    if (jiVar2.isInstalled()) {
                        String dataDir3 = jiVar2.getDataDir();
                        localMetadataF8 = xwVar3.f();
                        if (localMetadataF8 != null) {
                            dataBackupDate = localMetadataF8.getDataBackupDate();
                        } else {
                            dataBackupDate = uwVar;
                        }
                        long jH10 = io4.h(dataBackupDate);
                        sizeInfo4 = jiVar2.getSizeInfo();
                        if (sizeInfo4 != null) {
                            ValueOf4 = Long.valueOf(sizeInfo4.getTotalDataSize(z10));
                        } else {
                            ValueOf4 = uwVar;
                        }
                        long jH11 = io4.h(ValueOf4);
                        localMetadataF9 = xwVar3.f();
                        if (localMetadataF9 != null) {
                            dataSizeMirrored = localMetadataF9.getDataSizeMirrored();
                        } else {
                            dataSizeMirrored = uwVar;
                        }
                        zJ4 = xwVar3.q.b(iuVar4, dataDir3, jH10, jH11, io4.h(dataSizeMirrored));
                    }
                    if (zJ4) {
                        linkedHashSet2.add(gz.Data);
                    }
                }
                if (wx3.r(list)) {
                    iuVar3 = iu.EXTDATA;
                    zJ3 = hkVar.n().j();
                    if (zJ3) {
                    }
                    if (jiVar2.isInstalled()) {
                        String externalDataDir2 = jiVar2.getExternalDataDir();
                        localMetadataF6 = xwVar3.f();
                        if (localMetadataF6 != null) {
                            extDataBackupDate = localMetadataF6.getExtDataBackupDate();
                        } else {
                            extDataBackupDate = uwVar;
                        }
                        long jH12 = io4.h(extDataBackupDate);
                        sizeInfo3 = jiVar2.getSizeInfo();
                        if (sizeInfo3 != null) {
                            ValueOf3 = Long.valueOf(sizeInfo3.getExtDataSize(z10));
                        } else {
                            ValueOf3 = uwVar;
                        }
                        long jH13 = io4.h(ValueOf3);
                        localMetadataF7 = xwVar3.f();
                        if (localMetadataF7 != null) {
                            extDataSizeMirrored = localMetadataF7.getExtDataSizeMirrored();
                        } else {
                            extDataSizeMirrored = uwVar;
                        }
                        zJ3 = xwVar3.q.b(iuVar3, externalDataDir2, jH12, jH13, io4.h(extDataSizeMirrored));
                    }
                    if (zJ3) {
                        linkedHashSet2.add(gz.ExtData);
                    }
                } else {
                    hkVar = hkVar;
                }
                if (wx3.q(list)) {
                    iuVar2 = iu.EXPANSION;
                    zJ2 = hkVar.m().j();
                    if (!zJ2) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", eq3.k("No ", iuVar2.toDisplayString(true), " backup"), null, 4, null);
                    }
                    if (jiVar2.isInstalled()) {
                        String expansionDir2 = jiVar2.getExpansionDir();
                        localMetadataF4 = xwVar3.f();
                        if (localMetadataF4 != null) {
                            expansionBackupDate = localMetadataF4.getExpansionBackupDate();
                        } else {
                            expansionBackupDate = uwVar;
                        }
                        long jH14 = io4.h(expansionBackupDate);
                        sizeInfo2 = jiVar2.getSizeInfo();
                        if (sizeInfo2 != null) {
                            ValueOf2 = Long.valueOf(sizeInfo2.getExternalObbSize());
                        } else {
                            ValueOf2 = uwVar;
                        }
                        long jH15 = io4.h(ValueOf2);
                        localMetadataF5 = xwVar3.f();
                        if (localMetadataF5 != null) {
                            expSizeMirrored = localMetadataF5.getExpSizeMirrored();
                        } else {
                            expSizeMirrored = uwVar;
                        }
                        zJ2 = xwVar3.q.b(iuVar2, expansionDir2, jH14, jH15, io4.h(expSizeMirrored));
                    }
                    if (zJ2) {
                        linkedHashSet2.add(gz.Expansion);
                    }
                }
                if (wx3.s(list)) {
                    iuVar = iu.MEDIA;
                    zJ = hkVar.q().j();
                    if (!zJ) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", eq3.k("No ", iuVar.toDisplayString(true), " backup"), null, 4, null);
                    }
                    if (jiVar2.isInstalled()) {
                        String mediaDir2 = jiVar2.getMediaDir();
                        localMetadataF2 = xwVar3.f();
                        if (localMetadataF2 != null) {
                            mediaBackupDate = localMetadataF2.getMediaBackupDate();
                        } else {
                            mediaBackupDate = uwVar;
                        }
                        long jH16 = io4.h(mediaBackupDate);
                        sizeInfo = jiVar2.getSizeInfo();
                        if (sizeInfo != null) {
                            ValueOf = Long.valueOf(sizeInfo.getMediaSize());
                        } else {
                            ValueOf = uwVar;
                        }
                        long jH17 = io4.h(ValueOf);
                        localMetadataF3 = xwVar3.f();
                        if (localMetadataF3 != null) {
                            mediaSizeMirrored = localMetadataF3.getMediaSizeMirrored();
                        } else {
                            mediaSizeMirrored = uwVar;
                        }
                        zJ = xwVar3.q.b(iuVar, mediaDir2, jH16, jH17, io4.h(mediaSizeMirrored));
                    }
                    if (zJ) {
                        linkedHashSet2.add(gz.Media);
                    }
                }
            } else {
                hkVar = hkVar;
            }
            restoresAnyPermissions = yuVar.getRestoresAnyPermissions();
            z3 = jzVar3.e;
            if (jiVar2.isInstalled()) {
                z4 = false;
            } else {
                z4 = false;
            }
            if (linkedHashSet2.isEmpty()) {
                vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "No tasks to perform with this app!", null, 4, null);
                if (z4) {
                    linkedHashSet3 = linkedHashSet2;
                }
            } else {
                linkedHashSet3 = linkedHashSet2;
                vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Tasks to perform = ".concat(el1.Y0(linkedHashSet3, null, null, null, null, 63)), null, 4, null);
            }
            arrayList = new ArrayList();
            it = linkedHashSet3.iterator();
            while (it.hasNext()) {
                switch (ww.a[((gz) it.next()).ordinal()]) {
                    case 1:
                        fxVar = new fx(hkVar.z());
                        break;
                    case 2:
                        fxVar = new yw(q63Var, hkVar.C());
                        break;
                    case 3:
                    case 8:
                        fxVar = uwVar;
                        break;
                    case 4:
                        fxVar = new ax(hkVar.g());
                        break;
                    case 5:
                        fxVar = new cx(hkVar.n());
                        break;
                    case 6:
                        fxVar = new bx(hkVar.m());
                        break;
                    case 7:
                        fxVar = new dx(hkVar.q());
                        break;
                    default:
                        q.j();
                        return uwVar;
                }
                if (fxVar != null) {
                    arrayList.add(fxVar);
                }
            }
            it2 = arrayList.iterator();
            jA = 0;
            while (it2.hasNext()) {
                jA += ((gx) it2.next()).a();
            }
            it3 = arrayList.iterator();
            i = 0;
            while (it3.hasNext()) {
                int i20 = i + 1;
                gxVar = (gx) it3.next();
                if (xwVar3.w()) {
                    z5 = z3;
                    xwVar = xwVar3;
                    ji jiVar5 = jiVar2;
                    boolean z113 = restoresAnyPermissions;
                    if (!xwVar.w()) {
                        xwVar.q(xwVar.f());
                        if (z5) {
                            xwVar.p();
                        }
                    }
                    qvVar.invoke(100);
                    vr6.i$default(vr6.INSTANCE, "AppRestoreTask", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                    return uwVar2;
                }
                kh6Var = new kh6();
                boolean z114 = z3;
                i2 = 0;
                while (i2 < i) {
                    kh6Var.a = ((gx) arrayList.get(i2)).a() + kh6Var.a;
                    i2++;
                    jA = jA;
                }
                j = jA;
                if (xwVar3.w()) {
                }
                z6 = z14;
                zW = xwVar3.w();
                cloudMetadata = xwVar3.j;
                if (zW) {
                    xwVar2 = xwVar3;
                    j2 = j;
                    cloudMetadata2 = cloudMetadata;
                    arrayList2 = arrayList;
                    str = str9;
                    c40Var = c40Var2;
                    jiVar = jiVar2;
                    jzVar = jzVar3;
                    z7 = restoresAnyPermissions;
                    it4 = it3;
                    kh6Var2 = kh6Var;
                    gxVar2 = gxVar;
                } else {
                    xwVar2 = xwVar3;
                    j2 = j;
                    cloudMetadata2 = cloudMetadata;
                    arrayList2 = arrayList;
                    str = str9;
                    c40Var = c40Var2;
                    jiVar = jiVar2;
                    jzVar = jzVar3;
                    z7 = restoresAnyPermissions;
                    it4 = it3;
                    kh6Var2 = kh6Var;
                    gxVar2 = gxVar;
                }
                g00 g00Var8 = g00.a;
                numN = g00.n(jiVar.getPackageName());
                if (numN != null) {
                }
                vr6.w$default(vr6.INSTANCE, "AppRestoreTask", "Installed app's uid not available. Skipping data restore.", null, 4, null);
                uwVar2.c("Installed app's uid not available. Skipping data restore.");
                return uwVar2;
            }
            z5 = z3;
            xwVar = xwVar3;
            ji jiVar6 = jiVar2;
            boolean z115 = restoresAnyPermissions;
            if (!xwVar.w()) {
                xwVar.q(xwVar.f());
                if (z5) {
                    xwVar.p();
                }
            }
            qvVar.invoke(100);
            vr6.i$default(vr6.INSTANCE, "AppRestoreTask", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
            return uwVar2;
        }
        return uwVar2;
    }

    public final List e() {
        return (List) this.n.getValue();
    }

    public final LocalMetadata f() {
        return (LocalMetadata) this.l.getValue();
    }

    public final void g(jz6 jz6Var, iu iuVar, String str) {
        String str2 = jz6Var.a;
        if (str2 != null) {
            if (nq7.j0(str2)) {
                str2 = null;
            }
            if (str2 == null) {
                return;
            }
            vr6 vr6Var = vr6.INSTANCE;
            String displayString = iuVar.toDisplayString(true);
            String packageName = this.h.getPackageName();
            StringBuilder sb = new StringBuilder();
            sb.append(displayString);
            sb.append(" restore diagnostics for ");
            sb.append(packageName);
            sb.append("/");
            sb.append(str);
            vr6.w$default(vr6Var, "AppRestoreTask", dj7.n(sb, ":\n", str2), null, 4, null);
        }
    }

    public final void h(ax axVar, int i, lw lwVar) throws Throwable {
        q63 q63Var = axVar.a;
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "AppRestoreTask", "Starting Data restore", null, 4, null);
        i40 i40Var = axVar.b;
        if (i40Var == null) {
            vr6.e$default(vr6Var, "AppRestoreTask", xs1.i(q63Var, "Couldn't get archive type for "), null, 4, null);
            a(iu.DATA, q63Var, null);
            return;
        }
        int i2 = i40Var.a;
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(axVar.h));
        vr6.i$default(vr6Var, "AppRestoreTask", u48.m("Restoring Data (", strC, ", v", i2, ")"), null, 4, null);
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.restoring_data);
        this.b.i.k(strG + " (" + strC + ")");
        ji jiVar = this.h;
        jiVar.refresh();
        g00 g00Var = g00.a;
        String strU = g00.u(jiVar.getDataDir());
        boolean z = true;
        try {
            if (i2 == 1) {
                i(axVar, lwVar);
            } else if (i2 == 2 || i2 == 4 || i2 == 5) {
                k(axVar, lwVar);
            } else {
                if (i2 != 6) {
                    throw new io5("Backup format not handled: " + i40Var);
                }
                j(axVar, lwVar);
            }
            Integer numValueOf = Integer.valueOf(i);
            if (i2 != 1) {
                z = false;
            }
            g00.e(jiVar, numValueOf, strU, z);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "Backup format check failed = ".concat(io4.b(e)), null, 4, null);
            this.u.a("Data restore failed (" + io4.b(e) + ")");
        }
    }

    public final void i(ax axVar, lw lwVar) throws Throwable {
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "AppRestoreTask", "Unpacking Data", null, 4, null);
        AppsWorkingDir appsWorkingDir = AppsWorkingDir.INSTANCE;
        ji jiVar = this.h;
        q63 workingDir = appsWorkingDir.getWorkingDir(jiVar.getPackageName(), 0L);
        Packer.a(axVar.a, workingDir, e(), null, null, new xv(lwVar, axVar, this, 1), 24);
        axVar.d(ex.UNPACK);
        lwVar.invoke(Long.valueOf(axVar.b()));
        String strConcat = workingDir.J(jiVar.getPackageName()).v().concat("/");
        mp6 mp6Var = mp6.a;
        boolean z = g42.a;
        String dataDir = jiVar.getDataDir();
        dataDir.getClass();
        mp6.a.h(new String[]{g42.j(strConcat, dataDir)}, ip6.SU);
        vr6.i$default(vr6Var, "AppRestoreTask", "Restored Data", null, 4, null);
        String deDataDir = jiVar.getDeDataDir();
        if (deDataDir != null && deDataDir.length() != 0) {
            String strConcat2 = workingDir.J(jiVar.getPackageName() + "_user_de").v().concat("/");
            if (strConcat2.length() == 0) {
                c6.f("Invalid filePath = ".concat(strConcat2));
                return;
            } else if (new q63(strConcat2, 1).j()) {
                String deDataDir2 = jiVar.getDeDataDir();
                deDataDir2.getClass();
                mp6.a.h(new String[]{g42.j(strConcat2, deDataDir2)}, ip6.SU);
                vr6.i$default(vr6Var, "AppRestoreTask", "Restored DE Data", null, 4, null);
            }
        }
        axVar.d(ex.UNTAR);
        lwVar.invoke(Long.valueOf(axVar.b()));
        cy0.e(workingDir);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    public final void j(ax axVar, lw lwVar) {
        String path;
        File parentFile;
        i40 i40Var = axVar.b;
        String path2 = null;
        if (i40Var == null) {
            a(iu.DATA, axVar.a, null);
            return;
        }
        boolean zA = i40Var.a("data");
        uw uwVar = this.u;
        if (!zA) {
            uwVar.a("App Data backup archive is missing the data entry");
            return;
        }
        ji jiVar = this.h;
        String dataDir = jiVar.getDataDir();
        if (dataDir == null) {
            path = null;
        } else {
            if (nq7.j0(dataDir)) {
                dataDir = null;
            }
            if (dataDir != null) {
                File parentFile2 = new File(dataDir).getParentFile();
                path = parentFile2 != null ? parentFile2.getPath() : null;
            } else {
                path = null;
            }
        }
        if (path == null || nq7.j0(path)) {
            uwVar.a("App Data restore target is unavailable");
            return;
        }
        Object[] objArr = null;
        try {
            ex exVar = ex.UNTAR_DATA;
            vw vwVarR = r(axVar, "data", path, exVar, "Extracting Data", null, lwVar);
            if (vwVarR.a) {
                char[] cArr = vwVarR.b;
                axVar.d(exVar);
                lwVar.invoke(Long.valueOf(axVar.b()));
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, "AppRestoreTask", "Restored Data", null, 4, null);
                if (!i40Var.a("data_de")) {
                    if (cArr != null) {
                        Arrays.fill(cArr, 0, cArr.length, (char) 0);
                        return;
                    }
                    return;
                }
                String deDataDir = jiVar.getDeDataDir();
                if (deDataDir != null) {
                    if (nq7.j0(deDataDir)) {
                        deDataDir = null;
                    }
                    if (deDataDir != null && (parentFile = new File(deDataDir).getParentFile()) != null) {
                        path2 = parentFile.getPath();
                    }
                }
                String str = path2;
                if (str != null && !nq7.j0(str)) {
                    ex exVar2 = ex.UNTAR_DEDATA;
                    vw vwVarR2 = r(axVar, "data_de", str, exVar2, "Extracting DE Data", cArr, lwVar);
                    if (cArr != null) {
                        Arrays.fill(cArr, 0, cArr.length, (char) 0);
                    }
                    char[] cArr2 = vwVarR2.b;
                    if (!vwVarR2.a) {
                        if (cArr2 != null) {
                            Arrays.fill(cArr2, 0, cArr2.length, (char) 0);
                            return;
                        }
                        return;
                    } else {
                        axVar.d(exVar2);
                        lwVar.invoke(Long.valueOf(axVar.b()));
                        vr6.i$default(vr6Var, "AppRestoreTask", "Restored DE Data", null, 4, null);
                        if (cArr2 != null) {
                            Arrays.fill(cArr2, 0, cArr2.length, (char) 0);
                            return;
                        }
                        return;
                    }
                }
                uwVar.e("DE Data restore skipped because app DE data directory is unavailable");
                axVar.d(ex.UNTAR_DEDATA);
                lwVar.invoke(Long.valueOf(axVar.b()));
                if (cArr != null) {
                    Arrays.fill(cArr, 0, cArr.length, (char) 0);
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                Arrays.fill((char[]) null, 0, objArr.length, (char) 0);
            }
            throw th;
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r0v19 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v19 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v19 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v19 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r2v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v10 ??, new type: q63
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r2v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v10 ??, new type: q63
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v19 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public final void k(defpackage.ax r19, defpackage.lw r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xw.k(ax, lw):void");
    }

    public final void l(final bx bxVar, int i, final nw nwVar) throws Throwable {
        boolean z;
        int i2;
        ji jiVar;
        String str;
        vr6 vr6Var;
        uw uwVar;
        iz6 iz6Var;
        uw uwVar2;
        int i3;
        String str2;
        vr6 vr6Var2 = vr6.INSTANCE;
        vr6.i$default(vr6Var2, "AppRestoreTask", "Starting Expansion restore", null, 4, null);
        i40 i40Var = bxVar.b;
        q63 q63Var = bxVar.a;
        long j = bxVar.d;
        if (i40Var == null) {
            vr6.e$default(vr6Var2, "AppRestoreTask", xs1.i(q63Var, "Couldn't get archive type for "), null, 4, null);
            a(iu.EXPANSION, q63Var, null);
            return;
        }
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(bxVar.c));
        int i4 = i40Var.a;
        vr6.i$default(vr6Var2, "AppRestoreTask", u48.m("Restoring Expansion (", strC, ", v", i4, ")"), null, 4, null);
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.restoring_expansion);
        this.b.i.k(strG + " (" + strC + ")");
        uw uwVar3 = this.u;
        ji jiVar2 = this.h;
        if (i4 == 1) {
            z = true;
            i2 = 2;
            jiVar = jiVar2;
            str = ")";
            vr6Var = vr6Var2;
            if (iu.EXPANSION.getBackupReq() != sk0.NONE) {
                long jW = tu0.w(j / 2.0f);
                q63 workingDir = AppsWorkingDir.INSTANCE.getWorkingDir(jiVar.getPackageName(), 0L);
                kh6 kh6Var = new kh6();
                uwVar = uwVar3;
                Packer.a(bxVar.a, workingDir, e(), null, null, new ew(jW, nwVar, kh6Var, this, 0), 24);
                long j2 = kh6Var.a + jW;
                kh6Var.a = j2;
                nwVar.invoke(Long.valueOf(j2));
                String strConcat = workingDir.J(jiVar.getPackageName()).v().concat("/");
                mp6 mp6Var = mp6.a;
                boolean z2 = g42.a;
                mp6Var.h(new String[]{g42.j(strConcat, jiVar.getExpansionDir())}, ip6.SHIZUKU);
                long j3 = kh6Var.a + jW;
                kh6Var.a = j3;
                nwVar.invoke(Long.valueOf(j3));
                cy0.e(workingDir);
            } else {
                uwVar = uwVar3;
                String parent = new File(jiVar.getExpansionDir()).getParent();
                if (parent != null) {
                    final kh6 kh6Var2 = new kh6();
                    Packer.a(bxVar.a, new q63(parent, 2), e(), null, null, new rt3(nwVar, this, bxVar, kh6Var2) { // from class: fw
                        public final /* synthetic */ bx a;
                        public final /* synthetic */ nw b;
                        public final /* synthetic */ kh6 c;

                        {
                            this.a = bxVar;
                            this.c = kh6Var2;
                        }

                        @Override // defpackage.rt3
                        public final Object a(Object obj, Object obj2, Object obj3) {
                            long jLongValue = ((Long) obj).longValue();
                            long jLongValue2 = ((Long) obj2).longValue();
                            ((Long) obj3).getClass();
                            this.b.invoke(Long.valueOf(this.c.a + tu0.w((jLongValue / jLongValue2) * this.a.d)));
                            return be8.a;
                        }
                    }, 24);
                    long j4 = kh6Var2.a + j;
                    kh6Var2.a = j4;
                    nwVar.invoke(Long.valueOf(j4));
                }
            }
        } else if (i4 == 3) {
            z = true;
            jiVar = jiVar2;
            vr6.i$default(vr6Var2, "AppRestoreTask", "Preparing for extraction", null, 4, null);
            vr6Var = vr6Var2;
            q63 q63VarT = new q63(jiVar.getExpansionDir(), 1).t();
            q63VarT.getClass();
            oj7 oj7VarB = pj7.b(q63VarT, q63Var.A());
            if (oj7VarB != null) {
                String str3 = oj7VarB.a;
                if (oj7VarB.b) {
                    uwVar3.a(str3);
                } else {
                    uwVar3.b(iu.EXPANSION, str3);
                }
                uwVar2 = uwVar3;
                str2 = ")";
                i3 = 2;
            } else {
                kh6 kh6Var3 = new kh6();
                String strV = q63VarT.v();
                ip6 ip6Var = ip6.SHIZUKU;
                cw cwVar = new cw(nwVar, this, bxVar, kh6Var3);
                ip6Var.getClass();
                Timer timer = new Timer();
                timer.schedule(new nx7(strV, q63Var, cwVar), 0L, 2000L);
                try {
                    HashSet hashSet = mz6.a;
                    q63 q63Var2 = new q63(strV, 2);
                    f27 f27Var = f27.Basic;
                    long jA = q63Var.A();
                    int i5 = mx7.a[ip6Var.ordinal()];
                    if (i5 == 1) {
                        iz6Var = iz6.Local;
                    } else if (i5 == 2) {
                        iz6Var = iz6.Root;
                    } else if (i5 == 3) {
                        mp6 mp6Var2 = mp6.a;
                        if (!mp6.g && aq6.c() == null) {
                            iz6Var = mp6.g() ? iz6.Shizuku : iz6.Local;
                        } else {
                            iz6Var = iz6.Root;
                        }
                    } else {
                        if (i5 != 4) {
                            throw new mn5();
                        }
                        iz6Var = iz6.Auto;
                    }
                    uwVar2 = uwVar3;
                    i3 = 2;
                    str2 = ")";
                    mz6.k(q63Var, q63Var2, f27Var, jA, iz6Var, null);
                    timer.cancel();
                    long j5 = kh6Var3.a + j;
                    kh6Var3.a = j5;
                    nwVar.invoke(Long.valueOf(j5));
                } catch (Throwable th) {
                    timer.cancel();
                    throw th;
                }
            }
            i2 = i3;
            str = str2;
            uwVar = uwVar2;
        } else {
            if (i4 != 6) {
                throw new io5(fz5.j(i4, "Backup format not handled: "));
            }
            q63 q63Var3 = bxVar.a;
            iu iuVar = iu.EXPANSION;
            q63 q63VarT2 = new q63(jiVar2.getExpansionDir(), 2).t();
            q63VarT2.getClass();
            z = true;
            jiVar = jiVar2;
            if (!s(q63Var3, i40Var, iuVar, q63VarT2, bxVar.d, nwVar)) {
                return;
            }
            nwVar.invoke(Long.valueOf(j));
            i2 = 2;
            uwVar = uwVar3;
            str = ")";
            vr6Var = vr6Var2;
        }
        if (iu.EXPANSION.getBackupReq() != sk0.NONE) {
            jr7 jr7Var = new jr7(jiVar.getExpansionDir());
            if (jr7Var.b("[ -e @@ ]")) {
                q63 q63Var4 = (q63) io4.j("AppRestoreTask", "Obb dir fetch", z, new b7(i2), 8);
                if (b67.c()) {
                    try {
                        g00 g00Var = g00.a;
                        String strK = g00.k(q63Var4);
                        String path = jr7Var.getPath();
                        path.getClass();
                        g00.E(i, strK, path);
                    } catch (Exception e) {
                        Log.e("AppRestoreTask", "restoreExtData", e);
                        vr6.e$default(vr6.INSTANCE, "AppRestoreTask", io4.b(e), null, 4, null);
                        uwVar.c("Expansion cannot be restored (" + io4.b(e) + str);
                        return;
                    }
                }
            }
        }
        vr6.i$default(vr6Var, "AppRestoreTask", "Restored Expansion", null, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x013f  */
    public final void m(final cx cxVar, int i, final mw mwVar) throws Throwable {
        String str;
        ji jiVar;
        String extDataPasswordHash;
        String str2;
        ArrayList<q63> arrayList;
        final cx cxVar2;
        final mw mwVar2;
        Object next;
        q63 q63Var = cxVar.a;
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "AppRestoreTask", "Starting Ext Data restore", null, 4, null);
        i40 i40Var = cxVar.b;
        long j = cxVar.h;
        if (i40Var == null) {
            vr6.e$default(vr6Var, "AppRestoreTask", xs1.i(q63Var, "Couldn't get archive type for "), null, 4, null);
            a(iu.EXTDATA, q63Var, null);
            return;
        }
        int i2 = i40Var.a;
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(j));
        vr6.i$default(vr6Var, "AppRestoreTask", u48.m("Restoring Ext Data (", strC, ", v", i2, ")"), null, 4, null);
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.restoring_external_data);
        this.b.i.k(strG + " (" + strC + ")");
        uw uwVar = this.u;
        ji jiVar2 = this.h;
        if (i2 == 1) {
            str = ")";
            jiVar = jiVar2;
            q63 workingDir = AppsWorkingDir.INSTANCE.getWorkingDir(jiVar.getPackageName(), 0L);
            vr6.i$default(vr6Var, "AppRestoreTask", "Unpacking Ext Data", null, 4, null);
            Packer.a(cxVar.a, workingDir, e(), null, null, new xv(mwVar, cxVar, this, 0), 24);
            cxVar.d(ex.UNPACK);
            mwVar.invoke(Long.valueOf(cxVar.b()));
            String strConcat = workingDir.J(jiVar.getPackageName()).v().concat("/");
            mp6 mp6Var = mp6.a;
            boolean z = g42.a;
            mp6Var.h(new String[]{g42.j(strConcat, jiVar.getExternalDataDir())}, ip6.SHIZUKU);
            cxVar.d(ex.UNTAR);
            mwVar.invoke(Long.valueOf(cxVar.b()));
            cy0.e(workingDir);
        } else if (i2 == 2 || i2 == 4 || i2 == 5) {
            str = ")";
            jiVar = jiVar2;
            vr6.i$default(vr6Var, "AppRestoreTask", "Unpacking Ext Data", null, 4, null);
            ArrayList<q63> arrayList2 = new ArrayList();
            AppsWorkingDir appsWorkingDir = AppsWorkingDir.INSTANCE;
            q63 workingDir2 = appsWorkingDir.getWorkingDir(jiVar.getPackageName(), j);
            arrayList2.add(workingDir2);
            oj7 oj7VarB = pj7.b(workingDir2, j);
            if (oj7VarB != null) {
                String str3 = oj7VarB.a;
                if (oj7VarB.b) {
                    uwVar.a(str3);
                } else {
                    uwVar.b(iu.EXTDATA, str3);
                }
                for (q63 q63Var2 : arrayList2) {
                    q63Var2.getClass();
                    cy0.e(q63Var2);
                }
            } else {
                q63 q63Var3 = cxVar.a;
                List listE = e();
                if (this.i) {
                    CloudMetadata cloudMetadata = this.j;
                    if (cloudMetadata != null) {
                        extDataPasswordHash = cloudMetadata.getExtDataPasswordHash();
                        str2 = extDataPasswordHash;
                    } else {
                        str2 = null;
                    }
                } else {
                    LocalMetadata localMetadataF = f();
                    if (localMetadataF != null) {
                        extDataPasswordHash = localMetadataF.getExtDataPasswordHash();
                        str2 = extDataPasswordHash;
                    } else {
                        str2 = null;
                    }
                }
                fw5 fw5VarA = Packer.a(q63Var3, workingDir2, listE, str2, null, new rt3(cxVar, this) { // from class: rw
                    public final /* synthetic */ cx b;

                    @Override // defpackage.rt3
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        long jLongValue = ((Long) obj).longValue();
                        ((Long) obj2).getClass();
                        ((Long) obj3).getClass();
                        this.a.invoke(Long.valueOf(this.b.b() + jLongValue));
                        return be8.a;
                    }
                }, 16);
                cxVar.d(ex.UNPACK);
                mwVar.invoke(Long.valueOf(cxVar.b()));
                if (fw5VarA.a) {
                    ArrayList arrayListB = workingDir2.B();
                    if (arrayListB == null || arrayListB.isEmpty()) {
                        vr6.e$default(vr6Var, "AppRestoreTask", "No files unpacked!", null, 4, null);
                        c(arrayList2);
                    } else {
                        if (cxVar.c) {
                            arrayList = arrayList2;
                            vr6.i$default(vr6Var, "AppRestoreTask", "Decompressing Ext Data", null, 4, null);
                            long jC = th5.c(arrayListB);
                            q63 workingDir3 = appsWorkingDir.getWorkingDir(jiVar.getPackageName(), jC);
                            arrayList.add(workingDir3);
                            oj7 oj7VarB2 = pj7.b(workingDir3, jC);
                            if (oj7VarB2 != null) {
                                String str4 = oj7VarB2.a;
                                if (oj7VarB2.b) {
                                    uwVar.a(str4);
                                } else {
                                    uwVar.b(iu.EXTDATA, str4);
                                }
                                for (q63 q63Var4 : arrayList) {
                                    q63Var4.getClass();
                                    cy0.e(q63Var4);
                                }
                            } else {
                                final long jC2 = cxVar.c(ex.DECOMPRESS);
                                cxVar2 = cxVar;
                                mwVar2 = mwVar;
                                arrayListB = th5.b(arrayListB, workingDir3, new rt3(jC2, mwVar2, cxVar2, this) { // from class: sw
                                    public final /* synthetic */ long a;
                                    public final /* synthetic */ mw b;
                                    public final /* synthetic */ cx c;

                                    @Override // defpackage.rt3
                                    public final Object a(Object obj, Object obj2, Object obj3) {
                                        long jLongValue = ((Long) obj).longValue();
                                        long jLongValue2 = ((Long) obj2).longValue();
                                        ((Long) obj3).getClass();
                                        this.b.invoke(Long.valueOf(this.c.b() + tu0.w((jLongValue / jLongValue2) * this.a)));
                                        return be8.a;
                                    }
                                });
                            }
                        } else {
                            arrayList = arrayList2;
                            cxVar2 = cxVar;
                            mwVar2 = mwVar;
                        }
                        cxVar2.d(ex.DECOMPRESS);
                        mwVar2.invoke(Long.valueOf(cxVar2.b()));
                        if (arrayListB.isEmpty()) {
                            vr6.e$default(vr6Var, "AppRestoreTask", "No tar files found!", null, 4, null);
                            c(arrayList);
                        } else {
                            Iterator it = arrayListB.iterator();
                            do {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it.next();
                            } while (!((q63) next).p().equals(jiVar.getPackageName() + ".tar"));
                            q63 q63Var5 = (q63) next;
                            if (q63Var5 == null) {
                                vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "No tar file found!", null, 4, null);
                                c(arrayList);
                            } else {
                                vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Preparing for extraction", null, 4, null);
                                q63 q63VarT = new q63(jiVar.getExternalDataDir(), 1).t();
                                q63VarT.getClass();
                                oj7 oj7VarB3 = pj7.b(q63VarT, q63Var5.A());
                                if (oj7VarB3 != null) {
                                    String str5 = oj7VarB3.a;
                                    if (oj7VarB3.b) {
                                        uwVar.a(str5);
                                    } else {
                                        uwVar.b(iu.EXTDATA, str5);
                                    }
                                    for (q63 q63Var6 : arrayList) {
                                        q63Var6.getClass();
                                        cy0.e(q63Var6);
                                    }
                                } else {
                                    ex exVar = ex.UNTAR;
                                    cx cxVar3 = cxVar2;
                                    ox7.a(q63Var5, q63VarT.v(), ip6.SHIZUKU, new ew(cxVar2.c(exVar), mwVar2, cxVar2, this, 1));
                                    cxVar3.d(exVar);
                                    mwVar2.invoke(Long.valueOf(cxVar3.b()));
                                    for (q63 q63Var7 : arrayList) {
                                        q63Var7.getClass();
                                        cy0.e(q63Var7);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    ew5 ew5Var = fw5VarA.d;
                    int i3 = ew5Var == null ? -1 : ww.b[ew5Var.ordinal()];
                    if (i3 == -1) {
                        a(iu.EXTDATA, q63Var, null);
                    } else if (i3 == 1 || i3 == 2) {
                        uwVar.d(iu.EXTDATA);
                    } else {
                        if (i3 != 3) {
                            q.j();
                            return;
                        }
                        a(iu.EXTDATA, q63Var, null);
                    }
                    c(arrayList2);
                }
            }
        } else {
            if (i2 != 6) {
                throw new io5(fz5.j(i2, "Backup format not handled: "));
            }
            q63 q63Var8 = cxVar.a;
            iu iuVar = iu.EXTDATA;
            q63 q63VarT2 = new q63(jiVar2.getExternalDataDir(), 2).t();
            q63VarT2.getClass();
            str = ")";
            if (!s(q63Var8, i40Var, iuVar, q63VarT2, cxVar.i, mwVar)) {
                return;
            }
            cxVar.d(ex.UNTAR);
            mwVar.invoke(Long.valueOf(cxVar.b()));
            jiVar = jiVar2;
        }
        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Restored Ext Data", null, 4, null);
        if (b67.c()) {
            jr7 jr7Var = new jr7(jiVar.getExternalDataDir());
            if (jr7Var.b("[ -e @@ ]")) {
                try {
                    g00 g00Var = g00.a;
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    File externalCacheDir = SwiftApp.Companion.c().getExternalCacheDir();
                    String strK = g00.k(externalCacheDir != null ? new q63(externalCacheDir, 1) : null);
                    String path = jr7Var.getPath();
                    path.getClass();
                    g00.E(i, strK, path);
                } catch (Exception e) {
                    Log.e("AppRestoreTask", "restoreExtData", e);
                    vr6.e$default(vr6.INSTANCE, "AppRestoreTask", io4.b(e), null, 4, null);
                    uwVar.c("External Data cannot be restored (" + io4.b(e) + str);
                    return;
                }
            }
        }
        mp6 mp6Var2 = mp6.a;
        if (mp6.g()) {
            gv7 gv7Var = qe7.a;
            boolean z2 = g42.a;
            String externalDataDir = jiVar.getExternalDataDir();
            externalDataDir.getClass();
            qe7.c(new String[]{String.format(g42.a("AQKeEX8+D3/pxf9mmtP5RdurSv9/HVRinPaBqCKRPUWAalObWcMykQBZVhiS"), Arrays.copyOf(new Object[]{externalDataDir}, 1))});
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0131  */
    public final void n(final dx dxVar, int i, final iw iwVar) throws Throwable {
        String mediaPasswordHash;
        String str;
        final dx dxVar2;
        final iw iwVar2;
        Object next;
        q63 q63Var = dxVar.a;
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "AppRestoreTask", "Starting Media restore", null, 4, null);
        i40 i40Var = dxVar.b;
        long j = dxVar.h;
        if (i40Var == null) {
            vr6.e$default(vr6Var, "AppRestoreTask", xs1.i(q63Var, "Couldn't get archive type for "), null, 4, null);
            a(iu.MEDIA, q63Var, null);
            return;
        }
        int i2 = i40Var.a;
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(j));
        vr6.i$default(vr6Var, "AppRestoreTask", u48.m("Restoring Media (", strC, ", v", i2, ")"), null, 4, null);
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.restoring_media);
        this.b.i.k(strG + " (" + strC + ")");
        ji jiVar = this.h;
        if (i2 == 6) {
            q63 q63Var2 = dxVar.a;
            iu iuVar = iu.MEDIA;
            q63 q63VarT = new q63(jiVar.getMediaDir(), 2).t();
            q63VarT.getClass();
            if (s(q63Var2, i40Var, iuVar, q63VarT, dxVar.i, iwVar)) {
                dxVar.d(ex.UNTAR);
                iwVar.invoke(Long.valueOf(dxVar.b()));
                vr6.i$default(vr6Var, "AppRestoreTask", "Restored Media", null, 4, null);
                o(i);
                return;
            }
            return;
        }
        ArrayList<q63> arrayList = new ArrayList();
        AppsWorkingDir appsWorkingDir = AppsWorkingDir.INSTANCE;
        q63 workingDir = appsWorkingDir.getWorkingDir(jiVar.getPackageName(), j);
        arrayList.add(workingDir);
        vr6.i$default(vr6Var, "AppRestoreTask", "Unpacking Media", null, 4, null);
        oj7 oj7VarB = pj7.b(workingDir, j);
        uw uwVar = this.u;
        if (oj7VarB != null) {
            String str2 = oj7VarB.a;
            if (oj7VarB.b) {
                uwVar.a(str2);
            } else {
                uwVar.b(iu.MEDIA, str2);
            }
            for (q63 q63Var3 : arrayList) {
                q63Var3.getClass();
                cy0.e(q63Var3);
            }
            return;
        }
        q63 q63Var4 = dxVar.a;
        List listE = e();
        if (this.i) {
            CloudMetadata cloudMetadata = this.j;
            if (cloudMetadata != null) {
                mediaPasswordHash = cloudMetadata.getMediaPasswordHash();
                str = mediaPasswordHash;
            } else {
                str = null;
            }
        } else {
            LocalMetadata localMetadataF = f();
            if (localMetadataF != null) {
                mediaPasswordHash = localMetadataF.getMediaPasswordHash();
                str = mediaPasswordHash;
            } else {
                str = null;
            }
        }
        fw5 fw5VarA = Packer.a(q63Var4, workingDir, listE, str, null, new rt3(dxVar, this) { // from class: ow
            public final /* synthetic */ dx b;

            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                long jLongValue = ((Long) obj).longValue();
                ((Long) obj2).getClass();
                ((Long) obj3).getClass();
                this.a.invoke(Long.valueOf(this.b.b() + jLongValue));
                return be8.a;
            }
        }, 16);
        dxVar.d(ex.UNPACK);
        iwVar.invoke(Long.valueOf(dxVar.b()));
        if (!fw5VarA.a) {
            ew5 ew5Var = fw5VarA.d;
            int i3 = ew5Var == null ? -1 : ww.b[ew5Var.ordinal()];
            if (i3 == -1) {
                a(iu.MEDIA, q63Var, null);
            } else if (i3 == 1 || i3 == 2) {
                uwVar.d(iu.MEDIA);
            } else {
                if (i3 != 3) {
                    q.j();
                    return;
                }
                a(iu.MEDIA, q63Var, null);
            }
            c(arrayList);
            return;
        }
        ArrayList arrayListB = workingDir.B();
        if (arrayListB == null || arrayListB.isEmpty()) {
            vr6.e$default(vr6Var, "AppRestoreTask", "No files unpacked!", null, 4, null);
            c(arrayList);
            return;
        }
        if (dxVar.c) {
            vr6.i$default(vr6Var, "AppRestoreTask", "Decompressing Media", null, 4, null);
            long jC = th5.c(arrayListB);
            q63 workingDir2 = appsWorkingDir.getWorkingDir(jiVar.getPackageName(), jC);
            arrayList.add(workingDir2);
            oj7 oj7VarB2 = pj7.b(workingDir2, jC);
            if (oj7VarB2 != null) {
                String str3 = oj7VarB2.a;
                if (oj7VarB2.b) {
                    uwVar.a(str3);
                } else {
                    uwVar.b(iu.MEDIA, str3);
                }
                for (q63 q63Var5 : arrayList) {
                    q63Var5.getClass();
                    cy0.e(q63Var5);
                }
                return;
            }
            final long jC2 = dxVar.c(ex.DECOMPRESS);
            dxVar2 = dxVar;
            iwVar2 = iwVar;
            arrayListB = th5.b(arrayListB, workingDir2, new rt3(jC2, iwVar2, dxVar2, this) { // from class: pw
                public final /* synthetic */ long a;
                public final /* synthetic */ iw b;
                public final /* synthetic */ dx c;

                @Override // defpackage.rt3
                public final Object a(Object obj, Object obj2, Object obj3) {
                    long jLongValue = ((Long) obj).longValue();
                    long jLongValue2 = ((Long) obj2).longValue();
                    ((Long) obj3).getClass();
                    this.b.invoke(Long.valueOf(this.c.b() + tu0.w((jLongValue / jLongValue2) * this.a)));
                    return be8.a;
                }
            });
        } else {
            dxVar2 = dxVar;
            iwVar2 = iwVar;
        }
        dxVar2.d(ex.DECOMPRESS);
        iwVar2.invoke(Long.valueOf(dxVar2.b()));
        if (arrayListB.isEmpty()) {
            vr6.e$default(vr6Var, "AppRestoreTask", "No tar files found!", null, 4, null);
            c(arrayList);
            return;
        }
        Iterator it = arrayListB.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((q63) next).p().equals(jiVar.getPackageName() + ".tar"));
        q63 q63Var6 = (q63) next;
        if (q63Var6 == null) {
            vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "No tar file found!", null, 4, null);
            c(arrayList);
            return;
        }
        vr6 vr6Var2 = vr6.INSTANCE;
        vr6.i$default(vr6Var2, "AppRestoreTask", "Preparing for extraction", null, 4, null);
        q63 q63VarT2 = new q63(jiVar.getMediaDir(), 1).t();
        q63VarT2.getClass();
        oj7 oj7VarB3 = pj7.b(q63VarT2, q63Var6.A());
        if (oj7VarB3 != null) {
            String str4 = oj7VarB3.a;
            if (oj7VarB3.b) {
                uwVar.a(str4);
            } else {
                uwVar.b(iu.MEDIA, str4);
            }
            for (q63 q63Var7 : arrayList) {
                q63Var7.getClass();
                cy0.e(q63Var7);
            }
            return;
        }
        ex exVar = ex.UNTAR;
        this.g.d(q63Var6, q63VarT2.v(), ip6.ANY, new qw(dxVar2.c(exVar), iwVar2, dxVar2, this));
        dxVar2.d(exVar);
        iwVar2.invoke(Long.valueOf(dxVar2.b()));
        vr6.i$default(vr6Var2, "AppRestoreTask", "Restored Media", null, 4, null);
        o(i);
        for (q63 q63Var8 : arrayList) {
            q63Var8.getClass();
            cy0.e(q63Var8);
        }
    }

    public final void o(int i) throws FileNotFoundException {
        if (b67.c()) {
            jr7 jr7Var = new jr7(this.h.getMediaDir());
            if (jr7Var.b("[ -e @@ ]")) {
                try {
                    g00 g00Var = g00.a;
                    SwiftApp.Companion companion = SwiftApp.d;
                    File[] externalMediaDirs = SwiftApp.Companion.c().getExternalMediaDirs();
                    externalMediaDirs.getClass();
                    File file = externalMediaDirs.length == 0 ? null : externalMediaDirs[0];
                    String strK = g00.k(file != null ? new q63(file, 1) : null);
                    String path = jr7Var.getPath();
                    path.getClass();
                    g00.E(i, strK, path);
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "restoreMedia", e, null, 8, null);
                    this.u.c(eq3.k("Media cannot be restored (", io4.b(e), ")"));
                }
            }
        }
    }

    public final void p() {
        int i;
        AppSpecialDataPayload appSpecialDataPayload = (AppSpecialDataPayload) this.m.getValue();
        if ((appSpecialDataPayload != null ? appSpecialDataPayload.getNotificationPolicyXml() : null) != null) {
            String packageName = this.h.getPackageName();
            String notificationPolicyXml = appSpecialDataPayload.getNotificationPolicyXml();
            Integer numX = uq7.X(this.d);
            if (numX != null) {
                i = numX.intValue();
            } else {
                g00 g00Var = g00.a;
                i = g00.i();
            }
            packageName.getClass();
            if (!mp6.g || notificationPolicyXml == null || nq7.j0(notificationPolicyXml)) {
                return;
            }
            if (!ap5.a(packageName)) {
                vr6.w$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Skipping notification settings restore for unsafe package name: ".concat(packageName), null, 4, null);
                return;
            }
            File fileB = ap5.b("restore");
            try {
                try {
                    Charset charset = f51.a;
                    charset.getClass();
                    FileOutputStream fileOutputStream = new FileOutputStream(fileB);
                    try {
                        nc3.X(fileOutputStream, notificationPolicyXml, charset);
                        fileOutputStream.close();
                        List listA = bv.a(NotificationPolicyProxy.class.getName(), "swiftbackup_notification_policy_proxy", fl1.A0("restore", String.valueOf(i), packageName, fileB.getAbsolutePath()), null);
                        if (listA == null || !listA.isEmpty()) {
                            Iterator it = listA.iterator();
                            while (it.hasNext()) {
                                if (pe4.d((String) it.next(), "SB_NOTIFICATION_POLICY:OK")) {
                                    vr6.i$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Restored notification settings", null, 4, null);
                                    fileB.delete();
                                }
                            }
                        }
                        vr6.w$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Notification settings restore failed: " + el1.Y0(listA, null, null, null, null, 63), null, 4, null);
                        fileB.delete();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(fileOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Exception e) {
                    vr6.w$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Notification settings restore failed: " + e.getMessage(), null, 4, null);
                    fileB.delete();
                }
            } catch (Throwable th3) {
                fileB.delete();
                throw th3;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:0x027f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:201:0x0448  */
    /* JADX WARN: Code duplicated, block: B:234:0x0503  */
    /* JADX WARN: Code duplicated, block: B:55:0x0106  */
    public final void q(LocalMetadata localMetadata) {
        gv7 gv7Var;
        String ntfAccessComponent;
        String accessibilityComponent;
        String strK;
        String permissionStatesCsv;
        List listI;
        String permissionIdsCsv;
        String[] strArr;
        int[] iArr;
        Set setZ1;
        Set setZ2;
        gv7 gv7Var2;
        ru ruVar;
        String strL;
        List listI2;
        List list;
        String str;
        Object next;
        mp6 mp6Var = mp6.a;
        if (mp6.f()) {
            jz jzVar = this.a;
            yu yuVar = jzVar.d;
            boolean z = jzVar.e;
            boolean restoresAnyPermissions = yuVar.getRestoresAnyPermissions();
            gv7 gv7Var3 = this.m;
            int i = 0;
            CloudMetadata cloudMetadata = this.j;
            boolean z2 = this.i;
            if (restoresAnyPermissions) {
                AppSpecialDataPayload appSpecialDataPayload = (AppSpecialDataPayload) gv7Var3.getValue();
                if (appSpecialDataPayload == null || (permissionStatesCsv = appSpecialDataPayload.getPermissionStatesCsv()) == null) {
                    if (z2) {
                        if (cloudMetadata != null) {
                            permissionStatesCsv = cloudMetadata.getPermissionStatesCsv();
                        } else {
                            permissionStatesCsv = null;
                        }
                    } else if (localMetadata != null) {
                        permissionStatesCsv = localMetadata.getPermissionStatesCsv();
                    } else {
                        permissionStatesCsv = null;
                    }
                }
                gv7 gv7Var4 = av.a;
                if (permissionStatesCsv == null || permissionStatesCsv.length() == 0 || nq7.j0(permissionStatesCsv)) {
                    listI = null;
                } else {
                    try {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        Iterator it = nq7.x0(permissionStatesCsv, new String[]{","}, 6).iterator();
                        while (it.hasNext()) {
                            List listX0 = nq7.x0((String) it.next(), new String[]{":"}, 2);
                            if (listX0.size() != 2) {
                                listX0 = null;
                            }
                            if (listX0 != null) {
                                String str2 = (String) listX0.get(i);
                                String str3 = (String) listX0.get(1);
                                Integer numX = uq7.X(str2);
                                if (numX != null && (str = (String) ((Map) av.b.getValue()).get(numX)) != null) {
                                    uu.Companion.getClass();
                                    str3.getClass();
                                    Iterator it2 = ((z3) uu.getEntries()).iterator();
                                    do {
                                        w3 w3Var = (w3) it2;
                                        if (!w3Var.hasNext()) {
                                            next = null;
                                            break;
                                        }
                                        next = w3Var.next();
                                    } while (!pe4.d(((uu) next).getToken(), str3));
                                    uu uuVar = (uu) next;
                                    if (uuVar != null) {
                                        linkedHashMap.put(str, new su(str, uuVar));
                                    }
                                }
                            }
                            i = 0;
                        }
                        Collection collectionValues = linkedHashMap.values();
                        collectionValues.getClass();
                        listI = av.i(collectionValues);
                        if (listI.isEmpty()) {
                            listI = null;
                        }
                    } catch (Exception unused) {
                    }
                }
                ck ckVar = this.f;
                ji jiVar = this.h;
                if (listI == null || listI.isEmpty()) {
                    if (z2) {
                        if (cloudMetadata != null) {
                            permissionIdsCsv = cloudMetadata.getPermissionIdsCsv();
                        } else {
                            permissionIdsCsv = null;
                        }
                    } else if (localMetadata != null) {
                        permissionIdsCsv = localMetadata.getPermissionIdsCsv();
                    } else {
                        permissionIdsCsv = null;
                    }
                    gv7 gv7Var5 = av.a;
                    String packageName = jiVar.getPackageName();
                    ru ruVar2 = ru.Granted;
                    packageName.getClass();
                    ruVar2.getClass();
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    g00 g00Var = g00.a;
                    PackageInfo packageInfoQ = g00.q(4096, packageName);
                    if (packageInfoQ == null || (strArr = packageInfoQ.requestedPermissions) == null || strArr.length == 0) {
                        strArr = null;
                    }
                    if (packageInfoQ == null || (iArr = packageInfoQ.requestedPermissionsFlags) == null || iArr.length == 0) {
                        iArr = null;
                    }
                    if (strArr != null && iArr != null) {
                        int length = strArr.length;
                        int i2 = 0;
                        while (i2 < length) {
                            ji jiVar2 = jiVar;
                            String str4 = strArr[i2];
                            str4.getClass();
                            String str5 = packageName;
                            if (((Map) av.b.getValue()).containsValue(str4)) {
                                boolean z3 = (iArr[i2] & 2) != 0;
                                gv7Var2 = gv7Var3;
                                int i3 = zu.a[ruVar2.ordinal()];
                                ruVar = ruVar2;
                                if (i3 != 1) {
                                    if (i3 != 2) {
                                        if (i3 != 3) {
                                            q.j();
                                            return;
                                        }
                                    } else if (z3) {
                                        z3 = false;
                                    }
                                    z3 = true;
                                }
                                if (z3) {
                                    linkedHashSet.add(str4);
                                }
                            } else {
                                gv7Var2 = gv7Var3;
                                ruVar = ruVar2;
                            }
                            i2++;
                            jiVar = jiVar2;
                            ruVar2 = ruVar;
                            packageName = str5;
                            gv7Var3 = gv7Var2;
                        }
                    }
                    ji jiVar3 = jiVar;
                    String str6 = packageName;
                    gv7Var = gv7Var3;
                    mp6 mp6Var2 = mp6.a;
                    if (mp6.f()) {
                        linkedHashSet.addAll(av.a(str6, null, null, null, null, null, l73.o(str6), false));
                    }
                    gv7 gv7Var6 = av.a;
                    if (permissionIdsCsv == null || permissionIdsCsv.length() == 0 || nq7.j0(permissionIdsCsv)) {
                        setZ1 = null;
                    } else {
                        try {
                            List listX1 = nq7.x0(permissionIdsCsv, new String[]{","}, 6);
                            ArrayList arrayList = new ArrayList(hl1.G0(listX1, 10));
                            Iterator it3 = listX1.iterator();
                            while (it3.hasNext()) {
                                arrayList.add(Integer.valueOf(Integer.parseInt((String) it3.next())));
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it4 = arrayList.iterator();
                            while (it4.hasNext()) {
                                String str7 = (String) ((Map) av.b.getValue()).get(Integer.valueOf(((Number) it4.next()).intValue()));
                                if (str7 != null) {
                                    arrayList2.add(str7);
                                }
                            }
                            Log.d("AppPermissionsHelper", "permissionsFromIdCsv: " + arrayList2.size() + " permissions converted from csv");
                            setZ1 = el1.z1(arrayList2);
                        } catch (Exception unused2) {
                            setZ1 = null;
                        }
                    }
                    if (setZ1 != null) {
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj : setZ1) {
                            if (!linkedHashSet.contains((String) obj)) {
                                arrayList3.add(obj);
                            }
                        }
                        setZ2 = el1.z1(arrayList3);
                    } else {
                        setZ2 = null;
                    }
                    if (setZ2 != null && !setZ2.isEmpty()) {
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Restoring permissions", null, 4, null);
                        gv7 gv7Var7 = av.a;
                        av.e(jiVar3.getPackageName(), setZ2, z, (g55) ckVar.invoke());
                    }
                } else {
                    vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Restoring permission choices", null, 4, null);
                    gv7 gv7Var8 = av.a;
                    String packageName2 = jiVar.getPackageName();
                    boolean restoresDeniedRuntimePermissionStates = jzVar.d.getRestoresDeniedRuntimePermissionStates();
                    g55 g55Var = (g55) ckVar.invoke();
                    packageName2.getClass();
                    List listI3 = av.i(listI);
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj2 : listI3) {
                        if (((su) obj2).b == uu.Granted) {
                            arrayList4.add(obj2);
                        }
                    }
                    ArrayList arrayList5 = new ArrayList(hl1.G0(arrayList4, 10));
                    Iterator it5 = arrayList4.iterator();
                    while (it5.hasNext()) {
                        arrayList5.add(((su) it5.next()).a);
                    }
                    LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                    el1.t1(arrayList5, linkedHashSet2);
                    av.e(packageName2, linkedHashSet2, z, g55Var);
                    if (restoresDeniedRuntimePermissionStates) {
                        ArrayList<su> arrayList6 = new ArrayList();
                        for (Object obj3 : listI3) {
                            su suVar = (su) obj3;
                            if (suVar.b != uu.Granted) {
                                if (((Map) av.b.getValue()).containsValue(suVar.a)) {
                                    arrayList6.add(obj3);
                                }
                            }
                        }
                        ArrayList arrayList7 = new ArrayList();
                        for (su suVar2 : arrayList6) {
                            g00 g00Var2 = g00.a;
                            int i4 = g00.i();
                            String str8 = suVar2.a;
                            uu uuVar2 = suVar2.b;
                            int i5 = zu.b[uuVar2.ordinal()];
                            if (i5 != 1) {
                                if (i5 == 2) {
                                    boolean z4 = g42.a;
                                    str8.getClass();
                                    strL = String.format((String) g42.l.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(i4), packageName2, str8}, 3));
                                } else {
                                    if (i5 != 3) {
                                        q.j();
                                        return;
                                    }
                                    list = ov2.a;
                                }
                                el1.K0(list, arrayList7);
                            } else {
                                boolean z5 = g42.a;
                                strL = g42.l(i4, packageName2, str8);
                            }
                            if (b67.e()) {
                                boolean z6 = g42.a;
                                listI2 = fl1.A0(g42.f(i4, packageName2, str8), g42.k(i4, packageName2, str8), strL);
                            } else {
                                boolean z7 = g42.a;
                                listI2 = nc8.I(g42.k(i4, packageName2, str8));
                            }
                            vr6.i$default(vr6.INSTANCE, "AppPermissionsHelper", dj7.l("Permission restored: ", nq7.A0(str8, ".", str8), " = ", b67.e() ? av.j(uuVar2) : av.j(uu.DeniedUserSet)), null, 4, null);
                            list = listI2;
                            el1.K0(list, arrayList7);
                        }
                        av.h(arrayList7);
                    }
                    gv7Var = gv7Var3;
                }
            } else {
                gv7Var = gv7Var3;
            }
            if (z) {
                AppSpecialDataPayload appSpecialDataPayload2 = (AppSpecialDataPayload) gv7Var.getValue();
                if (appSpecialDataPayload2 == null || (ntfAccessComponent = appSpecialDataPayload2.getNtfAccessComponent()) == null) {
                    if (z2) {
                        if (cloudMetadata != null) {
                            ntfAccessComponent = cloudMetadata.getNtfAccessComponent();
                        } else {
                            ntfAccessComponent = null;
                        }
                    } else if (localMetadata != null) {
                        ntfAccessComponent = localMetadata.getNtfAccessComponent();
                    } else {
                        ntfAccessComponent = null;
                    }
                }
                if (ntfAccessComponent != null) {
                    if (ntfAccessComponent.length() <= 0) {
                        ntfAccessComponent = null;
                    }
                    if (ntfAccessComponent != null) {
                        boolean z8 = g42.a;
                        if (b67.a()) {
                            strK = String.format((String) g42.D.getValue(), Arrays.copyOf(new Object[]{ntfAccessComponent}, 1));
                        } else {
                            mp6 mp6Var3 = mp6.a;
                            gv7 gv7Var9 = g42.B;
                            String str9 = (String) el1.U0(mp6Var3.h(new String[]{String.format((String) gv7Var9.getValue(), Arrays.copyOf(new Object[]{"get"}, 1))}, ip6.SHIZUKU));
                            if (str9 == null || !nq7.Z(str9, ntfAccessComponent, false)) {
                                if (str9 != null && str9.length() != 0) {
                                    ntfAccessComponent = dj7.k(str9, ":", ntfAccessComponent);
                                }
                                strK = dj7.k(String.format((String) gv7Var9.getValue(), Arrays.copyOf(new Object[]{"put"}, 1)), TokenAuthenticationScheme.SCHEME_DELIMITER, ntfAccessComponent);
                            }
                            vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Special permission restored: Notification access = Granted", null, 4, null);
                        }
                        mp6.a.h(new String[]{strK}, ip6.SHIZUKU);
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Special permission restored: Notification access = Granted", null, 4, null);
                    }
                }
                AppSpecialDataPayload appSpecialDataPayload3 = (AppSpecialDataPayload) gv7Var.getValue();
                if (appSpecialDataPayload3 == null || (accessibilityComponent = appSpecialDataPayload3.getAccessibilityComponent()) == null) {
                    if (z2) {
                        if (cloudMetadata != null) {
                            accessibilityComponent = cloudMetadata.getAccessibilityComponent();
                        } else {
                            accessibilityComponent = null;
                        }
                    } else if (localMetadata != null) {
                        accessibilityComponent = localMetadata.getAccessibilityComponent();
                    } else {
                        accessibilityComponent = null;
                    }
                }
                if (accessibilityComponent != null) {
                    String strK2 = accessibilityComponent.length() > 0 ? accessibilityComponent : null;
                    if (strK2 != null) {
                        boolean z9 = g42.a;
                        mp6 mp6Var4 = mp6.a;
                        gv7 gv7Var10 = g42.C;
                        String[] strArr2 = {String.format((String) gv7Var10.getValue(), Arrays.copyOf(new Object[]{"get"}, 1))};
                        ip6 ip6Var = ip6.SHIZUKU;
                        String str10 = (String) el1.U0(mp6Var4.h(strArr2, ip6Var));
                        if (str10 == null || !nq7.Z(str10, strK2, false)) {
                            if (str10 != null && str10.length() != 0) {
                                strK2 = dj7.k(str10, ":", strK2);
                            }
                            mp6Var4.h(new String[]{dj7.k(String.format((String) gv7Var10.getValue(), Arrays.copyOf(new Object[]{"put"}, 1)), TokenAuthenticationScheme.SCHEME_DELIMITER, strK2)}, ip6Var);
                        }
                        vr6.i$default(vr6.INSTANCE, "AppRestoreTask", "Special permission restored: Accessibility service = Granted", null, 4, null);
                    }
                }
            }
        }
    }

    public final vw r(ax axVar, String str, String str2, ex exVar, String str3, char[] cArr, lw lwVar) {
        i40 i40Var = axVar.b;
        boolean z = i40Var != null && i40Var.c;
        q63 q63Var = axVar.a;
        q63 q63Var2 = new q63(str2, 2);
        iu iuVar = iu.DATA;
        if (!b(q63Var, str, q63Var2, iuVar)) {
            return new vw();
        }
        List listV = v(z, iuVar, cArr, true);
        return listV == null ? new vw() : t(axVar.a, new q63(str2, 2), str, iuVar, f27.RootFidelity, z, listV, "App Data restore password validation failed", "App Data restore failed", true, new dw(axVar, exVar, lwVar, this, str3));
    }

    public final boolean s(q63 q63Var, i40 i40Var, iu iuVar, q63 q63Var2, long j, mt3 mt3Var) {
        List listV;
        String str = (String) el1.l1(i40Var.b);
        uw uwVar = this.u;
        if (str == null || nq7.j0(str)) {
            uwVar.a(iuVar.toDisplayString(true) + " archive expected exactly one entry, found " + i40Var.b.size());
            return false;
        }
        ji jiVar = this.h;
        if (str.equals(jiVar.getPackageName())) {
            if (!b(q63Var, str, q63Var2, iuVar) || (listV = v(i40Var.c, iuVar, null, false)) == null) {
                return false;
            }
            boolean z = t(q63Var, q63Var2, str, iuVar, f27.Basic, i40Var.c, listV, eq3.j(iuVar.toDisplayString(true), " password validation failed"), eq3.j(iuVar.toDisplayString(true), " restore failed"), false, new iw(q63Var, j, mt3Var, this)).a;
            if (z) {
                mt3Var.invoke(Long.valueOf(j));
            }
            return z;
        }
        uwVar.a(iuVar.toDisplayString(true) + " archive entry mismatch: expected " + jiVar.getPackageName() + ", found " + str);
        return false;
    }

    public final vw t(q63 q63Var, q63 q63Var2, String str, iu iuVar, f27 f27Var, boolean z, List list, String str2, String str3, boolean z2, mt3 mt3Var) {
        uw uwVar;
        iu iuVar2;
        boolean z3;
        uw uwVar2;
        Iterator it = list.iterator();
        boolean z4 = false;
        while (true) {
            boolean zHasNext = it.hasNext();
            uw uwVar3 = this.u;
            if (!zHasNext) {
                if (z4) {
                    uwVar3.d(iuVar);
                }
                return new vw();
            }
            char[] cArr = (char[]) it.next();
            try {
                try {
                    try {
                        try {
                            HashSet hashSet = mz6.a;
                            try {
                                iuVar2 = iuVar;
                                uwVar = uwVar3;
                                z3 = true;
                                try {
                                    try {
                                        try {
                                            g(mz6.f(new jd0(q63Var, q63Var2, str, iuVar2, f27Var, cArr, null, iz6.Auto, new kf(this, 5), mz6.g(mt3Var), 64)), iuVar2, str);
                                            char[] cArrCopyOf = null;
                                            if (cArr != null) {
                                                char[] cArr2 = z2 ? cArr : null;
                                                if (cArr2 != null) {
                                                    cArrCopyOf = Arrays.copyOf(cArr2, cArr2.length);
                                                }
                                            }
                                            vw vwVar = new vw(true, cArrCopyOf);
                                            if (cArr != null) {
                                                Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                            }
                                            return vwVar;
                                        } catch (sz6 e) {
                                            e = e;
                                            uwVar2 = uwVar;
                                            if (!z) {
                                                String message = e.getMessage();
                                                if (message == null) {
                                                    message = str2;
                                                }
                                                uwVar2.a(message);
                                                vw vwVar2 = new vw();
                                                if (cArr != null) {
                                                    Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                                }
                                                return vwVar2;
                                            }
                                            if (cArr != null) {
                                                Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                            }
                                            z4 = z3;
                                        }
                                    } catch (sz6 e2) {
                                        e = e2;
                                    }
                                } catch (pz6 e3) {
                                    e = e3;
                                    if (!w()) {
                                        a(iuVar2, q63Var, e.getMessage());
                                    }
                                    vw vwVar3 = new vw();
                                    if (cArr != null) {
                                        Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                    }
                                    return vwVar3;
                                } catch (Throwable th) {
                                    th = th;
                                    if (!w()) {
                                        String message2 = th.getMessage();
                                        if (message2 == null) {
                                            message2 = str3;
                                        }
                                        uwVar.a(message2);
                                    }
                                    vw vwVar4 = new vw();
                                    if (cArr != null) {
                                        Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                    }
                                    return vwVar4;
                                }
                            } catch (sz6 e4) {
                                e = e4;
                                uwVar = uwVar3;
                                z3 = true;
                            }
                        } catch (Throwable th2) {
                            if (cArr != null) {
                                Arrays.fill(cArr, 0, cArr.length, (char) 0);
                            }
                            throw th2;
                        }
                    } catch (sz6 e5) {
                        e = e5;
                        z3 = true;
                        uwVar2 = uwVar3;
                    }
                } catch (zz6 unused) {
                    vw vwVar5 = new vw();
                    if (cArr != null) {
                        Arrays.fill(cArr, 0, cArr.length, (char) 0);
                    }
                    return vwVar5;
                }
            } catch (pz6 e6) {
                e = e6;
                iuVar2 = iuVar;
            } catch (Throwable th3) {
                th = th3;
                uwVar = uwVar3;
            }
            z4 = z3;
        }
    }

    public final void u(final fx fxVar, final ql qlVar) throws Throwable {
        final kh6 kh6Var;
        boolean z;
        ArrayList<q63> arrayList;
        List listB;
        Object bn6Var;
        Object bn6Var2;
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "AppRestoreTask", "Starting Shared Libs restore", null, 4, null);
        i40 i40Var = fxVar.b;
        long j = fxVar.d;
        long j2 = fxVar.e;
        if (i40Var == null) {
            vr6.e$default(vr6Var, "AppRestoreTask", xs1.i(fxVar.a, "Couldn't get archive type for "), null, 4, null);
            return;
        }
        int i = i40Var.a;
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(j));
        vr6.i$default(vr6Var, "AppRestoreTask", u48.m("Restoring Shared Libs (", strC, ", v", i, ")"), null, 4, null);
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.restoring_shared_libraries);
        this.b.i.k(strG + " (" + strC + ")");
        ArrayList<q63> arrayList2 = new ArrayList();
        AppsWorkingDir appsWorkingDir = AppsWorkingDir.INSTANCE;
        ji jiVar = this.h;
        q63 workingDir = appsWorkingDir.getWorkingDir(jiVar.getPackageName(), j);
        arrayList2.add(workingDir);
        vr6.i$default(vr6Var, "AppRestoreTask", "Unpacking Shared Libs", null, 4, null);
        oj7 oj7VarB = pj7.b(workingDir, j);
        if (oj7VarB != null) {
            vr6.w$default(vr6Var, "AppRestoreTask", eq3.k("Low space issue: ", oj7VarB.a, ", ignoring..."), null, 4, null);
            for (q63 q63Var : arrayList2) {
                q63Var.getClass();
                cy0.e(q63Var);
            }
            return;
        }
        final kh6 kh6Var2 = new kh6();
        if (i == 6) {
            long j3 = kh6Var2.a;
            q63 q63Var2 = fxVar.a;
            try {
                HashSet hashSet = mz6.a;
                bn6Var = mz6.n(q63Var2);
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            Throwable thA = en6.a(bn6Var);
            if (thA == null) {
                List list = (List) bn6Var;
                if (list.isEmpty()) {
                    vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "Shared Libs backup archive has no entries", null, 4, null);
                } else {
                    Iterator it = list.iterator();
                    long j4 = 0;
                    while (true) {
                        long j5 = 1;
                        if (!it.hasNext()) {
                            break;
                        }
                        long j6 = ((xy6) it.next()).e;
                        if (j6 >= 1) {
                            j5 = j6;
                        }
                        j4 += j5;
                    }
                    long j7 = j4 < 1 ? 1L : j4;
                    Iterator it2 = list.iterator();
                    long j8 = 0;
                    while (true) {
                        if (it2.hasNext()) {
                            xy6 xy6Var = (xy6) it2.next();
                            if (!w()) {
                                q63 q63Var3 = q63Var2;
                                Iterator it3 = it2;
                                q63 q63Var4 = new q63(2, workingDir, uq7.S(xy6Var.a, '/', '_'));
                                if (q63Var4.j() || q63.E(q63Var4)) {
                                    try {
                                        HashSet hashSet2 = mz6.a;
                                        bn6Var2 = mz6.f(new jd0(q63Var3, q63Var4, xy6Var.a, iu.APP, f27.Basic, null, null, iz6.Auto, new bh(this, 5), null, 576));
                                    } catch (Throwable th2) {
                                        bn6Var2 = new bn6(th2);
                                    }
                                    Throwable thA2 = en6.a(bn6Var2);
                                    if (thA2 == null) {
                                        long j9 = xy6Var.e;
                                        if (j9 < 1) {
                                            j9 = 1;
                                        }
                                        long j10 = j8 + j9;
                                        j8 = j10;
                                        qlVar.invoke(Long.valueOf(tu0.w((j10 / j7) * j2) + j3));
                                        it2 = it3;
                                        q63Var2 = q63Var3;
                                    } else {
                                        vr6.e$default(vr6.INSTANCE, "AppRestoreTask", eq3.k("Failed to extract Shared Libs entry '", xy6Var.a, "'"), thA2, null, 8, null);
                                    }
                                } else {
                                    vr6.e$default(vr6.INSTANCE, "AppRestoreTask", xs1.i(q63Var4, "Failed to create Shared Libs entry dir: "), null, 4, null);
                                }
                            }
                        } else {
                            long j11 = kh6Var2.a + j2;
                            kh6Var2.a = j11;
                            qlVar.invoke(Long.valueOf(j11));
                            listB = h77.C0(new q98(new me3(new pa3(new File(workingDir.v())), true, new hw(0)), new ai(1)));
                            kh6Var = kh6Var2;
                            z = false;
                            arrayList = arrayList2;
                        }
                    }
                }
            } else {
                vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "Failed to list shared libs entries from backup archive", thA, null, 8, null);
            }
            for (q63 q63Var5 : arrayList2) {
                q63Var5.getClass();
                cy0.e(q63Var5);
            }
            return;
        }
        fw5 fw5VarA = Packer.a(fxVar.a, workingDir, null, null, null, new rt3(qlVar, kh6Var2, this) { // from class: gw
            public final /* synthetic */ ql b;
            public final /* synthetic */ kh6 c;

            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                long jLongValue = ((Long) obj).longValue();
                long jLongValue2 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                this.b.invoke(Long.valueOf(this.c.a + tu0.w((jLongValue / jLongValue2) * this.a.e)));
                return be8.a;
            }
        }, 28);
        long j12 = kh6Var2.a + j2;
        kh6Var2.a = j12;
        qlVar.invoke(Long.valueOf(j12));
        if (!fw5VarA.a) {
            vr6.w$default(vr6Var, "AppRestoreTask", "Extracting Shared Libs failed!", null, 4, null);
            for (q63 q63Var6 : arrayList2) {
                q63Var6.getClass();
                cy0.e(q63Var6);
            }
            return;
        }
        ArrayList arrayListB = workingDir.B();
        if (arrayListB == null || arrayListB.isEmpty()) {
            vr6.e$default(vr6Var, "AppRestoreTask", "No files unpacked!", null, 4, null);
            for (q63 q63Var7 : arrayList2) {
                q63Var7.getClass();
                cy0.e(q63Var7);
            }
            return;
        }
        if (fxVar.c) {
            kh6Var = kh6Var2;
            z = false;
            vr6.i$default(vr6Var, "AppRestoreTask", "Decompressing Shared Libs", null, 4, null);
            long jC = th5.c(arrayListB);
            q63 workingDir2 = appsWorkingDir.getWorkingDir(jiVar.getPackageName(), jC);
            arrayList = arrayList2;
            arrayList.add(workingDir2);
            oj7 oj7VarB2 = pj7.b(workingDir2, jC);
            if (oj7VarB2 != null) {
                vr6.w$default(vr6Var, "AppRestoreTask", eq3.k("Low space issue: ", oj7VarB2.a, ", ignoring..."), null, 4, null);
                for (q63 q63Var8 : arrayList) {
                    q63Var8.getClass();
                    cy0.e(q63Var8);
                }
                return;
            }
            listB = th5.b(arrayListB, workingDir2, new rt3(qlVar, kh6Var, this) { // from class: jw
                public final /* synthetic */ ql b;
                public final /* synthetic */ kh6 c;

                @Override // defpackage.rt3
                public final Object a(Object obj, Object obj2, Object obj3) {
                    long jLongValue = ((Long) obj).longValue();
                    long jLongValue2 = ((Long) obj2).longValue();
                    ((Long) obj3).getClass();
                    this.b.invoke(Long.valueOf(this.c.a + tu0.w((jLongValue / jLongValue2) * this.a.f)));
                    return be8.a;
                }
            });
        } else {
            kh6Var = kh6Var2;
            z = false;
            arrayList = arrayList2;
            listB = arrayListB;
        }
        long j13 = kh6Var.a + fxVar.f;
        kh6Var.a = j13;
        qlVar.invoke(Long.valueOf(j13));
        if (listB.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, "AppRestoreTask", "No decompressed Shared Libs APKs!", null, 4, null);
            for (q63 q63Var9 : arrayList) {
                q63Var9.getClass();
                cy0.e(q63Var9);
            }
            return;
        }
        ArrayList<q63> arrayList3 = new ArrayList();
        for (Object obj : listB) {
            if (((q63) obj).m().equals("apk")) {
                arrayList3.add(obj);
            }
        }
        ArrayList<q63> arrayList4 = new ArrayList(hl1.G0(arrayList3, 10));
        for (q63 q63Var10 : arrayList3) {
            mp6 mp6Var = mp6.a;
            if (mp6.g()) {
                String str = ry5.u;
                q63 q63Var11 = new q63(qy5.f(z, null).e, q63Var10.p(), 3);
                q63Var10.d(q63Var11, null);
                q63Var10 = q63Var11;
            }
            arrayList4.add(q63Var10);
        }
        if (arrayList4.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, "AppRestoreTask", xs1.h(listB.size(), "No Shared Libs APKs found from ", " decompressed files!"), null, 4, null);
            for (q63 q63Var12 : arrayList) {
                q63Var12.getClass();
                cy0.e(q63Var12);
            }
            return;
        }
        for (q63 q63Var13 : arrayList4) {
            vr6 vr6Var2 = vr6.INSTANCE;
            vr6.i$default(vr6Var2, "AppRestoreTask", "Installing Shared Lib: ".concat(q63Var13.q()), null, 4, null);
            List listH = mp6.a.h(new String[]{xs1.i(q63Var13, "pm install -t ")}, ip6.SHIZUKU);
            if (jd4.v(listH)) {
                vr6.w$default(vr6Var2, "AppRestoreTask", "Error installing shared lib: ".concat(el1.Y0(listH, null, null, null, null, 63)), null, 4, null);
            } else {
                vr6.i$default(vr6Var2, "AppRestoreTask", "Successfully installed Shared Lib: ".concat(el1.Y0(listH, null, null, null, null, 63)), null, 4, null);
            }
        }
        long j14 = kh6Var.a + fxVar.g;
        kh6Var.a = j14;
        qlVar.invoke(Long.valueOf(j14));
        for (q63 q63Var14 : arrayList) {
            q63Var14.getClass();
            cy0.e(q63Var14);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.List] */
    public final List v(boolean z, iu iuVar, char[] cArr, boolean z2) {
        ?? arrayList;
        if (!z) {
            return nc8.I(null);
        }
        if (cArr != null) {
            arrayList = nc8.I(Arrays.copyOf(cArr, cArr.length));
        } else if (z2) {
            List<char[]> listE = e();
            ArrayList arrayList2 = new ArrayList(hl1.G0(listE, 10));
            for (char[] cArr2 : listE) {
                arrayList2.add(Arrays.copyOf(cArr2, cArr2.length));
            }
            arrayList = arrayList2;
        } else {
            List<char[]> listE2 = e();
            ArrayList arrayList3 = new ArrayList(hl1.G0(listE2, 10));
            for (char[] cArr3 : listE2) {
                arrayList3.add(Arrays.copyOf(cArr3, cArr3.length));
            }
            arrayList = new ArrayList();
            for (Object obj : arrayList3) {
                if (((char[]) obj).length != 0) {
                    arrayList.add(obj);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        this.u.d(iuVar);
        return null;
    }

    public final boolean w() {
        uw uwVar = this.u;
        if (uwVar.f()) {
            return true;
        }
        String str = uwVar.a;
        return (str == null || str.length() == 0) ? false : true;
    }
}
