package defpackage;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Looper;
import android.provider.Telephony;
import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ff5 extends pw6 {
    public final String m;
    public final int n;
    public final List o;
    public final q63 p;
    public final ContentResolver q;
    public final LinkedHashMap r;

    public ff5(ArrayList arrayList, q63 q63Var) {
        super(new xy7(nc8.I(q05.CLOUD), true), new df5());
        this.m = "MessagesTask";
        SwiftApp.Companion companion = SwiftApp.d;
        ContentResolver contentResolver = SwiftApp.Companion.c().getContentResolver();
        contentResolver.getClass();
        this.q = contentResolver;
        this.r = new LinkedHashMap();
        this.o = arrayList;
        Iterator it = arrayList.iterator();
        int messageCount = 0;
        while (it.hasNext()) {
            messageCount += ((qv1) it.next()).getMessageCount();
        }
        this.n = messageCount;
        this.p = q63Var;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:145:0x032b  */
    /* JADX WARN: Code duplicated, block: B:148:0x034f A[LOOP:5: B:146:0x0349->B:148:0x034f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:152:0x036c  */
    /* JADX WARN: Code duplicated, block: B:165:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:170:0x03e0 A[Catch: ClassCastException -> 0x03ec, TryCatch #6 {ClassCastException -> 0x03ec, blocks: (B:168:0x03dc, B:170:0x03e0, B:171:0x03e6, B:172:0x03eb), top: B:359:0x03dc }] */
    /* JADX WARN: Code duplicated, block: B:171:0x03e6 A[Catch: ClassCastException -> 0x03ec, TryCatch #6 {ClassCastException -> 0x03ec, blocks: (B:168:0x03dc, B:170:0x03e0, B:171:0x03e6, B:172:0x03eb), top: B:359:0x03dc }] */
    /* JADX WARN: Code duplicated, block: B:175:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:176:0x0402  */
    /* JADX WARN: Code duplicated, block: B:179:0x0411 A[LOOP:7: B:177:0x040b->B:179:0x0411, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:183:0x042e  */
    /* JADX WARN: Code duplicated, block: B:192:0x0450  */
    /* JADX WARN: Code duplicated, block: B:194:0x045f  */
    /* JADX WARN: Code duplicated, block: B:198:0x0471 A[Catch: Exception -> 0x057a, TryCatch #18 {Exception -> 0x057a, blocks: (B:196:0x0467, B:198:0x0471, B:204:0x047c, B:206:0x0482, B:209:0x0490, B:211:0x0496, B:213:0x04a0, B:215:0x04a6, B:217:0x04b0, B:219:0x04b6, B:220:0x04ba, B:222:0x04c0), top: B:376:0x0467 }] */
    /* JADX WARN: Code duplicated, block: B:200:0x0477  */
    /* JADX WARN: Code duplicated, block: B:201:0x0478  */
    /* JADX WARN: Code duplicated, block: B:217:0x04b0 A[Catch: Exception -> 0x057a, TryCatch #18 {Exception -> 0x057a, blocks: (B:196:0x0467, B:198:0x0471, B:204:0x047c, B:206:0x0482, B:209:0x0490, B:211:0x0496, B:213:0x04a0, B:215:0x04a6, B:217:0x04b0, B:219:0x04b6, B:220:0x04ba, B:222:0x04c0), top: B:376:0x0467 }] */
    /* JADX WARN: Code duplicated, block: B:219:0x04b6 A[Catch: Exception -> 0x057a, TryCatch #18 {Exception -> 0x057a, blocks: (B:196:0x0467, B:198:0x0471, B:204:0x047c, B:206:0x0482, B:209:0x0490, B:211:0x0496, B:213:0x04a0, B:215:0x04a6, B:217:0x04b0, B:219:0x04b6, B:220:0x04ba, B:222:0x04c0), top: B:376:0x0467 }] */
    /* JADX WARN: Code duplicated, block: B:222:0x04c0 A[Catch: Exception -> 0x057a, TRY_LEAVE, TryCatch #18 {Exception -> 0x057a, blocks: (B:196:0x0467, B:198:0x0471, B:204:0x047c, B:206:0x0482, B:209:0x0490, B:211:0x0496, B:213:0x04a0, B:215:0x04a6, B:217:0x04b0, B:219:0x04b6, B:220:0x04ba, B:222:0x04c0), top: B:376:0x0467 }] */
    /* JADX WARN: Code duplicated, block: B:229:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:232:0x04ef A[Catch: Exception -> 0x050f, TRY_ENTER, TryCatch #12 {Exception -> 0x050f, blocks: (B:224:0x04d3, B:232:0x04ef, B:234:0x04f5, B:237:0x04fc), top: B:368:0x04d3 }] */
    /* JADX WARN: Code duplicated, block: B:234:0x04f5 A[Catch: Exception -> 0x050f, TryCatch #12 {Exception -> 0x050f, blocks: (B:224:0x04d3, B:232:0x04ef, B:234:0x04f5, B:237:0x04fc), top: B:368:0x04d3 }] */
    /* JADX WARN: Code duplicated, block: B:247:0x051f A[Catch: Exception -> 0x050a, TryCatch #14 {Exception -> 0x050a, blocks: (B:245:0x0513, B:247:0x051f, B:249:0x0525, B:254:0x052f, B:256:0x053d, B:262:0x054a, B:264:0x0550, B:268:0x055d, B:280:0x056e, B:281:0x0571, B:240:0x0504, B:285:0x057e, B:287:0x0588, B:288:0x058c, B:290:0x0592, B:293:0x05b0, B:294:0x05b7, B:295:0x05b8, B:296:0x05c3, B:267:0x055a, B:276:0x0568, B:277:0x056b, B:266:0x0557, B:274:0x0566, B:278:0x056c), top: B:371:0x0513, inners: #0, #7 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x052b  */
    /* JADX WARN: Code duplicated, block: B:253:0x052e  */
    /* JADX WARN: Code duplicated, block: B:254:0x052f A[Catch: Exception -> 0x050a, TryCatch #14 {Exception -> 0x050a, blocks: (B:245:0x0513, B:247:0x051f, B:249:0x0525, B:254:0x052f, B:256:0x053d, B:262:0x054a, B:264:0x0550, B:268:0x055d, B:280:0x056e, B:281:0x0571, B:240:0x0504, B:285:0x057e, B:287:0x0588, B:288:0x058c, B:290:0x0592, B:293:0x05b0, B:294:0x05b7, B:295:0x05b8, B:296:0x05c3, B:267:0x055a, B:276:0x0568, B:277:0x056b, B:266:0x0557, B:274:0x0566, B:278:0x056c), top: B:371:0x0513, inners: #0, #7 }] */
    /* JADX WARN: Code duplicated, block: B:259:0x0546  */
    /* JADX WARN: Code duplicated, block: B:287:0x0588 A[Catch: Exception -> 0x050a, TryCatch #14 {Exception -> 0x050a, blocks: (B:245:0x0513, B:247:0x051f, B:249:0x0525, B:254:0x052f, B:256:0x053d, B:262:0x054a, B:264:0x0550, B:268:0x055d, B:280:0x056e, B:281:0x0571, B:240:0x0504, B:285:0x057e, B:287:0x0588, B:288:0x058c, B:290:0x0592, B:293:0x05b0, B:294:0x05b7, B:295:0x05b8, B:296:0x05c3, B:267:0x055a, B:276:0x0568, B:277:0x056b, B:266:0x0557, B:274:0x0566, B:278:0x056c), top: B:371:0x0513, inners: #0, #7 }] */
    /* JADX WARN: Code duplicated, block: B:290:0x0592 A[Catch: Exception -> 0x050a, TryCatch #14 {Exception -> 0x050a, blocks: (B:245:0x0513, B:247:0x051f, B:249:0x0525, B:254:0x052f, B:256:0x053d, B:262:0x054a, B:264:0x0550, B:268:0x055d, B:280:0x056e, B:281:0x0571, B:240:0x0504, B:285:0x057e, B:287:0x0588, B:288:0x058c, B:290:0x0592, B:293:0x05b0, B:294:0x05b7, B:295:0x05b8, B:296:0x05c3, B:267:0x055a, B:276:0x0568, B:277:0x056b, B:266:0x0557, B:274:0x0566, B:278:0x056c), top: B:371:0x0513, inners: #0, #7 }] */
    /* JADX WARN: Code duplicated, block: B:292:0x05af A[LOOP:11: B:288:0x058c->B:292:0x05af, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:300:0x05dd A[Catch: ClassCastException -> 0x05e9, TryCatch #20 {ClassCastException -> 0x05e9, blocks: (B:298:0x05d9, B:300:0x05dd, B:301:0x05e3, B:302:0x05e8), top: B:380:0x05d9 }] */
    /* JADX WARN: Code duplicated, block: B:301:0x05e3 A[Catch: ClassCastException -> 0x05e9, TryCatch #20 {ClassCastException -> 0x05e9, blocks: (B:298:0x05d9, B:300:0x05dd, B:301:0x05e3, B:302:0x05e8), top: B:380:0x05d9 }] */
    /* JADX WARN: Code duplicated, block: B:306:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:307:0x060b  */
    /* JADX WARN: Code duplicated, block: B:311:0x0638 A[LOOP:9: B:190:0x044a->B:311:0x0638, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:312:0x063e A[EDGE_INSN: B:312:0x063e->B:313:0x0640 BREAK  A[LOOP:9: B:190:0x044a->B:311:0x0638], PHI: r2
      0x063e: PHI (r2v1 cz7) = (r2v0 cz7), (r2v4 cz7), (r2v0 cz7) binds: [B:144:0x0329, B:415:0x063e, B:175:0x03ef] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:315:0x0658  */
    /* JADX WARN: Code duplicated, block: B:321:0x066e  */
    /* JADX WARN: Code duplicated, block: B:324:0x0683  */
    /* JADX WARN: Code duplicated, block: B:326:0x068b  */
    /* JADX WARN: Code duplicated, block: B:330:0x0694 A[Catch: ClassCastException -> 0x069e, TRY_ENTER, TryCatch #24 {ClassCastException -> 0x069e, blocks: (B:330:0x0694, B:331:0x0699, B:332:0x069c), top: B:387:0x0692 }] */
    /* JADX WARN: Code duplicated, block: B:331:0x0699 A[Catch: ClassCastException -> 0x069e, TryCatch #24 {ClassCastException -> 0x069e, blocks: (B:330:0x0694, B:331:0x0699, B:332:0x069c), top: B:387:0x0692 }] */
    /* JADX WARN: Code duplicated, block: B:341:0x06b8  */
    /* JADX WARN: Code duplicated, block: B:363:0x037c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x04de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:376:0x0467 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:412:0x05b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:414:0x0640 A[EDGE_INSN: B:414:0x0640->B:313:0x0640 BREAK  A[LOOP:9: B:190:0x044a->B:311:0x0638], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:415:0x063e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:416:0x05b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:418:0x0572 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0180  */
    /* JADX WARN: Instruction removed from duplicated block: B:165:0x03b4, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:306:0x05ee, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:307:0x060b, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override // defpackage.pw6
    public final void b() {
        String str;
        List list;
        boolean z;
        cz7 cz7Var;
        String str2;
        String string;
        SharedPreferences sharedPreferences;
        xy7 xy7Var;
        ze5 ze5Var;
        xf5 xf5Var;
        ArrayList arrayList;
        Iterator it;
        Iterator it2;
        int i;
        boolean zHasNext;
        ContentResolver contentResolver;
        boolean z2;
        ArrayList arrayList2;
        Iterator it3;
        Iterator it4;
        wg5 wg5Var;
        wg5.a aVar;
        Exception exc;
        vr6 vr6Var;
        boolean z3;
        String str3;
        SharedPreferences sharedPreferences2;
        ContentValues contentValuesC;
        Set<String> setM79getRecipients;
        Long lP;
        Uri uriInsert;
        String lastPathSegment;
        String string2;
        Long lY;
        long jLongValue;
        long j;
        List<xg5> partItems;
        List<vg5> addressItems;
        String name;
        Uri uriInsert2;
        String cachedFileName;
        q63 q63VarJ;
        OutputStream outputStreamOpenOutputStream;
        InputStream inputStreamW;
        String cachedFileName2;
        String properFileName;
        List<xg5> partItems2;
        SharedPreferences sharedPreferences3;
        ki7 ki7Var;
        ki7.a aVar2;
        Uri uriInsert3;
        ContentValues contentValuesC2;
        String address;
        Long lP2;
        dz7 dz7Var;
        String message;
        Throwable th;
        boolean z4;
        String str4;
        xp1 xp1Var;
        Boolean boolValueOf;
        cz7 cz7Var2 = this.a;
        boolean z5 = cz7Var2 instanceof xy7;
        List list2 = this.o;
        ex6 ex6Var = this.i;
        if (z5) {
            SwiftApp.Companion companion = SwiftApp.d;
            ex6Var.i(SwiftApp.Companion.c().getString(R.string.backing_up));
            xy7 xy7Var2 = (xy7) ((zy7) cz7Var2);
            if (xy7Var2.f) {
                q63 q63Var = this.p;
                q63Var.getClass();
                q(q63Var);
                str = "prefs";
                list = list2;
            } else {
                List list3 = xy7Var2.e;
                dz7 dz7Var2 = this.b;
                q63 q63VarI = ud5.i();
                if (!q63VarI.j()) {
                    q63.E(q63VarI);
                }
                q63 q63VarJ2 = ud5.i().J("conversations");
                q63VarJ2.h();
                gv7 gv7Var = w14.a;
                list2.getClass();
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    d6.o();
                    return;
                }
                try {
                    str = "prefs";
                    try {
                        try {
                            q63 q63Var2 = new q63(SwiftApp.Companion.c().getCacheDir(), "temp", 2);
                            q63Var2.h();
                            nn4 nn4Var = new nn4(new OutputStreamWriter(q63Var2.F(true), Charset.defaultCharset()));
                            try {
                                xq3 xq3Var = xq3.e;
                                list = list2;
                                try {
                                    dz7Var = dz7Var2;
                                    try {
                                        nn4Var.v(new xq3(xq3Var.a, "  ", xq3Var.c));
                                        nn4Var.g();
                                        nn4Var.n("items");
                                        nn4Var.b();
                                        for (Object obj : list) {
                                            gv7 gv7Var2 = w14.a;
                                            w14.c().l(obj, qv1.class, nn4Var);
                                        }
                                        nn4Var.j();
                                        nn4Var.m();
                                        nn4Var.flush();
                                        nn4Var.close();
                                        gv7 gv7Var3 = y32.a;
                                        if (y32.d && y32.f(q63Var2.w(true), q63VarJ2.F(true))) {
                                            q63 q63VarG = ud5.g();
                                            try {
                                                SharedPreferences sharedPreferences4 = cz4.f;
                                                if (sharedPreferences4 == null) {
                                                    pe4.F(str);
                                                    throw null;
                                                }
                                                z4 = sharedPreferences4.getBoolean("messages_backup_mms", true);
                                                if (z4) {
                                                    if (q63VarG.j()) {
                                                        ArrayList<q63> arrayListB = q63VarG.B();
                                                        if (arrayListB != null && !arrayListB.isEmpty()) {
                                                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                                                            Iterator it5 = list.iterator();
                                                            while (it5.hasNext()) {
                                                                List<wg5> mmsItemList = ((qv1) it5.next()).getMmsItemList();
                                                                ArrayList arrayList3 = new ArrayList(hl1.G0(mmsItemList, 10));
                                                                for (wg5 wg5Var2 : mmsItemList) {
                                                                    q63 file = wg5Var2.getFile();
                                                                    if (file != null) {
                                                                        String strP = file.p();
                                                                        if (strP.length() <= 0) {
                                                                            strP = null;
                                                                        }
                                                                        if (strP != null) {
                                                                            linkedHashSet.add(strP);
                                                                        }
                                                                    }
                                                                    String properFileName2 = wg5Var2.getProperFileName();
                                                                    if (properFileName2 == null) {
                                                                        boolValueOf = null;
                                                                    } else {
                                                                        if (properFileName2.length() <= 0) {
                                                                            properFileName2 = null;
                                                                        }
                                                                        if (properFileName2 != null) {
                                                                            boolValueOf = Boolean.valueOf(linkedHashSet.add(properFileName2));
                                                                        } else {
                                                                            boolValueOf = null;
                                                                        }
                                                                    }
                                                                    arrayList3.add(boolValueOf);
                                                                }
                                                            }
                                                            for (q63 q63Var3 : arrayListB) {
                                                                if (!linkedHashSet.contains(q63Var3.p())) {
                                                                    q63Var3.h();
                                                                }
                                                            }
                                                            ArrayList arrayListB2 = q63VarG.B();
                                                            if (arrayListB2 != null && !arrayListB2.isEmpty()) {
                                                                vr6.i$default(vr6.INSTANCE, this.m, xs1.h(arrayListB2.size(), "startBackup: Found ", " MMS data files of selected conversations"), null, 4, null);
                                                            }
                                                        }
                                                    } else {
                                                        vr6.i$default(vr6.INSTANCE, this.m, "startBackup: MMS cached data directory not found", null, 4, null);
                                                    }
                                                }
                                                if (ji8.t(list3)) {
                                                    String str5 = ry5.u;
                                                    str4 = qy5.f(false, null).k;
                                                } else {
                                                    String str6 = ry5.u;
                                                    str4 = qy5.f(false, null).j;
                                                }
                                                gv7 gv7Var4 = ud5.a;
                                                int size = list.size();
                                                Locale locale = Locale.ENGLISH;
                                                Long lValueOf = Long.valueOf(System.currentTimeMillis());
                                                Integer numValueOf = Integer.valueOf(size);
                                                Integer numValueOf2 = Integer.valueOf(this.n);
                                                tb1 tb1Var = tb1.a;
                                                q63 q63Var4 = new q63(str4, String.format(locale, "%s.%d.%d.%s.%s.%s", Arrays.copyOf(new Object[]{"v3", lValueOf, numValueOf, numValueOf2, qb1.e(), "msg"}, 6)), 2);
                                                io4.g(q63Var4);
                                                char[] cArrH = yx5.h(yx5.j());
                                                try {
                                                    try {
                                                        HashSet hashSet = mz6.a;
                                                        int i2 = -1;
                                                        try {
                                                            SharedPreferences sharedPreferences5 = cz4.f;
                                                            if (sharedPreferences5 == null) {
                                                                pe4.F(str);
                                                                throw null;
                                                            }
                                                            i2 = sharedPreferences5.getInt("compression_level_msgs", -1);
                                                            xp1.Companion.getClass();
                                                            xp1[] xp1VarArrA = wp1.a();
                                                            int i3 = 0;
                                                            while (true) {
                                                                if (i3 >= 2) {
                                                                    xp1Var = null;
                                                                    break;
                                                                }
                                                                xp1Var = xp1VarArrA[i3];
                                                                if (xp1Var.getLevel() == i2) {
                                                                    break;
                                                                } else {
                                                                    i3++;
                                                                }
                                                            }
                                                            if (xp1Var == null) {
                                                                xp1.Companion.getClass();
                                                                xp1Var = xp1.DEFAULT;
                                                            }
                                                            mz6.e(q63VarI, q63Var4, cArrH, xp1Var, "swiftbackup.messages.v3");
                                                            Arrays.fill(cArrH, 0, cArrH.length, (char) 0);
                                                            ud5.c(false);
                                                            if (!i() && list3.contains(q05.CLOUD)) {
                                                                q(q63Var4);
                                                            }
                                                        } catch (ClassCastException unused) {
                                                        }
                                                    } catch (Exception e) {
                                                        vr6.e$default(vr6.INSTANCE, this.m, "startBackup: Failed to create SBA messages backup", e, null, 8, null);
                                                        Arrays.fill(cArrH, 0, cArrH.length, (char) 0);
                                                        ((df5) dz7Var).a(q63Var4.v());
                                                    }
                                                } catch (Throwable th2) {
                                                    Arrays.fill(cArrH, 0, cArrH.length, (char) 0);
                                                    throw th2;
                                                }
                                            } catch (ClassCastException unused2) {
                                                z4 = true;
                                            }
                                        } else {
                                            vr6.e$default(vr6.INSTANCE, this.m, "startBackup: Failed to save conversations!", null, 4, null);
                                            ((df5) dz7Var).a(q63VarJ2.v());
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        th = th;
                                        try {
                                            throw th;
                                        } catch (Throwable th4) {
                                            rs9.c(nn4Var, th);
                                            throw th4;
                                        }
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    dz7Var = dz7Var2;
                                    th = th;
                                    throw th;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                list = list2;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            list = list2;
                            dz7Var = dz7Var2;
                            vr6 vr6Var2 = vr6.INSTANCE;
                            message = e.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            vr6.e$default(vr6Var2, "GsonHelper", message, null, 4, null);
                        }
                    } catch (Exception e3) {
                        e = e3;
                        vr6 vr6Var3 = vr6.INSTANCE;
                        message = e.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        vr6.e$default(vr6Var3, "GsonHelper", message, null, 4, null);
                        vr6.e$default(vr6.INSTANCE, this.m, "startBackup: Failed to save conversations!", null, 4, null);
                        ((df5) dz7Var).a(q63VarJ2.v());
                        z = cz7Var2 instanceof yy7;
                        if (z) {
                            cz7Var = cz7Var2;
                            break;
                        }
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        ex6Var.i(SwiftApp.Companion.c().getString(R.string.restoring));
                        xf5Var = new xf5();
                        arrayList = new ArrayList();
                        it = list.iterator();
                        while (it.hasNext()) {
                            el1.K0(((qv1) it.next()).getSmsItemList(), arrayList);
                        }
                        it2 = arrayList.iterator();
                        i = 0;
                        do {
                            zHasNext = it2.hasNext();
                            contentResolver = this.q;
                            if (zHasNext) {
                                break;
                            }
                            ki7Var = (ki7) it2.next();
                            aVar2 = ki7.Companion;
                            if (!aVar2.isSmsOnDevice(ki7Var)) {
                                try {
                                    contentValuesC2 = xf5Var.c(ki7Var);
                                    address = ki7Var.getAddress();
                                    if (address != null) {
                                        contentValuesC2.put("thread_id", lP2);
                                        uriInsert3 = contentResolver.insert(aVar2.getCONTENT_URI(), contentValuesC2);
                                        if (uriInsert3 == null) {
                                            vr6.i$default(vr6.INSTANCE, this.m, "restoreSms: Restoring failed for smsItem: " + ki7Var, null, 4, null);
                                        }
                                    }
                                } catch (Exception e4) {
                                    vr6.e$default(vr6.INSTANCE, this.m, "restoreSms", e4, null, 8, null);
                                    uriInsert3 = null;
                                }
                            }
                            i++;
                            n(i);
                        } while (!i());
                        try {
                            sharedPreferences3 = cz4.f;
                            if (sharedPreferences3 != null) {
                                pe4.F(str);
                                throw null;
                            }
                            z2 = sharedPreferences3.getBoolean("messages_backup_mms", true);
                            if (z2) {
                                arrayList2 = new ArrayList();
                                it3 = list.iterator();
                                while (it3.hasNext()) {
                                    el1.K0(((qv1) it3.next()).getMmsItemList(), arrayList2);
                                }
                                ArrayList arrayList4 = new ArrayList();
                                while (r0.hasNext()) {
                                    partItems2 = ((wg5) obj).getPartItems();
                                    if (partItems2 == null) {
                                    }
                                }
                                it4 = arrayList4.iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        wg5Var = (wg5) it4.next();
                                        aVar = wg5.Companion;
                                        if (aVar.isMmsOnDevice(wg5Var)) {
                                            cz7Var = cz7Var2;
                                            it4 = it4;
                                        } else {
                                            try {
                                                contentValuesC = xf5Var.c(wg5Var);
                                                setM79getRecipients = wg5Var.m79getRecipients();
                                                if (setM79getRecipients == null) {
                                                    cz7Var = cz7Var2;
                                                    it4 = it4;
                                                } else {
                                                    if (!setM79getRecipients.isEmpty()) {
                                                        setM79getRecipients = null;
                                                    }
                                                    if (setM79getRecipients == null) {
                                                        contentValuesC.put("thread_id", lP);
                                                        uriInsert = contentResolver.insert(aVar.getCONTENT_URI(), contentValuesC);
                                                        if (uriInsert == null) {
                                                            jLongValue = lY.longValue();
                                                            j = 0;
                                                            if (jLongValue >= 0) {
                                                                throw new RuntimeException("Failed inserting MMS item");
                                                            }
                                                            partItems = wg5Var.getPartItems();
                                                            if (partItems != null) {
                                                                for (xg5 xg5Var : partItems) {
                                                                    long j2 = j;
                                                                    xg5Var.setMid(lY);
                                                                    ContentValues contentValuesC3 = xf5Var.c(xg5Var);
                                                                    cz7Var = cz7Var2;
                                                                    try {
                                                                        contentValuesC3.remove("_data");
                                                                        name = xg5Var.getName();
                                                                        if (name == null) {
                                                                            try {
                                                                                if (name.length() == 0) {
                                                                                    cachedFileName2 = xg5Var.getCachedFileName();
                                                                                    if (cachedFileName2 == null) {
                                                                                    }
                                                                                }
                                                                            } catch (Exception e5) {
                                                                                exc = e5;
                                                                                it4 = it4;
                                                                            }
                                                                        } else {
                                                                            cachedFileName2 = xg5Var.getCachedFileName();
                                                                            if (cachedFileName2 == null) {
                                                                            }
                                                                        }
                                                                        try {
                                                                            uriInsert2 = contentResolver.insert(xg5.Companion.getContentUriForMms(lY), contentValuesC3);
                                                                            if (uriInsert2 == null) {
                                                                                cachedFileName = xg5Var.getCachedFileName();
                                                                                if (cachedFileName != null) {
                                                                                    cachedFileName = null;
                                                                                } else {
                                                                                    cachedFileName = null;
                                                                                }
                                                                                if (cachedFileName == null) {
                                                                                    q63VarJ = ud5.g().J(cachedFileName);
                                                                                    if (q63VarJ.j()) {
                                                                                        q63VarJ = null;
                                                                                    } else {
                                                                                        q63VarJ = null;
                                                                                    }
                                                                                    if (q63VarJ != null) {
                                                                                        inputStreamW = q63VarJ.w(true);
                                                                                        try {
                                                                                            cy0.j(inputStreamW, outputStreamOpenOutputStream, 262144);
                                                                                            try {
                                                                                                outputStreamOpenOutputStream.close();
                                                                                                inputStreamW.close();
                                                                                            } catch (Throwable th7) {
                                                                                                try {
                                                                                                    throw th7;
                                                                                                } catch (Throwable th8) {
                                                                                                    rs9.c(inputStreamW, th7);
                                                                                                    throw th8;
                                                                                                }
                                                                                            }
                                                                                        } catch (Throwable th9) {
                                                                                            try {
                                                                                                throw th9;
                                                                                            } catch (Throwable th10) {
                                                                                                rs9.c(outputStreamOpenOutputStream, th9);
                                                                                                throw th10;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            cz7Var2 = cz7Var;
                                                                            j = j2;
                                                                            it4 = it4;
                                                                        } catch (Exception e6) {
                                                                            e = e6;
                                                                        }
                                                                    } catch (Exception e7) {
                                                                        e = e7;
                                                                        it4 = it4;
                                                                    }
                                                                }
                                                            }
                                                            cz7Var = cz7Var2;
                                                            it4 = it4;
                                                            addressItems = wg5Var.getAddressItems();
                                                            if (addressItems != null) {
                                                                for (vg5 vg5Var : addressItems) {
                                                                    vg5Var.setMsgId(lY);
                                                                    vg5Var.setContactId(null);
                                                                    if (contentResolver.insert(vg5.Companion.getContentUriForMms(jLongValue), xf5Var.c(vg5Var)) != null) {
                                                                        throw new RuntimeException("Failed inserting address items");
                                                                    }
                                                                }
                                                            }
                                                            it4 = it4;
                                                            exc = e;
                                                            vr6Var = vr6.INSTANCE;
                                                            vr6.e$default(vr6Var, this.m, "restoreMms", exc, null, 8, null);
                                                            try {
                                                                sharedPreferences2 = cz4.f;
                                                                if (sharedPreferences2 != null) {
                                                                    pe4.F(str);
                                                                    throw null;
                                                                }
                                                                z3 = sharedPreferences2.getBoolean("extra_logging", false);
                                                            } catch (ClassCastException unused3) {
                                                                z3 = false;
                                                            }
                                                            str3 = this.m;
                                                            if (z3) {
                                                                vr6.e$default(vr6Var, str3, "mmsItem=" + wg5Var, null, 4, null);
                                                            } else {
                                                                vr6.e$default(vr6Var, str3, "mmsItem.id=" + wg5Var.getId(), null, 4, null);
                                                            }
                                                        }
                                                    }
                                                    cz7Var = cz7Var2;
                                                    it4 = it4;
                                                }
                                            } catch (Exception e8) {
                                                e = e8;
                                                cz7Var = cz7Var2;
                                            }
                                        }
                                        i++;
                                        n(i);
                                        if (i()) {
                                            break;
                                        }
                                        cz7Var2 = cz7Var;
                                        it4 = it4;
                                    }
                                }
                            } else {
                                vr6.i$default(vr6.INSTANCE, this.m, "startRestore: User has disabled MMS backup/restore", null, 4, null);
                            }
                            cz7Var = cz7Var2;
                            break;
                        } catch (ClassCastException unused4) {
                            z2 = true;
                        }
                        Log.i(this.m, "Cleaning cloud cache on device");
                        boolean z6 = q63.d;
                        String str7 = ry5.u;
                        cy0.g(qy5.f(false, null).k);
                        if (z5) {
                            xy7Var = (xy7) cz7Var;
                            if (xy7Var.e.contains(q05.CLOUD)) {
                                ze5Var = ze5.LOCAL_AND_CLOUD;
                            } else {
                                ze5Var = ze5.LOCAL_AND_CLOUD;
                            }
                            ze5Var.getClass();
                            af5 af5Var = new af5();
                            af5Var.a = ze5Var;
                            ny2.b().e(af5Var);
                        }
                        if (z) {
                            mp6 mp6Var = mp6.a;
                            if (mp6.f()) {
                                gv7 gv7Var5 = ud5.a;
                                try {
                                    sharedPreferences = cz4.f;
                                    str2 = null;
                                    try {
                                        if (sharedPreferences != null) {
                                            pe4.F(str);
                                            throw null;
                                        }
                                        string = sharedPreferences.getString("KEY_DEF_SMS_PACKAGE", null);
                                        if (string != null) {
                                            SwiftApp.Companion companion3 = SwiftApp.d;
                                            if (!string.equals(SwiftApp.Companion.c().getPackageName())) {
                                                try {
                                                    SwiftApp.Companion.c().getPackageManager().getPackageInfo(string, 0);
                                                } catch (PackageManager.NameNotFoundException unused5) {
                                                }
                                            }
                                        }
                                    } catch (ClassCastException unused6) {
                                        string = str2;
                                    }
                                } catch (ClassCastException unused7) {
                                    str2 = null;
                                }
                            }
                        }
                        jf5 jf5Var = new jf5();
                        jf5Var.a = z5;
                        ny2.b().e(jf5Var);
                    }
                } catch (Exception e9) {
                    e = e9;
                    str = "prefs";
                }
            }
        } else {
            str = "prefs";
            list = list2;
        }
        z = cz7Var2 instanceof yy7;
        if (z) {
            cz7Var = cz7Var2;
            break;
        }
        SwiftApp.Companion companion4 = SwiftApp.d;
        ex6Var.i(SwiftApp.Companion.c().getString(R.string.restoring));
        xf5Var = new xf5();
        arrayList = new ArrayList();
        it = list.iterator();
        while (it.hasNext()) {
            el1.K0(((qv1) it.next()).getSmsItemList(), arrayList);
        }
        it2 = arrayList.iterator();
        i = 0;
        do {
            zHasNext = it2.hasNext();
            contentResolver = this.q;
            if (zHasNext) {
                break;
            }
            ki7Var = (ki7) it2.next();
            aVar2 = ki7.Companion;
            if (!aVar2.isSmsOnDevice(ki7Var)) {
                contentValuesC2 = xf5Var.c(ki7Var);
                address = ki7Var.getAddress();
                if (address != null && (lP2 = p(sz8.Y(address))) != null) {
                    contentValuesC2.put("thread_id", lP2);
                    uriInsert3 = contentResolver.insert(aVar2.getCONTENT_URI(), contentValuesC2);
                    if (uriInsert3 == null) {
                        vr6.i$default(vr6.INSTANCE, this.m, "restoreSms: Restoring failed for smsItem: " + ki7Var, null, 4, null);
                    }
                }
            }
            i++;
            n(i);
        } while (!i());
        sharedPreferences3 = cz4.f;
        if (sharedPreferences3 != null) {
            pe4.F(str);
            throw null;
        }
        z2 = sharedPreferences3.getBoolean("messages_backup_mms", true);
        if (z2) {
            vr6.i$default(vr6.INSTANCE, this.m, "startRestore: User has disabled MMS backup/restore", null, 4, null);
        } else {
            arrayList2 = new ArrayList();
            it3 = list.iterator();
            while (it3.hasNext()) {
                el1.K0(((qv1) it3.next()).getMmsItemList(), arrayList2);
            }
            ArrayList arrayList5 = new ArrayList();
            for (Object obj2 : arrayList2) {
                partItems2 = ((wg5) obj2).getPartItems();
                if (partItems2 == null && !partItems2.isEmpty()) {
                    arrayList5.add(obj2);
                }
            }
            it4 = arrayList5.iterator();
            while (true) {
                if (it4.hasNext()) {
                    wg5Var = (wg5) it4.next();
                    aVar = wg5.Companion;
                    if (aVar.isMmsOnDevice(wg5Var)) {
                        cz7Var = cz7Var2;
                        it4 = it4;
                    } else {
                        contentValuesC = xf5Var.c(wg5Var);
                        setM79getRecipients = wg5Var.m79getRecipients();
                        if (setM79getRecipients == null) {
                            cz7Var = cz7Var2;
                            it4 = it4;
                        } else {
                            if (!setM79getRecipients.isEmpty()) {
                                setM79getRecipients = null;
                            }
                            if (setM79getRecipients == null || (lP = p(setM79getRecipients)) == null) {
                                cz7Var = cz7Var2;
                                it4 = it4;
                            } else {
                                contentValuesC.put("thread_id", lP);
                                uriInsert = contentResolver.insert(aVar.getCONTENT_URI(), contentValuesC);
                                if (uriInsert == null || (lastPathSegment = uriInsert.getLastPathSegment()) == null || (string2 = nq7.H0(lastPathSegment).toString()) == null || (lY = uq7.Y(string2)) == null) {
                                    cz7Var = cz7Var2;
                                    it4 = it4;
                                } else {
                                    jLongValue = lY.longValue();
                                    j = 0;
                                    if (jLongValue >= 0) {
                                        throw new RuntimeException("Failed inserting MMS item");
                                    }
                                    partItems = wg5Var.getPartItems();
                                    if (partItems != null) {
                                        while (r15.hasNext()) {
                                            long j3 = j;
                                            xg5Var.setMid(lY);
                                            ContentValues contentValuesC4 = xf5Var.c(xg5Var);
                                            cz7Var = cz7Var2;
                                            contentValuesC4.remove("_data");
                                            name = xg5Var.getName();
                                            if (name == null) {
                                                cachedFileName2 = xg5Var.getCachedFileName();
                                                if (cachedFileName2 == null) {
                                                }
                                            } else if (name.length() == 0) {
                                                cachedFileName2 = xg5Var.getCachedFileName();
                                                if (cachedFileName2 == null && cachedFileName2.length() != 0 && (properFileName = wg5Var.getProperFileName()) != null) {
                                                    contentValuesC4.put("name", properFileName);
                                                }
                                            }
                                            uriInsert2 = contentResolver.insert(xg5.Companion.getContentUriForMms(lY), contentValuesC4);
                                            if (uriInsert2 == null) {
                                                cachedFileName = xg5Var.getCachedFileName();
                                                if (cachedFileName != null || cachedFileName.length() == 0) {
                                                    cachedFileName = null;
                                                }
                                                if (cachedFileName == null) {
                                                    q63VarJ = ud5.g().J(cachedFileName);
                                                    if (q63VarJ.j() || q63VarJ.A() <= j3) {
                                                        q63VarJ = null;
                                                    }
                                                    if (q63VarJ != null && (outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert2)) != null) {
                                                        inputStreamW = q63VarJ.w(true);
                                                        cy0.j(inputStreamW, outputStreamOpenOutputStream, 262144);
                                                        outputStreamOpenOutputStream.close();
                                                        inputStreamW.close();
                                                    }
                                                }
                                            }
                                            cz7Var2 = cz7Var;
                                            j = j3;
                                            it4 = it4;
                                        }
                                    }
                                    cz7Var = cz7Var2;
                                    it4 = it4;
                                    addressItems = wg5Var.getAddressItems();
                                    if (addressItems != null) {
                                        while (r2.hasNext()) {
                                            vg5Var.setMsgId(lY);
                                            vg5Var.setContactId(null);
                                            if (contentResolver.insert(vg5.Companion.getContentUriForMms(jLongValue), xf5Var.c(vg5Var)) != null) {
                                                throw new RuntimeException("Failed inserting address items");
                                            }
                                        }
                                    }
                                    it4 = it4;
                                    exc = e;
                                    vr6Var = vr6.INSTANCE;
                                    vr6.e$default(vr6Var, this.m, "restoreMms", exc, null, 8, null);
                                    sharedPreferences2 = cz4.f;
                                    if (sharedPreferences2 != null) {
                                        pe4.F(str);
                                        throw null;
                                    }
                                    z3 = sharedPreferences2.getBoolean("extra_logging", false);
                                    str3 = this.m;
                                    if (z3) {
                                        vr6.e$default(vr6Var, str3, "mmsItem=" + wg5Var, null, 4, null);
                                    } else {
                                        vr6.e$default(vr6Var, str3, "mmsItem.id=" + wg5Var.getId(), null, 4, null);
                                    }
                                }
                            }
                        }
                    }
                    i++;
                    n(i);
                    if (i()) {
                        break;
                        break;
                    } else {
                        cz7Var2 = cz7Var;
                        it4 = it4;
                    }
                }
            }
        }
        cz7Var = cz7Var2;
        break;
        Log.i(this.m, "Cleaning cloud cache on device");
        boolean z7 = q63.d;
        String str8 = ry5.u;
        cy0.g(qy5.f(false, null).k);
        if (z5) {
            xy7Var = (xy7) cz7Var;
            if (xy7Var.e.contains(q05.CLOUD) || xy7Var.f) {
                ze5Var = ze5.LOCAL_AND_CLOUD;
            } else {
                ze5Var = ze5.LOCAL;
            }
            ze5Var.getClass();
            af5 af5Var2 = new af5();
            af5Var2.a = ze5Var;
            ny2.b().e(af5Var2);
        }
        if (z) {
            mp6 mp6Var2 = mp6.a;
            if (mp6.f()) {
                gv7 gv7Var6 = ud5.a;
                sharedPreferences = cz4.f;
                str2 = null;
                if (sharedPreferences != null) {
                    pe4.F(str);
                    throw null;
                }
                string = sharedPreferences.getString("KEY_DEF_SMS_PACKAGE", null);
                if (string != null && string.length() != 0) {
                    SwiftApp.Companion companion5 = SwiftApp.d;
                    if (!string.equals(SwiftApp.Companion.c().getPackageName())) {
                        SwiftApp.Companion.c().getPackageManager().getPackageInfo(string, 0);
                    }
                }
            }
        }
        jf5 jf5Var2 = new jf5();
        jf5Var2.a = z5;
        ny2.b().e(jf5Var2);
    }

    @Override // defpackage.pw6
    public final String c() {
        return this.m;
    }

    @Override // defpackage.pw6
    public final int d() {
        return this.n;
    }

    @Override // defpackage.pw6
    public final int f() {
        return this.n;
    }

    @Override // defpackage.pw6
    public final String h() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.messages);
    }

    @Override // defpackage.pw6
    public final String j() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.x_messages, String.valueOf(this.n));
        string.getClass();
        return string;
    }

    public final Long p(Set set) {
        if (set.isEmpty()) {
            return null;
        }
        LinkedHashMap linkedHashMap = this.r;
        if (!linkedHashMap.containsKey(set)) {
            try {
                SwiftApp.Companion companion = SwiftApp.d;
                long orCreateThreadId = Telephony.Threads.getOrCreateThreadId(SwiftApp.Companion.c(), (Set<String>) set);
                linkedHashMap.put(set, Long.valueOf(orCreateThreadId));
                return Long.valueOf(orCreateThreadId);
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, this.m, "getOrCreateThreadId", e, null, 8, null);
            }
        }
        return (Long) linkedHashMap.get(set);
    }

    public final void q(q63 q63Var) {
        SwiftApp.Companion companion = SwiftApp.d;
        this.i.i(SwiftApp.Companion.c().getString(R.string.uploading));
        q63Var.getClass();
        rf8 rf8Var = new rf8(q63Var, 20, true, null, false);
        tb1 tb1Var = tb1.a;
        ag8 ag8VarD = qb1.c().d(rf8Var);
        this.k = ag8VarD;
        jj2 jj2Var = new jj2(3, this, rf8Var);
        ag8VarD.getClass();
        ag8VarD.g = jj2Var;
        zf8 zf8VarC = ag8VarD.c();
        ((df5) this.b).b = zf8VarC;
        if (zf8VarC.a()) {
            ud5.c(true);
            zc2 zc2VarI = re3.i();
            zc2VarI.b(new ef5(zc2VarI, this));
        }
    }

    @Override // defpackage.pw6
    public final void a() {
    }

    public ff5(List list, zy7 zy7Var) {
        super(zy7Var, new df5());
        this.m = "MessagesTask";
        SwiftApp.Companion companion = SwiftApp.d;
        ContentResolver contentResolver = SwiftApp.Companion.c().getContentResolver();
        contentResolver.getClass();
        this.q = contentResolver;
        this.r = new LinkedHashMap();
        this.o = list;
        Iterator it = list.iterator();
        int messageCount = 0;
        while (it.hasNext()) {
            messageCount += ((qv1) it.next()).getMessageCount();
        }
        this.n = messageCount;
    }
}
