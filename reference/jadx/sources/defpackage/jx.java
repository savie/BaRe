package defpackage;

import android.content.SharedPreferences;
import android.content.pm.Signature;
import android.os.Looper;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;
import org.swiftapps.swiftbackup.common.IgnoredException;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jx implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ jx(int i) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:195:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:197:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:198:0x0401  */
    /* JADX WARN: Code duplicated, block: B:205:0x0414 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:206:0x0416  */
    /* JADX WARN: Code duplicated, block: B:209:0x0425  */
    /* JADX WARN: Code duplicated, block: B:214:0x044d  */
    /* JADX WARN: Code duplicated, block: B:215:0x044f  */
    /* JADX WARN: Code duplicated, block: B:218:0x045a  */
    /* JADX WARN: Code duplicated, block: B:221:0x0479  */
    /* JADX WARN: Code duplicated, block: B:225:0x0485  */
    /* JADX WARN: Code duplicated, block: B:227:0x048b  */
    /* JADX WARN: Code duplicated, block: B:228:0x0490  */
    /* JADX WARN: Code duplicated, block: B:231:0x049c A[Catch: Exception -> 0x04a5, TRY_LEAVE, TryCatch #3 {Exception -> 0x04a5, blocks: (B:229:0x0491, B:231:0x049c), top: B:420:0x0491 }] */
    /* JADX WARN: Code duplicated, block: B:233:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:237:0x04af  */
    /* JADX WARN: Code duplicated, block: B:239:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:242:0x04be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:243:0x04c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:244:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:245:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:246:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:248:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:251:0x04dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:252:0x04de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:253:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:254:0x04e2  */
    /* JADX WARN: Code duplicated, block: B:255:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:256:0x04eb  */
    /* JADX WARN: Code duplicated, block: B:259:0x0500 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:260:0x0502 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:261:0x0504  */
    /* JADX WARN: Code duplicated, block: B:262:0x0507  */
    /* JADX WARN: Code duplicated, block: B:263:0x050c  */
    /* JADX WARN: Code duplicated, block: B:264:0x0513  */
    /* JADX WARN: Code duplicated, block: B:267:0x0520  */
    /* JADX WARN: Code duplicated, block: B:268:0x0523  */
    /* JADX WARN: Code duplicated, block: B:271:0x0529  */
    /* JADX WARN: Code duplicated, block: B:272:0x052c  */
    /* JADX WARN: Code duplicated, block: B:275:0x0532  */
    /* JADX WARN: Code duplicated, block: B:277:0x0539  */
    /* JADX WARN: Code duplicated, block: B:279:0x0542  */
    /* JADX WARN: Code duplicated, block: B:281:0x0548 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:282:0x054a  */
    /* JADX WARN: Code duplicated, block: B:285:0x0559  */
    /* JADX WARN: Code duplicated, block: B:290:0x057a  */
    /* JADX WARN: Code duplicated, block: B:291:0x057c  */
    /* JADX WARN: Code duplicated, block: B:294:0x0587  */
    /* JADX WARN: Code duplicated, block: B:297:0x05a5  */
    /* JADX WARN: Code duplicated, block: B:301:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:303:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:304:0x05b9  */
    /* JADX WARN: Code duplicated, block: B:307:0x05c5 A[Catch: Exception -> 0x05ce, TRY_LEAVE, TryCatch #1 {Exception -> 0x05ce, blocks: (B:305:0x05ba, B:307:0x05c5), top: B:417:0x05ba }] */
    /* JADX WARN: Code duplicated, block: B:309:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:313:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:315:0x05db  */
    /* JADX WARN: Code duplicated, block: B:317:0x05df  */
    /* JADX WARN: Code duplicated, block: B:318:0x05e8  */
    /* JADX WARN: Code duplicated, block: B:321:0x05f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:322:0x05f5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:324:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:325:0x05ff A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:326:0x0601  */
    /* JADX WARN: Code duplicated, block: B:327:0x0605  */
    /* JADX WARN: Code duplicated, block: B:328:0x0609  */
    /* JADX WARN: Code duplicated, block: B:331:0x0615 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:332:0x0617 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:333:0x0619  */
    /* JADX WARN: Code duplicated, block: B:334:0x061b  */
    /* JADX WARN: Code duplicated, block: B:335:0x0620 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:336:0x0622  */
    /* JADX WARN: Code duplicated, block: B:337:0x0626  */
    /* JADX WARN: Code duplicated, block: B:338:0x062a  */
    /* JADX WARN: Code duplicated, block: B:341:0x063f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:342:0x0641 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:344:0x0646  */
    /* JADX WARN: Code duplicated, block: B:345:0x064b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:346:0x064d  */
    /* JADX WARN: Code duplicated, block: B:347:0x0651  */
    /* JADX WARN: Code duplicated, block: B:349:0x0658  */
    /* JADX WARN: Code duplicated, block: B:352:0x0665  */
    /* JADX WARN: Code duplicated, block: B:353:0x0668  */
    /* JADX WARN: Code duplicated, block: B:356:0x066e  */
    /* JADX WARN: Code duplicated, block: B:357:0x0671  */
    /* JADX WARN: Code duplicated, block: B:359:0x067f  */
    /* JADX WARN: Code duplicated, block: B:362:0x0691  */
    /* JADX WARN: Code duplicated, block: B:363:0x06a4  */
    /* JADX WARN: Code duplicated, block: B:366:0x06ae  */
    /* JADX WARN: Code duplicated, block: B:372:0x06c1  */
    /* JADX WARN: Code duplicated, block: B:375:0x06cb  */
    /* JADX WARN: Code duplicated, block: B:381:0x06e0  */
    /* JADX WARN: Code duplicated, block: B:384:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:385:0x0700  */
    /* JADX WARN: Code duplicated, block: B:388:0x070a  */
    /* JADX WARN: Code duplicated, block: B:391:0x0718  */
    /* JADX WARN: Code duplicated, block: B:393:0x0747  */
    /* JADX WARN: Code duplicated, block: B:454:0x0409 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:458:0x043c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:460:0x041f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:463:0x056c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:465:0x0553 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:467:0x06bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:470:0x06da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:471:0x06d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:472:? A[LOOP:13: B:373:0x06c5->B:472:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:473:0x06fe A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12, types: [java.lang.Object, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r13v2, types: [ov2] */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Iterable, java.util.List] */
    @Override // defpackage.bt3
    public final Object invoke() {
        ArrayList arrayList;
        Object oq0Var;
        ?? arrayList2;
        Object next;
        v76 v76Var;
        Iterator it;
        Object next2;
        v76 v76Var2;
        int i;
        int i2;
        xa4 xa4Var;
        xa4 xa4Var2;
        List listP0;
        ArrayList arrayList3;
        Iterator it2;
        Object next3;
        xa4 xa4Var3;
        Iterator it3;
        Iterator it4;
        Object obj;
        Object next4;
        wb6 wb6Var;
        wb6.b purchaseStateEnum;
        Boolean boolValueOf;
        Boolean bool;
        boolean zD;
        int i3;
        int i4;
        int i5;
        int i6;
        Integer num;
        boolean z;
        boolean z2;
        int i7;
        MFirebaseUser mFirebaseUserA;
        ArrayList arrayList4;
        Iterator it5;
        Object next5;
        long jH;
        Object next6;
        long jH2;
        wb6 wb6Var2;
        wb6.b purchaseStateEnum2;
        Boolean boolValueOf2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        Integer numValueOf;
        boolean z3;
        boolean z4;
        boolean z5;
        MFirebaseUser mFirebaseUserA2;
        ArrayList arrayList5;
        Iterator it6;
        Object next7;
        long jH3;
        Object next8;
        long jH4;
        v76 v76Var3;
        String str;
        v76 v76Var4;
        boolean z6;
        boolean z7;
        int i14 = this.a;
        boolean z8 = true;
        be8 be8Var = be8.a;
        int i15 = 0;
        String strValueOf = null;
        switch (i14) {
            case 0:
                return new ai6("\\W");
            case 1:
                SwiftApp.Companion companion = SwiftApp.d;
                UserManager userManager = (UserManager) SwiftApp.Companion.c().getSystemService(UserManager.class);
                return Boolean.valueOf((userManager == null || userManager.isSystemUser()) ? false : true);
            case 2:
                dz5 dz5Var = dz5.a;
                return Boolean.valueOf(dz5.n());
            case 3:
                return new ij0();
            case 4:
                Integer numValueOf2 = Integer.valueOf(R.drawable.ic_clock);
                ex6 ex6Var = wq0.c;
                ex6Var.k(pq0.a);
                wq0 wq0Var = wq0.a;
                if (wq0.g.v()) {
                    l73 l73VarA = cf3.a(re3.b().d("activeSkus"), false);
                    if (!(l73VarA instanceof xe3)) {
                        if (l73VarA instanceof we3) {
                            vr6.e$default(vr6.INSTANCE, "BillingManager", xs1.j("getActiveSkusFromServer: ", ((we3) l73VarA).n.b), null, 4, null);
                        } else {
                            q.j();
                        }
                        return null;
                    }
                    db2 db2VarB = ((xe3) l73VarA).n.b();
                    arrayList = new ArrayList();
                    Iterator it7 = (Iterator) db2VarB.b;
                    while (it7.hasNext()) {
                        hk5 hk5Var = (hk5) it7.next();
                        ((eb2) db2VarB.c).b.d(hk5Var.a.a);
                        Object value = sb4.d(hk5Var.b).a.getValue();
                        String str2 = value instanceof String ? (String) value : null;
                        if (str2 != null) {
                            arrayList.add(str2);
                        }
                    }
                    if (arrayList.isEmpty()) {
                    }
                    if (arrayList != null || arrayList.isEmpty()) {
                        wq0.d("SKUs", "Unable to get purchase plans from Firebase server.\n\nPlease disable your ad-blocker or try using a VPN.");
                        oq0Var = new oq0("Unable to get purchase plans from Firebase server.\n\nPlease disable your ad-blocker or try using a VPN.");
                    } else {
                        ArrayList<String> arrayList6 = new ArrayList();
                        for (Object obj2 : arrayList) {
                            if (uq7.V((String) obj2, "subs:", false)) {
                                arrayList6.add(obj2);
                            }
                        }
                        ArrayList arrayList7 = new ArrayList(hl1.G0(arrayList6, 10));
                        for (String str3 : arrayList6) {
                            str3.getClass();
                            Pattern patternCompile = Pattern.compile(".*".concat(":"));
                            patternCompile.getClass();
                            String strReplaceAll = patternCompile.matcher(str3).replaceAll("");
                            strReplaceAll.getClass();
                            arrayList7.add(strReplaceAll);
                        }
                        ArrayList<String> arrayList8 = new ArrayList();
                        for (Object obj3 : arrayList) {
                            if (uq7.V((String) obj3, "inapp:", false)) {
                                arrayList8.add(obj3);
                            }
                        }
                        ArrayList arrayList9 = new ArrayList(hl1.G0(arrayList8, 10));
                        for (String str4 : arrayList8) {
                            str4.getClass();
                            Pattern patternCompile2 = Pattern.compile(".*".concat(":"));
                            patternCompile2.getClass();
                            String strReplaceAll2 = patternCompile2.matcher(str4).replaceAll("");
                            strReplaceAll2.getClass();
                            arrayList9.add(strReplaceAll2);
                        }
                        vr6.d$default(vr6.INSTANCE, "BillingManager", "skusFromServer: " + el1.g1(arrayList7, arrayList9), null, 4, null);
                        int i16 = 0;
                        while (true) {
                            if (i16 < 3) {
                                if (i16 > 0) {
                                    try {
                                        Thread.sleep(1000L);
                                        break;
                                    } catch (Exception unused) {
                                    }
                                }
                                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                                    d6.o();
                                } else if (arrayList7.isEmpty() && arrayList9.isEmpty()) {
                                    g84.h("Empty SKUs!!!");
                                } else {
                                    CountDownLatch countDownLatch = new CountDownLatch(2);
                                    arrayList2 = new ArrayList();
                                    if (arrayList7.isEmpty()) {
                                        countDownLatch.countDown();
                                    } else {
                                        wq0.b("subs", arrayList7, new iq0(arrayList2, countDownLatch));
                                    }
                                    if (arrayList9.isEmpty()) {
                                        countDownLatch.countDown();
                                    } else {
                                        wq0.b("inapp", arrayList9, new jq0(i15, arrayList2, countDownLatch));
                                    }
                                    if (!countDownLatch.await(10L, TimeUnit.SECONDS)) {
                                        vr6.e$default(vr6.INSTANCE, "BillingManager", "_queryProductDetailsFromGooglePlay: timed out waiting for Play callbacks", null, 4, null);
                                    }
                                    if (arrayList7.isEmpty()) {
                                        z6 = true;
                                    } else {
                                        if (!arrayList2.isEmpty()) {
                                            Iterator it8 = arrayList2.iterator();
                                            while (true) {
                                                if (it8.hasNext()) {
                                                    v76 v76Var5 = (v76) it8.next();
                                                    if (pe4.d(v76Var5 != null ? v76Var5.d : null, "subs")) {
                                                        z6 = true;
                                                    }
                                                }
                                            }
                                        }
                                        z6 = false;
                                    }
                                    if (arrayList9.isEmpty()) {
                                        z7 = true;
                                    } else {
                                        if (!arrayList2.isEmpty()) {
                                            Iterator it9 = arrayList2.iterator();
                                            while (true) {
                                                if (it9.hasNext()) {
                                                    v76 v76Var6 = (v76) it9.next();
                                                    if (pe4.d(v76Var6 != null ? v76Var6.d : null, "inapp")) {
                                                        z7 = true;
                                                    }
                                                }
                                            }
                                        }
                                        z7 = false;
                                    }
                                    if (!z6 || !z7) {
                                        i16++;
                                        Log.e("BillingManager", "queryProductDetailsFromGooglePlay: Incomplete results on attempt " + i16 + " — gotSubs=" + z6 + ", gotInApp=" + z7 + ". Retrying...");
                                        i15 = 0;
                                    }
                                }
                                return null;
                            }
                            arrayList2 = ov2.a;
                        }
                        if (arrayList2.isEmpty()) {
                            wq0.d("productDetailList", "Unable to get purchase plans from Google Play Store.\n\nPlease check if Google Play is installed and does not have certification issues.");
                            oq0Var = new oq0("Unable to get purchase plans from Google Play Store.\n\nPlease check if Google Play is installed and does not have certification issues.");
                        } else {
                            List listC = wq0.c();
                            Iterator it10 = arrayList2.iterator();
                            do {
                                if (it10.hasNext()) {
                                    next = it10.next();
                                    v76Var4 = (v76) next;
                                } else {
                                    next = null;
                                }
                                v76Var = (v76) next;
                                it = arrayList2.iterator();
                                do {
                                    if (it.hasNext()) {
                                        next2 = it.next();
                                        v76Var3 = (v76) next2;
                                        if (v76Var3 != null) {
                                            str = v76Var3.d;
                                        } else {
                                            str = null;
                                        }
                                    } else {
                                        next2 = null;
                                    }
                                    v76Var2 = (v76) next2;
                                    i = R.string.pending_payment;
                                    if (v76Var != null) {
                                        if (listC != null) {
                                            arrayList5 = new ArrayList();
                                            for (Object obj4 : listC) {
                                                if (pe4.d(((wb6) obj4).getSku(), v76Var.c)) {
                                                    arrayList5.add(obj4);
                                                }
                                            }
                                            i2 = R.drawable.ic_check;
                                            it6 = arrayList5.iterator();
                                            if (it6.hasNext()) {
                                                next7 = it6.next();
                                                if (it6.hasNext()) {
                                                    jH3 = io4.h(((wb6) next7).getPurchaseTime());
                                                    do {
                                                        next8 = it6.next();
                                                        jH4 = io4.h(((wb6) next8).getPurchaseTime());
                                                        if (jH3 < jH4) {
                                                            next7 = next8;
                                                            jH3 = jH4;
                                                        }
                                                    } while (it6.hasNext());
                                                }
                                            } else {
                                                next7 = null;
                                            }
                                            wb6Var2 = (wb6) next7;
                                        } else {
                                            i2 = R.drawable.ic_check;
                                            wb6Var2 = null;
                                        }
                                        if (wb6Var2 != null) {
                                            purchaseStateEnum2 = wb6Var2.getPurchaseStateEnum();
                                        } else {
                                            purchaseStateEnum2 = null;
                                        }
                                        try {
                                            d45.b.getClass();
                                            mFirebaseUserA2 = d45.a();
                                            if (mFirebaseUserA2 != null) {
                                                boolValueOf2 = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                                            } else {
                                                boolValueOf2 = null;
                                            }
                                            break;
                                        } catch (Exception unused2) {
                                        }
                                        if (pe4.d(boolValueOf2, Boolean.TRUE)) {
                                            purchaseStateEnum2 = null;
                                        }
                                        if (purchaseStateEnum2 == null) {
                                            purchaseStateEnum2 = wb6.b.UNSPECIFIED_STATE;
                                        }
                                        int[] iArr = sq0.a;
                                        i8 = iArr[purchaseStateEnum2.ordinal()];
                                        if (i8 != 1) {
                                            if (i8 != 2) {
                                                i9 = R.string.purchased;
                                            } else if (i8 == 3) {
                                                i10 = R.string.pending_payment;
                                                i11 = iArr[purchaseStateEnum2.ordinal()];
                                                if (i11 != 1) {
                                                    i12 = R.color.blu;
                                                } else if (i11 != 2) {
                                                    i12 = R.color.grn;
                                                } else if (i11 == 3) {
                                                    i12 = R.color.ambrdark;
                                                } else {
                                                    q.j();
                                                }
                                                SwiftApp.Companion companion2 = SwiftApp.d;
                                                int color = SwiftApp.Companion.c().getColor(i12);
                                                i13 = iArr[purchaseStateEnum2.ordinal()];
                                                if (i13 != 1) {
                                                    numValueOf = null;
                                                } else if (i13 != 2) {
                                                    numValueOf = Integer.valueOf(i2);
                                                } else if (i13 == 3) {
                                                    numValueOf = numValueOf2;
                                                } else {
                                                    q.j();
                                                }
                                                lx lxVar = new lx(purchaseStateEnum2, v76Var);
                                                if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                                    z3 = true;
                                                } else {
                                                    z3 = false;
                                                }
                                                if (purchaseStateEnum2 == wb6.b.PENDING) {
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                                    z5 = true;
                                                } else {
                                                    z5 = false;
                                                }
                                                xa4Var = new xa4(v76Var, z3, z4, z5, i10, color, numValueOf, lxVar);
                                            } else {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        i9 = R.string.purchase;
                                        i10 = i9;
                                        i11 = iArr[purchaseStateEnum2.ordinal()];
                                        if (i11 != 1) {
                                            i12 = R.color.blu;
                                        } else {
                                            if (i11 != 2) {
                                                if (i11 == 3) {
                                                    i12 = R.color.ambrdark;
                                                } else {
                                                    q.j();
                                                }
                                                return null;
                                            }
                                            i12 = R.color.grn;
                                        }
                                        SwiftApp.Companion companion3 = SwiftApp.d;
                                        int color2 = SwiftApp.Companion.c().getColor(i12);
                                        i13 = iArr[purchaseStateEnum2.ordinal()];
                                        if (i13 != 1) {
                                            numValueOf = null;
                                        } else {
                                            if (i13 != 2) {
                                                if (i13 == 3) {
                                                    numValueOf = numValueOf2;
                                                } else {
                                                    q.j();
                                                }
                                                return null;
                                            }
                                            numValueOf = Integer.valueOf(i2);
                                        }
                                        lx lxVar2 = new lx(purchaseStateEnum2, v76Var);
                                        if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        if (purchaseStateEnum2 == wb6.b.PENDING) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                        if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                            z5 = true;
                                        } else {
                                            z5 = false;
                                        }
                                        xa4Var = new xa4(v76Var, z3, z4, z5, i10, color2, numValueOf, lxVar2);
                                    } else {
                                        i2 = R.drawable.ic_check;
                                        xa4Var = null;
                                    }
                                    if (v76Var2 != null) {
                                        if (listC != null) {
                                            arrayList4 = new ArrayList();
                                            for (Object obj5 : listC) {
                                                if (pe4.d(((wb6) obj5).getSku(), v76Var2.c)) {
                                                    arrayList4.add(obj5);
                                                }
                                            }
                                            it5 = arrayList4.iterator();
                                            if (it5.hasNext()) {
                                                next5 = it5.next();
                                                if (it5.hasNext()) {
                                                    jH = io4.h(((wb6) next5).getPurchaseTime());
                                                    do {
                                                        next6 = it5.next();
                                                        jH2 = io4.h(((wb6) next6).getPurchaseTime());
                                                        if (jH < jH2) {
                                                            next5 = next6;
                                                            jH = jH2;
                                                        }
                                                    } while (it5.hasNext());
                                                }
                                            } else {
                                                next5 = null;
                                            }
                                            wb6Var = (wb6) next5;
                                        } else {
                                            wb6Var = null;
                                        }
                                        if (wb6Var != null) {
                                            purchaseStateEnum = wb6Var.getPurchaseStateEnum();
                                        } else {
                                            purchaseStateEnum = null;
                                        }
                                        try {
                                            d45.b.getClass();
                                            mFirebaseUserA = d45.a();
                                            if (mFirebaseUserA != null) {
                                                boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                            } else {
                                                boolValueOf = null;
                                            }
                                            break;
                                        } catch (Exception unused3) {
                                        }
                                        bool = Boolean.TRUE;
                                        if (pe4.d(boolValueOf, bool)) {
                                            purchaseStateEnum = null;
                                        }
                                        if (purchaseStateEnum == null) {
                                            purchaseStateEnum = wb6.b.UNSPECIFIED_STATE;
                                        }
                                        if (wb6Var != null) {
                                            zD = pe4.d(wb6Var.getAutoRenewing(), bool);
                                        } else {
                                            zD = false;
                                        }
                                        int[] iArr2 = sq0.a;
                                        i3 = iArr2[purchaseStateEnum.ordinal()];
                                        if (i3 != 1) {
                                            i = R.string.subscribe;
                                        } else {
                                            if (i3 != 2) {
                                                if (i3 == 3) {
                                                    q.j();
                                                }
                                                return null;
                                            }
                                            if (zD) {
                                                i = R.string.cancel;
                                            } else {
                                                i = R.string.subscribed;
                                            }
                                        }
                                        int i17 = i;
                                        i4 = iArr2[purchaseStateEnum.ordinal()];
                                        if (i4 != 1) {
                                            i5 = R.color.blu;
                                        } else {
                                            if (i4 != 2) {
                                                if (i4 == 3) {
                                                    i5 = R.color.ambrdark;
                                                } else {
                                                    q.j();
                                                }
                                                return null;
                                            }
                                            if (zD) {
                                                i5 = R.color.red;
                                            } else {
                                                i5 = R.color.grn;
                                            }
                                        }
                                        SwiftApp.Companion companion4 = SwiftApp.d;
                                        int color3 = SwiftApp.Companion.c().getColor(i5);
                                        i6 = iArr2[purchaseStateEnum.ordinal()];
                                        if (i6 != 1) {
                                            if (i6 != 2) {
                                                if (zD) {
                                                    i7 = R.drawable.ic_menu_close;
                                                } else {
                                                    i7 = i2;
                                                }
                                                numValueOf2 = Integer.valueOf(i7);
                                            } else if (i6 != 3) {
                                                q.j();
                                                return null;
                                            }
                                            num = numValueOf2;
                                        } else {
                                            num = null;
                                        }
                                        rm rmVar = new rm(purchaseStateEnum, v76Var2);
                                        if (purchaseStateEnum == wb6.b.PURCHASED) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        if (purchaseStateEnum == wb6.b.PENDING) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        xa4Var2 = new xa4(v76Var2, z, z2, true, i17, color3, num, rmVar);
                                    } else {
                                        xa4Var2 = null;
                                    }
                                    listP0 = x50.p0(new xa4[]{xa4Var, xa4Var2});
                                    arrayList3 = (ArrayList) listP0;
                                    if (arrayList3.isEmpty()) {
                                        vr6.e$default(vr6.INSTANCE, "BillingManager", "Empty in-app items!", null, 4, null);
                                        oq0Var = new oq0("Empty in-app items!");
                                    } else {
                                        it2 = arrayList3.iterator();
                                        do {
                                            if (it2.hasNext()) {
                                                next3 = it2.next();
                                            } else {
                                                next3 = null;
                                            }
                                            xa4Var3 = (xa4) next3;
                                            if (xa4Var3 == null) {
                                                it4 = arrayList3.iterator();
                                                while (true) {
                                                    if (it4.hasNext()) {
                                                        next4 = it4.next();
                                                        if (((xa4) next4).isLifetime()) {
                                                            obj = next4;
                                                        }
                                                    } else {
                                                        obj = null;
                                                    }
                                                }
                                                xa4Var3 = (xa4) obj;
                                                if (xa4Var3 == null) {
                                                    xa4Var3 = (xa4) el1.S0(listP0);
                                                }
                                            }
                                            fm7 fm7Var = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                            if (arrayList3.isEmpty()) {
                                                z8 = false;
                                            } else {
                                                it3 = arrayList3.iterator();
                                                do {
                                                    if (it3.hasNext()) {
                                                        z8 = false;
                                                    }
                                                } while (!((xa4) it3.next()).isPurchased());
                                            }
                                            if (!z8) {
                                                vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                                re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                            }
                                            oq0Var = new nq0(fm7Var, z8);
                                        } while (!((xa4) next3).isPurchased());
                                        xa4Var3 = (xa4) next3;
                                        if (xa4Var3 == null) {
                                            it4 = arrayList3.iterator();
                                            while (true) {
                                                if (it4.hasNext()) {
                                                    next4 = it4.next();
                                                    if (((xa4) next4).isLifetime()) {
                                                        obj = next4;
                                                    }
                                                } else {
                                                    obj = null;
                                                }
                                            }
                                            xa4Var3 = (xa4) obj;
                                            if (xa4Var3 == null) {
                                                xa4Var3 = (xa4) el1.S0(listP0);
                                            }
                                        }
                                        fm7 fm7Var2 = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                        if (arrayList3.isEmpty()) {
                                            z8 = false;
                                        } else {
                                            it3 = arrayList3.iterator();
                                            do {
                                                if (it3.hasNext()) {
                                                    z8 = false;
                                                }
                                            } while (!((xa4) it3.next()).isPurchased());
                                        }
                                        if (!z8) {
                                            vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                            re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                        }
                                        oq0Var = new nq0(fm7Var2, z8);
                                    }
                                } while (!pe4.d(str, "subs"));
                                v76Var2 = (v76) next2;
                                i = R.string.pending_payment;
                                if (v76Var != null) {
                                    if (listC != null) {
                                        arrayList5 = new ArrayList();
                                        while (r15.hasNext()) {
                                            if (pe4.d(((wb6) obj4).getSku(), v76Var.c)) {
                                                arrayList5.add(obj4);
                                            }
                                        }
                                        i2 = R.drawable.ic_check;
                                        it6 = arrayList5.iterator();
                                        if (it6.hasNext()) {
                                            next7 = null;
                                        } else {
                                            next7 = it6.next();
                                            if (it6.hasNext()) {
                                                jH3 = io4.h(((wb6) next7).getPurchaseTime());
                                                do {
                                                    next8 = it6.next();
                                                    jH4 = io4.h(((wb6) next8).getPurchaseTime());
                                                    if (jH3 < jH4) {
                                                        next7 = next8;
                                                        jH3 = jH4;
                                                    }
                                                } while (it6.hasNext());
                                            }
                                        }
                                        wb6Var2 = (wb6) next7;
                                    } else {
                                        i2 = R.drawable.ic_check;
                                        wb6Var2 = null;
                                    }
                                    if (wb6Var2 != null) {
                                        purchaseStateEnum2 = wb6Var2.getPurchaseStateEnum();
                                    } else {
                                        purchaseStateEnum2 = null;
                                    }
                                    d45.b.getClass();
                                    mFirebaseUserA2 = d45.a();
                                    if (mFirebaseUserA2 != null) {
                                        boolValueOf2 = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                                    } else {
                                        boolValueOf2 = null;
                                    }
                                    if (pe4.d(boolValueOf2, Boolean.TRUE)) {
                                        purchaseStateEnum2 = null;
                                    }
                                    if (purchaseStateEnum2 == null) {
                                        purchaseStateEnum2 = wb6.b.UNSPECIFIED_STATE;
                                    }
                                    int[] iArr3 = sq0.a;
                                    i8 = iArr3[purchaseStateEnum2.ordinal()];
                                    if (i8 != 1) {
                                        if (i8 != 2) {
                                            i9 = R.string.purchased;
                                        } else if (i8 == 3) {
                                            i10 = R.string.pending_payment;
                                            i11 = iArr3[purchaseStateEnum2.ordinal()];
                                            if (i11 != 1) {
                                                i12 = R.color.blu;
                                            } else if (i11 != 2) {
                                                i12 = R.color.grn;
                                            } else if (i11 == 3) {
                                                i12 = R.color.ambrdark;
                                            } else {
                                                q.j();
                                            }
                                            SwiftApp.Companion companion5 = SwiftApp.d;
                                            int color4 = SwiftApp.Companion.c().getColor(i12);
                                            i13 = iArr3[purchaseStateEnum2.ordinal()];
                                            if (i13 != 1) {
                                                numValueOf = null;
                                            } else if (i13 != 2) {
                                                numValueOf = Integer.valueOf(i2);
                                            } else if (i13 == 3) {
                                                numValueOf = numValueOf2;
                                            } else {
                                                q.j();
                                            }
                                            lx lxVar3 = new lx(purchaseStateEnum2, v76Var);
                                            if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (purchaseStateEnum2 == wb6.b.PENDING) {
                                                z4 = true;
                                            } else {
                                                z4 = false;
                                            }
                                            if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                                z5 = true;
                                            } else {
                                                z5 = false;
                                            }
                                            xa4Var = new xa4(v76Var, z3, z4, z5, i10, color4, numValueOf, lxVar3);
                                        } else {
                                            q.j();
                                        }
                                        return null;
                                    }
                                    i9 = R.string.purchase;
                                    i10 = i9;
                                    i11 = iArr3[purchaseStateEnum2.ordinal()];
                                    if (i11 != 1) {
                                        i12 = R.color.blu;
                                    } else {
                                        if (i11 != 2) {
                                            if (i11 == 3) {
                                                i12 = R.color.ambrdark;
                                            } else {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        i12 = R.color.grn;
                                    }
                                    SwiftApp.Companion companion6 = SwiftApp.d;
                                    int color5 = SwiftApp.Companion.c().getColor(i12);
                                    i13 = iArr3[purchaseStateEnum2.ordinal()];
                                    if (i13 != 1) {
                                        numValueOf = null;
                                    } else {
                                        if (i13 != 2) {
                                            if (i13 == 3) {
                                                numValueOf = numValueOf2;
                                            } else {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        numValueOf = Integer.valueOf(i2);
                                    }
                                    lx lxVar4 = new lx(purchaseStateEnum2, v76Var);
                                    if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (purchaseStateEnum2 == wb6.b.PENDING) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    xa4Var = new xa4(v76Var, z3, z4, z5, i10, color5, numValueOf, lxVar4);
                                } else {
                                    i2 = R.drawable.ic_check;
                                    xa4Var = null;
                                }
                                if (v76Var2 != null) {
                                    if (listC != null) {
                                        arrayList4 = new ArrayList();
                                        while (r4.hasNext()) {
                                            if (pe4.d(((wb6) obj5).getSku(), v76Var2.c)) {
                                                arrayList4.add(obj5);
                                            }
                                        }
                                        it5 = arrayList4.iterator();
                                        if (it5.hasNext()) {
                                            next5 = null;
                                        } else {
                                            next5 = it5.next();
                                            if (it5.hasNext()) {
                                                jH = io4.h(((wb6) next5).getPurchaseTime());
                                                do {
                                                    next6 = it5.next();
                                                    jH2 = io4.h(((wb6) next6).getPurchaseTime());
                                                    if (jH < jH2) {
                                                        next5 = next6;
                                                        jH = jH2;
                                                    }
                                                } while (it5.hasNext());
                                            }
                                        }
                                        wb6Var = (wb6) next5;
                                    } else {
                                        wb6Var = null;
                                    }
                                    if (wb6Var != null) {
                                        purchaseStateEnum = wb6Var.getPurchaseStateEnum();
                                    } else {
                                        purchaseStateEnum = null;
                                    }
                                    d45.b.getClass();
                                    mFirebaseUserA = d45.a();
                                    if (mFirebaseUserA != null) {
                                        boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                    } else {
                                        boolValueOf = null;
                                    }
                                    bool = Boolean.TRUE;
                                    if (pe4.d(boolValueOf, bool)) {
                                        purchaseStateEnum = null;
                                    }
                                    if (purchaseStateEnum == null) {
                                        purchaseStateEnum = wb6.b.UNSPECIFIED_STATE;
                                    }
                                    if (wb6Var != null) {
                                        zD = pe4.d(wb6Var.getAutoRenewing(), bool);
                                    } else {
                                        zD = false;
                                    }
                                    int[] iArr4 = sq0.a;
                                    i3 = iArr4[purchaseStateEnum.ordinal()];
                                    if (i3 != 1) {
                                        i = R.string.subscribe;
                                    } else {
                                        if (i3 != 2) {
                                            if (i3 == 3) {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        if (zD) {
                                            i = R.string.cancel;
                                        } else {
                                            i = R.string.subscribed;
                                        }
                                    }
                                    int i18 = i;
                                    i4 = iArr4[purchaseStateEnum.ordinal()];
                                    if (i4 != 1) {
                                        i5 = R.color.blu;
                                    } else {
                                        if (i4 != 2) {
                                            if (i4 == 3) {
                                                i5 = R.color.ambrdark;
                                            } else {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        if (zD) {
                                            i5 = R.color.red;
                                        } else {
                                            i5 = R.color.grn;
                                        }
                                    }
                                    SwiftApp.Companion companion7 = SwiftApp.d;
                                    int color6 = SwiftApp.Companion.c().getColor(i5);
                                    i6 = iArr4[purchaseStateEnum.ordinal()];
                                    if (i6 != 1) {
                                        if (i6 != 2) {
                                            if (zD) {
                                                i7 = R.drawable.ic_menu_close;
                                            } else {
                                                i7 = i2;
                                            }
                                            numValueOf2 = Integer.valueOf(i7);
                                        } else if (i6 != 3) {
                                            q.j();
                                            return null;
                                        }
                                        num = numValueOf2;
                                    } else {
                                        num = null;
                                    }
                                    rm rmVar2 = new rm(purchaseStateEnum, v76Var2);
                                    if (purchaseStateEnum == wb6.b.PURCHASED) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (purchaseStateEnum == wb6.b.PENDING) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    xa4Var2 = new xa4(v76Var2, z, z2, true, i18, color6, num, rmVar2);
                                } else {
                                    xa4Var2 = null;
                                }
                                listP0 = x50.p0(new xa4[]{xa4Var, xa4Var2});
                                arrayList3 = (ArrayList) listP0;
                                if (arrayList3.isEmpty()) {
                                    vr6.e$default(vr6.INSTANCE, "BillingManager", "Empty in-app items!", null, 4, null);
                                    oq0Var = new oq0("Empty in-app items!");
                                } else {
                                    it2 = arrayList3.iterator();
                                    do {
                                        if (it2.hasNext()) {
                                            next3 = it2.next();
                                        } else {
                                            next3 = null;
                                        }
                                        xa4Var3 = (xa4) next3;
                                        if (xa4Var3 == null) {
                                            it4 = arrayList3.iterator();
                                            while (true) {
                                                if (it4.hasNext()) {
                                                    next4 = it4.next();
                                                    if (((xa4) next4).isLifetime()) {
                                                        obj = next4;
                                                    }
                                                } else {
                                                    obj = null;
                                                }
                                            }
                                            xa4Var3 = (xa4) obj;
                                            if (xa4Var3 == null) {
                                                xa4Var3 = (xa4) el1.S0(listP0);
                                            }
                                        }
                                        fm7 fm7Var3 = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                        if (arrayList3.isEmpty()) {
                                            z8 = false;
                                        } else {
                                            it3 = arrayList3.iterator();
                                            do {
                                                if (it3.hasNext()) {
                                                    z8 = false;
                                                }
                                            } while (!((xa4) it3.next()).isPurchased());
                                        }
                                        if (!z8) {
                                            vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                            re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                        }
                                        oq0Var = new nq0(fm7Var3, z8);
                                    } while (!((xa4) next3).isPurchased());
                                    xa4Var3 = (xa4) next3;
                                    if (xa4Var3 == null) {
                                        it4 = arrayList3.iterator();
                                        while (true) {
                                            if (it4.hasNext()) {
                                                next4 = it4.next();
                                                if (((xa4) next4).isLifetime()) {
                                                    obj = next4;
                                                }
                                            } else {
                                                obj = null;
                                            }
                                        }
                                        xa4Var3 = (xa4) obj;
                                        if (xa4Var3 == null) {
                                            xa4Var3 = (xa4) el1.S0(listP0);
                                        }
                                    }
                                    fm7 fm7Var4 = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                    if (arrayList3.isEmpty()) {
                                        z8 = false;
                                    } else {
                                        it3 = arrayList3.iterator();
                                        do {
                                            if (it3.hasNext()) {
                                                z8 = false;
                                            }
                                        } while (!((xa4) it3.next()).isPurchased());
                                    }
                                    if (!z8) {
                                        vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                        re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                    }
                                    oq0Var = new nq0(fm7Var4, z8);
                                }
                                break;
                            } while (!pe4.d(v76Var4 != null ? v76Var4.d : null, "inapp"));
                            v76Var = (v76) next;
                            it = arrayList2.iterator();
                            do {
                                if (it.hasNext()) {
                                    next2 = it.next();
                                    v76Var3 = (v76) next2;
                                    if (v76Var3 != null) {
                                        str = v76Var3.d;
                                    } else {
                                        str = null;
                                    }
                                } else {
                                    next2 = null;
                                }
                                v76Var2 = (v76) next2;
                                i = R.string.pending_payment;
                                if (v76Var != null) {
                                    if (listC != null) {
                                        arrayList5 = new ArrayList();
                                        while (r15.hasNext()) {
                                            if (pe4.d(((wb6) obj4).getSku(), v76Var.c)) {
                                                arrayList5.add(obj4);
                                            }
                                        }
                                        i2 = R.drawable.ic_check;
                                        it6 = arrayList5.iterator();
                                        if (it6.hasNext()) {
                                            next7 = null;
                                        } else {
                                            next7 = it6.next();
                                            if (it6.hasNext()) {
                                                jH3 = io4.h(((wb6) next7).getPurchaseTime());
                                                do {
                                                    next8 = it6.next();
                                                    jH4 = io4.h(((wb6) next8).getPurchaseTime());
                                                    if (jH3 < jH4) {
                                                        next7 = next8;
                                                        jH3 = jH4;
                                                    }
                                                } while (it6.hasNext());
                                            }
                                        }
                                        wb6Var2 = (wb6) next7;
                                    } else {
                                        i2 = R.drawable.ic_check;
                                        wb6Var2 = null;
                                    }
                                    if (wb6Var2 != null) {
                                        purchaseStateEnum2 = wb6Var2.getPurchaseStateEnum();
                                    } else {
                                        purchaseStateEnum2 = null;
                                    }
                                    d45.b.getClass();
                                    mFirebaseUserA2 = d45.a();
                                    if (mFirebaseUserA2 != null) {
                                        boolValueOf2 = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                                    } else {
                                        boolValueOf2 = null;
                                    }
                                    if (pe4.d(boolValueOf2, Boolean.TRUE)) {
                                        purchaseStateEnum2 = null;
                                    }
                                    if (purchaseStateEnum2 == null) {
                                        purchaseStateEnum2 = wb6.b.UNSPECIFIED_STATE;
                                    }
                                    int[] iArr5 = sq0.a;
                                    i8 = iArr5[purchaseStateEnum2.ordinal()];
                                    if (i8 != 1) {
                                        if (i8 != 2) {
                                            i9 = R.string.purchased;
                                        } else if (i8 == 3) {
                                            i10 = R.string.pending_payment;
                                            i11 = iArr5[purchaseStateEnum2.ordinal()];
                                            if (i11 != 1) {
                                                i12 = R.color.blu;
                                            } else if (i11 != 2) {
                                                i12 = R.color.grn;
                                            } else if (i11 == 3) {
                                                i12 = R.color.ambrdark;
                                            } else {
                                                q.j();
                                            }
                                            SwiftApp.Companion companion8 = SwiftApp.d;
                                            int color7 = SwiftApp.Companion.c().getColor(i12);
                                            i13 = iArr5[purchaseStateEnum2.ordinal()];
                                            if (i13 != 1) {
                                                numValueOf = null;
                                            } else if (i13 != 2) {
                                                numValueOf = Integer.valueOf(i2);
                                            } else if (i13 == 3) {
                                                numValueOf = numValueOf2;
                                            } else {
                                                q.j();
                                            }
                                            lx lxVar5 = new lx(purchaseStateEnum2, v76Var);
                                            if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (purchaseStateEnum2 == wb6.b.PENDING) {
                                                z4 = true;
                                            } else {
                                                z4 = false;
                                            }
                                            if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                                z5 = true;
                                            } else {
                                                z5 = false;
                                            }
                                            xa4Var = new xa4(v76Var, z3, z4, z5, i10, color7, numValueOf, lxVar5);
                                        } else {
                                            q.j();
                                        }
                                        return null;
                                    }
                                    i9 = R.string.purchase;
                                    i10 = i9;
                                    i11 = iArr5[purchaseStateEnum2.ordinal()];
                                    if (i11 != 1) {
                                        i12 = R.color.blu;
                                    } else {
                                        if (i11 != 2) {
                                            if (i11 == 3) {
                                                i12 = R.color.ambrdark;
                                            } else {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        i12 = R.color.grn;
                                    }
                                    SwiftApp.Companion companion9 = SwiftApp.d;
                                    int color8 = SwiftApp.Companion.c().getColor(i12);
                                    i13 = iArr5[purchaseStateEnum2.ordinal()];
                                    if (i13 != 1) {
                                        numValueOf = null;
                                    } else {
                                        if (i13 != 2) {
                                            if (i13 == 3) {
                                                numValueOf = numValueOf2;
                                            } else {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        numValueOf = Integer.valueOf(i2);
                                    }
                                    lx lxVar6 = new lx(purchaseStateEnum2, v76Var);
                                    if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (purchaseStateEnum2 == wb6.b.PENDING) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    xa4Var = new xa4(v76Var, z3, z4, z5, i10, color8, numValueOf, lxVar6);
                                } else {
                                    i2 = R.drawable.ic_check;
                                    xa4Var = null;
                                }
                                if (v76Var2 != null) {
                                    if (listC != null) {
                                        arrayList4 = new ArrayList();
                                        while (r4.hasNext()) {
                                            if (pe4.d(((wb6) obj5).getSku(), v76Var2.c)) {
                                                arrayList4.add(obj5);
                                            }
                                        }
                                        it5 = arrayList4.iterator();
                                        if (it5.hasNext()) {
                                            next5 = null;
                                        } else {
                                            next5 = it5.next();
                                            if (it5.hasNext()) {
                                                jH = io4.h(((wb6) next5).getPurchaseTime());
                                                do {
                                                    next6 = it5.next();
                                                    jH2 = io4.h(((wb6) next6).getPurchaseTime());
                                                    if (jH < jH2) {
                                                        next5 = next6;
                                                        jH = jH2;
                                                    }
                                                } while (it5.hasNext());
                                            }
                                        }
                                        wb6Var = (wb6) next5;
                                    } else {
                                        wb6Var = null;
                                    }
                                    if (wb6Var != null) {
                                        purchaseStateEnum = wb6Var.getPurchaseStateEnum();
                                    } else {
                                        purchaseStateEnum = null;
                                    }
                                    d45.b.getClass();
                                    mFirebaseUserA = d45.a();
                                    if (mFirebaseUserA != null) {
                                        boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                    } else {
                                        boolValueOf = null;
                                    }
                                    bool = Boolean.TRUE;
                                    if (pe4.d(boolValueOf, bool)) {
                                        purchaseStateEnum = null;
                                    }
                                    if (purchaseStateEnum == null) {
                                        purchaseStateEnum = wb6.b.UNSPECIFIED_STATE;
                                    }
                                    if (wb6Var != null) {
                                        zD = pe4.d(wb6Var.getAutoRenewing(), bool);
                                    } else {
                                        zD = false;
                                    }
                                    int[] iArr6 = sq0.a;
                                    i3 = iArr6[purchaseStateEnum.ordinal()];
                                    if (i3 != 1) {
                                        i = R.string.subscribe;
                                    } else {
                                        if (i3 != 2) {
                                            if (i3 == 3) {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        if (zD) {
                                            i = R.string.cancel;
                                        } else {
                                            i = R.string.subscribed;
                                        }
                                    }
                                    int i19 = i;
                                    i4 = iArr6[purchaseStateEnum.ordinal()];
                                    if (i4 != 1) {
                                        i5 = R.color.blu;
                                    } else {
                                        if (i4 != 2) {
                                            if (i4 == 3) {
                                                i5 = R.color.ambrdark;
                                            } else {
                                                q.j();
                                            }
                                            return null;
                                        }
                                        if (zD) {
                                            i5 = R.color.red;
                                        } else {
                                            i5 = R.color.grn;
                                        }
                                    }
                                    SwiftApp.Companion companion10 = SwiftApp.d;
                                    int color9 = SwiftApp.Companion.c().getColor(i5);
                                    i6 = iArr6[purchaseStateEnum.ordinal()];
                                    if (i6 != 1) {
                                        if (i6 != 2) {
                                            if (zD) {
                                                i7 = R.drawable.ic_menu_close;
                                            } else {
                                                i7 = i2;
                                            }
                                            numValueOf2 = Integer.valueOf(i7);
                                        } else if (i6 != 3) {
                                            q.j();
                                            return null;
                                        }
                                        num = numValueOf2;
                                    } else {
                                        num = null;
                                    }
                                    rm rmVar3 = new rm(purchaseStateEnum, v76Var2);
                                    if (purchaseStateEnum == wb6.b.PURCHASED) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (purchaseStateEnum == wb6.b.PENDING) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    xa4Var2 = new xa4(v76Var2, z, z2, true, i19, color9, num, rmVar3);
                                } else {
                                    xa4Var2 = null;
                                }
                                listP0 = x50.p0(new xa4[]{xa4Var, xa4Var2});
                                arrayList3 = (ArrayList) listP0;
                                if (arrayList3.isEmpty()) {
                                    vr6.e$default(vr6.INSTANCE, "BillingManager", "Empty in-app items!", null, 4, null);
                                    oq0Var = new oq0("Empty in-app items!");
                                } else {
                                    it2 = arrayList3.iterator();
                                    do {
                                        if (it2.hasNext()) {
                                            next3 = it2.next();
                                        } else {
                                            next3 = null;
                                        }
                                        xa4Var3 = (xa4) next3;
                                        if (xa4Var3 == null) {
                                            it4 = arrayList3.iterator();
                                            while (true) {
                                                if (it4.hasNext()) {
                                                    next4 = it4.next();
                                                    if (((xa4) next4).isLifetime()) {
                                                        obj = next4;
                                                    }
                                                } else {
                                                    obj = null;
                                                }
                                            }
                                            xa4Var3 = (xa4) obj;
                                            if (xa4Var3 == null) {
                                                xa4Var3 = (xa4) el1.S0(listP0);
                                            }
                                        }
                                        fm7 fm7Var5 = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                        if (arrayList3.isEmpty()) {
                                            z8 = false;
                                        } else {
                                            it3 = arrayList3.iterator();
                                            do {
                                                if (it3.hasNext()) {
                                                    z8 = false;
                                                }
                                            } while (!((xa4) it3.next()).isPurchased());
                                        }
                                        if (!z8) {
                                            vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                            re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                        }
                                        oq0Var = new nq0(fm7Var5, z8);
                                    } while (!((xa4) next3).isPurchased());
                                    xa4Var3 = (xa4) next3;
                                    if (xa4Var3 == null) {
                                        it4 = arrayList3.iterator();
                                        while (true) {
                                            if (it4.hasNext()) {
                                                next4 = it4.next();
                                                if (((xa4) next4).isLifetime()) {
                                                    obj = next4;
                                                }
                                            } else {
                                                obj = null;
                                            }
                                        }
                                        xa4Var3 = (xa4) obj;
                                        if (xa4Var3 == null) {
                                            xa4Var3 = (xa4) el1.S0(listP0);
                                        }
                                    }
                                    fm7 fm7Var6 = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                    if (arrayList3.isEmpty()) {
                                        z8 = false;
                                    } else {
                                        it3 = arrayList3.iterator();
                                        do {
                                            if (it3.hasNext()) {
                                                z8 = false;
                                            }
                                        } while (!((xa4) it3.next()).isPurchased());
                                    }
                                    if (!z8) {
                                        vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                        re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                    }
                                    oq0Var = new nq0(fm7Var6, z8);
                                }
                                break;
                            } while (!pe4.d(str, "subs"));
                            v76Var2 = (v76) next2;
                            i = R.string.pending_payment;
                            if (v76Var != null) {
                                if (listC != null) {
                                    arrayList5 = new ArrayList();
                                    while (r15.hasNext()) {
                                        if (pe4.d(((wb6) obj4).getSku(), v76Var.c)) {
                                            arrayList5.add(obj4);
                                        }
                                    }
                                    i2 = R.drawable.ic_check;
                                    it6 = arrayList5.iterator();
                                    if (it6.hasNext()) {
                                        next7 = null;
                                    } else {
                                        next7 = it6.next();
                                        if (it6.hasNext()) {
                                            jH3 = io4.h(((wb6) next7).getPurchaseTime());
                                            do {
                                                next8 = it6.next();
                                                jH4 = io4.h(((wb6) next8).getPurchaseTime());
                                                if (jH3 < jH4) {
                                                    next7 = next8;
                                                    jH3 = jH4;
                                                }
                                            } while (it6.hasNext());
                                        }
                                    }
                                    wb6Var2 = (wb6) next7;
                                } else {
                                    i2 = R.drawable.ic_check;
                                    wb6Var2 = null;
                                }
                                if (wb6Var2 != null) {
                                    purchaseStateEnum2 = wb6Var2.getPurchaseStateEnum();
                                } else {
                                    purchaseStateEnum2 = null;
                                }
                                d45.b.getClass();
                                mFirebaseUserA2 = d45.a();
                                if (mFirebaseUserA2 != null) {
                                    boolValueOf2 = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                                } else {
                                    boolValueOf2 = null;
                                }
                                if (pe4.d(boolValueOf2, Boolean.TRUE)) {
                                    purchaseStateEnum2 = null;
                                }
                                if (purchaseStateEnum2 == null) {
                                    purchaseStateEnum2 = wb6.b.UNSPECIFIED_STATE;
                                }
                                int[] iArr7 = sq0.a;
                                i8 = iArr7[purchaseStateEnum2.ordinal()];
                                if (i8 != 1) {
                                    if (i8 != 2) {
                                        i9 = R.string.purchased;
                                    } else if (i8 == 3) {
                                        i10 = R.string.pending_payment;
                                        i11 = iArr7[purchaseStateEnum2.ordinal()];
                                        if (i11 != 1) {
                                            i12 = R.color.blu;
                                        } else if (i11 != 2) {
                                            i12 = R.color.grn;
                                        } else if (i11 == 3) {
                                            i12 = R.color.ambrdark;
                                        } else {
                                            q.j();
                                        }
                                        SwiftApp.Companion companion11 = SwiftApp.d;
                                        int color10 = SwiftApp.Companion.c().getColor(i12);
                                        i13 = iArr7[purchaseStateEnum2.ordinal()];
                                        if (i13 != 1) {
                                            numValueOf = null;
                                        } else if (i13 != 2) {
                                            numValueOf = Integer.valueOf(i2);
                                        } else if (i13 == 3) {
                                            numValueOf = numValueOf2;
                                        } else {
                                            q.j();
                                        }
                                        lx lxVar7 = new lx(purchaseStateEnum2, v76Var);
                                        if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        if (purchaseStateEnum2 == wb6.b.PENDING) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                        if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                            z5 = true;
                                        } else {
                                            z5 = false;
                                        }
                                        xa4Var = new xa4(v76Var, z3, z4, z5, i10, color10, numValueOf, lxVar7);
                                    } else {
                                        q.j();
                                    }
                                    return null;
                                }
                                i9 = R.string.purchase;
                                i10 = i9;
                                i11 = iArr7[purchaseStateEnum2.ordinal()];
                                if (i11 != 1) {
                                    i12 = R.color.blu;
                                } else {
                                    if (i11 != 2) {
                                        if (i11 == 3) {
                                            i12 = R.color.ambrdark;
                                        } else {
                                            q.j();
                                        }
                                        return null;
                                    }
                                    i12 = R.color.grn;
                                }
                                SwiftApp.Companion companion12 = SwiftApp.d;
                                int color11 = SwiftApp.Companion.c().getColor(i12);
                                i13 = iArr7[purchaseStateEnum2.ordinal()];
                                if (i13 != 1) {
                                    numValueOf = null;
                                } else {
                                    if (i13 != 2) {
                                        if (i13 == 3) {
                                            numValueOf = numValueOf2;
                                        } else {
                                            q.j();
                                        }
                                        return null;
                                    }
                                    numValueOf = Integer.valueOf(i2);
                                }
                                lx lxVar8 = new lx(purchaseStateEnum2, v76Var);
                                if (purchaseStateEnum2 == wb6.b.PURCHASED) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (purchaseStateEnum2 == wb6.b.PENDING) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (purchaseStateEnum2 == wb6.b.UNSPECIFIED_STATE) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                xa4Var = new xa4(v76Var, z3, z4, z5, i10, color11, numValueOf, lxVar8);
                            } else {
                                i2 = R.drawable.ic_check;
                                xa4Var = null;
                            }
                            if (v76Var2 != null) {
                                if (listC != null) {
                                    arrayList4 = new ArrayList();
                                    while (r4.hasNext()) {
                                        if (pe4.d(((wb6) obj5).getSku(), v76Var2.c)) {
                                            arrayList4.add(obj5);
                                        }
                                    }
                                    it5 = arrayList4.iterator();
                                    if (it5.hasNext()) {
                                        next5 = null;
                                    } else {
                                        next5 = it5.next();
                                        if (it5.hasNext()) {
                                            jH = io4.h(((wb6) next5).getPurchaseTime());
                                            do {
                                                next6 = it5.next();
                                                jH2 = io4.h(((wb6) next6).getPurchaseTime());
                                                if (jH < jH2) {
                                                    next5 = next6;
                                                    jH = jH2;
                                                }
                                            } while (it5.hasNext());
                                        }
                                    }
                                    wb6Var = (wb6) next5;
                                } else {
                                    wb6Var = null;
                                }
                                if (wb6Var != null) {
                                    purchaseStateEnum = wb6Var.getPurchaseStateEnum();
                                } else {
                                    purchaseStateEnum = null;
                                }
                                d45.b.getClass();
                                mFirebaseUserA = d45.a();
                                if (mFirebaseUserA != null) {
                                    boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                } else {
                                    boolValueOf = null;
                                }
                                bool = Boolean.TRUE;
                                if (pe4.d(boolValueOf, bool)) {
                                    purchaseStateEnum = null;
                                }
                                if (purchaseStateEnum == null) {
                                    purchaseStateEnum = wb6.b.UNSPECIFIED_STATE;
                                }
                                if (wb6Var != null) {
                                    zD = pe4.d(wb6Var.getAutoRenewing(), bool);
                                } else {
                                    zD = false;
                                }
                                int[] iArr8 = sq0.a;
                                i3 = iArr8[purchaseStateEnum.ordinal()];
                                if (i3 != 1) {
                                    i = R.string.subscribe;
                                } else {
                                    if (i3 != 2) {
                                        if (i3 == 3) {
                                            q.j();
                                        }
                                        return null;
                                    }
                                    if (zD) {
                                        i = R.string.cancel;
                                    } else {
                                        i = R.string.subscribed;
                                    }
                                }
                                int i110 = i;
                                i4 = iArr8[purchaseStateEnum.ordinal()];
                                if (i4 != 1) {
                                    i5 = R.color.blu;
                                } else {
                                    if (i4 != 2) {
                                        if (i4 == 3) {
                                            i5 = R.color.ambrdark;
                                        } else {
                                            q.j();
                                        }
                                        return null;
                                    }
                                    if (zD) {
                                        i5 = R.color.red;
                                    } else {
                                        i5 = R.color.grn;
                                    }
                                }
                                SwiftApp.Companion companion13 = SwiftApp.d;
                                int color12 = SwiftApp.Companion.c().getColor(i5);
                                i6 = iArr8[purchaseStateEnum.ordinal()];
                                if (i6 != 1) {
                                    if (i6 != 2) {
                                        if (zD) {
                                            i7 = R.drawable.ic_menu_close;
                                        } else {
                                            i7 = i2;
                                        }
                                        numValueOf2 = Integer.valueOf(i7);
                                    } else if (i6 != 3) {
                                        q.j();
                                        return null;
                                    }
                                    num = numValueOf2;
                                } else {
                                    num = null;
                                }
                                rm rmVar4 = new rm(purchaseStateEnum, v76Var2);
                                if (purchaseStateEnum == wb6.b.PURCHASED) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (purchaseStateEnum == wb6.b.PENDING) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                xa4Var2 = new xa4(v76Var2, z, z2, true, i110, color12, num, rmVar4);
                            } else {
                                xa4Var2 = null;
                            }
                            listP0 = x50.p0(new xa4[]{xa4Var, xa4Var2});
                            arrayList3 = (ArrayList) listP0;
                            if (arrayList3.isEmpty()) {
                                vr6.e$default(vr6.INSTANCE, "BillingManager", "Empty in-app items!", null, 4, null);
                                oq0Var = new oq0("Empty in-app items!");
                            } else {
                                it2 = arrayList3.iterator();
                                do {
                                    if (it2.hasNext()) {
                                        next3 = it2.next();
                                    } else {
                                        next3 = null;
                                    }
                                    xa4Var3 = (xa4) next3;
                                    if (xa4Var3 == null) {
                                        it4 = arrayList3.iterator();
                                        while (true) {
                                            if (it4.hasNext()) {
                                                next4 = it4.next();
                                                if (((xa4) next4).isLifetime()) {
                                                    obj = next4;
                                                }
                                            } else {
                                                obj = null;
                                            }
                                        }
                                        xa4Var3 = (xa4) obj;
                                        if (xa4Var3 == null) {
                                            xa4Var3 = (xa4) el1.S0(listP0);
                                        }
                                    }
                                    fm7 fm7Var7 = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                    if (arrayList3.isEmpty()) {
                                        z8 = false;
                                    } else {
                                        it3 = arrayList3.iterator();
                                        do {
                                            if (it3.hasNext()) {
                                                z8 = false;
                                            }
                                        } while (!((xa4) it3.next()).isPurchased());
                                    }
                                    if (!z8) {
                                        vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                        re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                    }
                                    oq0Var = new nq0(fm7Var7, z8);
                                } while (!((xa4) next3).isPurchased());
                                xa4Var3 = (xa4) next3;
                                if (xa4Var3 == null) {
                                    it4 = arrayList3.iterator();
                                    while (true) {
                                        if (it4.hasNext()) {
                                            next4 = it4.next();
                                            if (((xa4) next4).isLifetime()) {
                                                obj = next4;
                                            }
                                        } else {
                                            obj = null;
                                        }
                                    }
                                    xa4Var3 = (xa4) obj;
                                    if (xa4Var3 == null) {
                                        xa4Var3 = (xa4) el1.S0(listP0);
                                    }
                                }
                                fm7 fm7Var8 = new fm7(listP0, sz8.Y(xa4Var3.getItemId()), false, (String) null, 28);
                                if (arrayList3.isEmpty()) {
                                    z8 = false;
                                } else {
                                    it3 = arrayList3.iterator();
                                    do {
                                        if (it3.hasNext()) {
                                            z8 = false;
                                        }
                                    } while (!((xa4) it3.next()).isPurchased());
                                }
                                if (!z8) {
                                    vr6.i$default(vr6.INSTANCE, "BillingManager", "None of the items purchased", null, 4, null);
                                    re3.k().d("transactions").d("premium").i(wb6.Companion.m78default()).getClass();
                                }
                                oq0Var = new nq0(fm7Var8, z8);
                            }
                        }
                    }
                    break;
                    arrayList = null;
                    if (arrayList != null) {
                        wq0.d("SKUs", "Unable to get purchase plans from Firebase server.\n\nPlease disable your ad-blocker or try using a VPN.");
                        oq0Var = new oq0("Unable to get purchase plans from Firebase server.\n\nPlease disable your ad-blocker or try using a VPN.");
                    } else {
                        wq0.d("SKUs", "Unable to get purchase plans from Firebase server.\n\nPlease disable your ad-blocker or try using a VPN.");
                        oq0Var = new oq0("Unable to get purchase plans from Firebase server.\n\nPlease disable your ad-blocker or try using a VPN.");
                    }
                } else {
                    wq0Var.f();
                    oq0Var = mq0.a;
                }
                ex6Var.k(oq0Var);
                return be8Var;
            case 5:
                return dd1._init_$lambda$26();
            case 6:
                return dd1._init_$lambda$12();
            case 7:
                boolean z9 = g42.a;
                return g42.a("AQJJ7BL8tmWv4RdC8T7cnuiyRRwrWPlpTvFYy1OMi++hx/dCJExsQXJbwbQqfUiG0zzC10nuPoUDa80eng==");
            case 8:
                boolean z10 = g42.a;
                return g42.a("AQIr46gruUTxBkeEaMZbSwog9SkLdUwWdtas6Ukgy9DBQ/Tz5mWHIE3HgOwAV1GqOoX0sXO2oZrFz7CiTIP2djl4ieXHLeGx/ze4ukDl1g==");
            case XmlPullParser.COMMENT /* 9 */:
                boolean z11 = g42.a;
                return g42.a("AQJlIWzlh8srP0CxJ+ReT+fjvZCJy+rbFq8vUWzVVsc/RNCJ++HP+tZlqAWpnzPHPVQzg4PhMWOxZqdRl5M23hdG35znYC8NG19DWTXKGzzL2Q==");
            case 10:
                v53.a.b();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                ix6 ix6Var = c64.l;
                return re3.l();
            case 12:
                return re3.k().d("labelsData");
            case 13:
                return nb5.a;
            case 14:
                SwiftApp.Companion companion14 = SwiftApp.d;
                return new q63(SwiftApp.Companion.c().getCacheDir(), "chunked_downloads", 2);
            case 15:
                jq5 jq5Var = nq5.i;
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences != null) {
                        return sharedPreferences.getString("onedrive_access_token", null);
                    }
                    pe4.F("prefs");
                    throw null;
                } catch (ClassCastException unused4) {
                    return null;
                }
            case Argon2.V10 /* 16 */:
                return sz8.Y("android.permission.READ_SMS");
            case 17:
                return new ix6();
            case 18:
                boolean z12 = g42.a;
                return g42.a("AQLtx28gNYXpyMRmKyV9Yo5p9AR04Uvnp5UkmkR5i39N5ky9ky6+MqOz0sCqR1c=");
            case Argon2.V13 /* 19 */:
                return Executors.newSingleThreadExecutor();
            case 20:
                HashSet hashSet = mz6.a;
                return mz6.u("create");
            case 21:
                String str5 = ScheduleService.p;
                tb1 tb1Var = tb1.a;
                String str6 = ScheduleService.p;
                CloudResult cloudResultA = qb1.c().a(false);
                vr6.i$default(vr6.INSTANCE, "CloudClient", "checkConnection (caller:" + str6 + ") - CloudResult=" + cloudResultA, null, 4, null);
                return Boolean.valueOf(cloudResultA instanceof si1);
            case 22:
                gv7 gv7Var = mk7.a;
                String str7 = System.getenv("ANDROID_SECURE_DATA");
                return str7 != null ? new File(str7) : new File("/data/secure");
            case 23:
                try {
                    SwiftApp.Companion companion15 = SwiftApp.d;
                    Signature[] signatureArrE = SwiftApp.Companion.e();
                    if (signatureArrE != null) {
                        Signature signature = signatureArrE.length == 0 ? null : signatureArrE[0];
                        if (signature != null) {
                            strValueOf = String.valueOf(signature.hashCode());
                        }
                    }
                    return Boolean.valueOf(pe4.d(strValueOf, "566270172"));
                } catch (Exception e) {
                    throw new IgnoredException(e);
                }
            case 24:
                gt7 gt7Var = gt7.a;
                return new ba5(new ea5((OkHttpClient) gt7.c.getValue()));
            default:
                return Boolean.valueOf(V._get_a_$lambda$0());
        }
    }
}
