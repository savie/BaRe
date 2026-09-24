package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.z;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km5 implements dc5, ri0, sl0, aj8, h9, dh5, jk8, av7, hu5 {
    public final /* synthetic */ int a;
    public Object b;

    public km5(byte b, int i) {
        this.a = i;
        switch (i) {
            case 6:
                this.b = new String[]{"name"};
                break;
            case 12:
                this.b = new vk9(12);
                break;
            case 18:
                break;
            case Argon2.V13 /* 19 */:
                this.b = ByteBuffer.allocate(4);
                break;
            default:
                this.b = new HashMap();
                break;
        }
    }

    public static km5 k(wu0 wu0Var, int i) throws IOException {
        if (i < 0) {
            c6.f(fz5.j(i, "totalNumberOfValues must be bigger than 0, is "));
            return null;
        }
        int i2 = wu0Var.read() + 1;
        if (i2 == 0) {
            y5.m("Cannot read the size of the encoded tree, unexpected end of stream");
            return null;
        }
        byte[] bArrX = y13.x(wu0Var, i2);
        if (bArrX.length != i2) {
            d6.d();
            return null;
        }
        int[] iArr = new int[i];
        int i3 = 0;
        int iMax = 0;
        for (byte b : bArrX) {
            int i4 = ((b & 240) >> 4) + 1;
            if (i3 + i4 > i) {
                y5.m("Number of values exceeds given total number of values");
                return null;
            }
            int i5 = (b & 15) + 1;
            int i6 = 0;
            while (i6 < i4) {
                iArr[i3] = i5;
                i6++;
                i3++;
            }
            iMax = Math.max(iMax, i5);
        }
        int[] iArr2 = new int[i];
        for (int i7 = 0; i7 < i; i7++) {
            iArr2[i7] = i7;
        }
        int[] iArr3 = new int[i];
        int i8 = 0;
        for (int i9 = 0; i9 < i; i9++) {
            for (int i10 = 0; i10 < i; i10++) {
                if (iArr[i10] == i9) {
                    iArr3[i8] = i9;
                    iArr2[i8] = i10;
                    i8++;
                }
            }
        }
        int[] iArr4 = new int[i];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = i - 1; i14 >= 0; i14--) {
            i11 += i12;
            int i15 = iArr3[i14];
            if (i15 != i13) {
                i12 = 1 << (16 - i15);
                i13 = i15;
            }
            iArr4[iArr2[i14]] = i11;
        }
        km5 km5Var = new km5(iMax);
        for (int i16 = 0; i16 < i; i16++) {
            int i17 = iArr[i16];
            if (i17 > 0) {
                km5Var.j(0, Integer.reverse(iArr4[i16] << 16), i17, i16);
            }
        }
        return km5Var;
    }

    public static String l(String str, m73 m73Var, boolean z) {
        StringBuilder sb = new StringBuilder("lottie_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        String strConcat = m73Var.a;
        if (z) {
            strConcat = ".temp".concat(strConcat);
        }
        sb.append(strConcat);
        return sb.toString();
    }

    @Override // defpackage.ri0
    public void a(ty7 ty7Var) {
        AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
        l20 l20Var = appsBatchActivity.m0;
        if (l20Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        List<ji> listL = l20Var.l();
        ArrayList arrayList = new ArrayList(hl1.G0(listL, 10));
        for (ji jiVar : listL) {
            jiVar.getClass();
            arrayList.add(new iz(jiVar));
        }
        int i = 1;
        boolean z = false;
        if (!ty7Var.equals(sy7.f)) {
            if (ty7Var instanceof oy7) {
                oy7 oy7Var = (oy7) ty7Var;
                if (ji8.r(oy7Var.g)) {
                    ny7 ny7Var = oy7Var.h;
                    if (!(ny7Var instanceof ly7)) {
                        if (ny7Var instanceof my7) {
                            if (!((my7) ny7Var).b.isEmpty()) {
                                z = true;
                                break;
                            }
                        } else {
                            q.j();
                            return;
                        }
                    } else if (!listL.isEmpty()) {
                        Iterator it = listL.iterator();
                        while (it.hasNext()) {
                            AppCloudBackups cloudBackups = ((ji) it.next()).getCloudBackups();
                            List listB = ik.b(cloudBackups != null ? cloudBackups.getBackups() : null, (ly7) ny7Var);
                            if (listB != null && !listB.isEmpty()) {
                                z = true;
                                break;
                            }
                        }
                    }
                }
            } else if (!ty7Var.equals(qy7.f) && !(ty7Var instanceof py7)) {
                throw new io5(appsBatchActivity.r() + ": Unhandled taskParams=" + ty7Var + " in onTaskParams()");
            }
        }
        mh mhVar = new mh(i, appsBatchActivity, arrayList, ty7Var);
        if (z) {
            sa1.R(appsBatchActivity, null, mhVar, 1);
        } else {
            mhVar.invoke();
        }
    }

    @Override // defpackage.hu5
    public void b(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Integer num = (Integer) obj;
        if (num == null) {
            return;
        }
        messageDigest.update(bArr);
        synchronized (((ByteBuffer) this.b)) {
            ((ByteBuffer) this.b).position(0);
            messageDigest.update(((ByteBuffer) this.b).putInt(num.intValue()).array());
        }
    }

    @Override // defpackage.av7
    public void c(qc6 qc6Var) {
        wz5 wz5Var = ((wj6) this.b).c;
        ArrayList arrayListC = qc6Var.a.c();
        HashMap mapA = qc6Var.b.a();
        wz5Var.getClass();
        vz5 vz5Var = new vz5(arrayListC, mapA);
        u00 u00Var = wz5Var.y;
        if (u00Var.e()) {
            u00Var.c("unlistening on " + vz5Var, null, new Object[0]);
        }
        tz5 tz5VarF = wz5Var.f(vz5Var);
        if (tz5VarF != null) {
            vz5 vz5Var2 = tz5VarF.b;
            if (wz5Var.a()) {
                HashMap map = new HashMap();
                map.put(JWKParameterNames.RSA_FIRST_PRIME_FACTOR, yc9.M(vz5Var2.a));
                Long l = tz5VarF.d;
                if (l != null) {
                    map.put(JWKParameterNames.RSA_SECOND_PRIME_FACTOR, vz5Var2.b);
                    map.put(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, l);
                }
                wz5Var.n(JWKParameterNames.RSA_MODULUS, false, map, null);
            }
        }
        wz5Var.b();
    }

    @Override // defpackage.ri0
    public void d(List list, List list2, boolean z, boolean z2, cd cdVar) {
        jz jzVar;
        gm gmVar;
        boolean z3;
        List<AppCloudBackup> backups;
        AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
        l20 l20Var = appsBatchActivity.m0;
        if (l20Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        List listL = l20Var.l();
        if (list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : listL) {
                if (!((ji) obj).isBundled()) {
                    arrayList.add(obj);
                }
            }
            listL = arrayList;
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(listL, 10));
        Iterator it = listL.iterator();
        while (true) {
            boolean z4 = true;
            char c = 1;
            if (!it.hasNext()) {
                oj ojVar = new oj(c == true ? 1 : 0, appsBatchActivity, arrayList2, new ry7(z2));
                if (z) {
                    sa1.R(appsBatchActivity, null, ojVar, 1);
                    return;
                } else {
                    ojVar.invoke();
                    return;
                }
            }
            ji jiVar = (ji) it.next();
            boolean z5 = false;
            if (z) {
                AppCloudBackups cloudBackups = jiVar.getCloudBackups();
                AppCloudBackup appCloudBackup = (cloudBackups == null || (backups = cloudBackups.getBackups()) == null) ? null : (AppCloudBackup) el1.U0(backups);
                if (appCloudBackup == null) {
                    f6.g(xs1.j("isCloudRestore is true but we don't have any cloud backups for app: ", jiVar.asString()));
                    return;
                }
                List list3 = jiVar.isBundled() ? list2 : list;
                yu.Companion.getClass();
                yu yuVarA = wu.a();
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z3 = sharedPreferences.getBoolean("restore_special_permissions", true);
                } catch (ClassCastException unused) {
                    z3 = true;
                }
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z5 = sharedPreferences2.getBoolean("restore_ssaids", false);
                } catch (ClassCastException unused2) {
                }
                jzVar = new jz(jiVar, list3, yuVarA, z3, z5, new hk(appCloudBackup.getBackupId(), jiVar.getPackageName(), true), appCloudBackup);
            } else {
                List<gm> localBackups = jiVar.getLocalBackups();
                hk hkVar = (localBackups == null || (gmVar = (gm) el1.U0(localBackups)) == null) ? null : gmVar.a;
                if (hkVar == null) {
                    f6.g(xs1.j("No local backup for app: ", jiVar.asString()));
                    return;
                }
                List list4 = jiVar.isBundled() ? list2 : list;
                yu.Companion.getClass();
                hk hkVar2 = hkVar;
                yu yuVarA2 = wu.a();
                try {
                    SharedPreferences sharedPreferences3 = cz4.f;
                    if (sharedPreferences3 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z4 = sharedPreferences3.getBoolean("restore_special_permissions", true);
                } catch (ClassCastException unused3) {
                }
                try {
                    SharedPreferences sharedPreferences4 = cz4.f;
                    if (sharedPreferences4 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z5 = sharedPreferences4.getBoolean("restore_ssaids", false);
                } catch (ClassCastException unused4) {
                }
                jzVar = new jz(jiVar, list4, yuVarA2, z4, z5, hkVar2, null);
            }
            arrayList2.add(jzVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0042 A[RETURN] */
    @Override // defpackage.dc5
    public boolean e(fc5 fc5Var, MenuItem menuItem) {
        boolean zOnMenuItemSelected;
        r8 r8Var = ((ActionMenuView) this.b).S;
        if (r8Var != null) {
            Toolbar toolbar = (Toolbar) ((s79) r8Var).b;
            Iterator it = ((CopyOnWriteArrayList) toolbar.b0.b).iterator();
            while (it.hasNext()) {
                if (((xc5) it.next()).a(menuItem)) {
                    zOnMenuItemSelected = true;
                    if (zOnMenuItemSelected) {
                        return true;
                    }
                }
            }
            m88 m88Var = toolbar.d0;
            zOnMenuItemSelected = m88Var != null ? ((o88) ((vk9) m88Var).b).f.onMenuItemSelected(0, menuItem) : false;
            if (zOnMenuItemSelected) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.av7
    public void f(qc6 qc6Var, hx7 hx7Var, gd gdVar, gd gdVar2) {
        wz5 wz5Var = ((wj6) this.b).c;
        ArrayList arrayListC = qc6Var.a.c();
        HashMap mapA = qc6Var.b.a();
        Long lValueOf = hx7Var != null ? Long.valueOf(hx7Var.a) : null;
        ro roVar = new ro(this, gdVar2, 12, false);
        HashMap map = wz5Var.p;
        vz5 vz5Var = new vz5(arrayListC, mapA);
        u00 u00Var = wz5Var.y;
        if (u00Var.e()) {
            u00Var.c("Listening on " + vz5Var, null, new Object[0]);
        }
        yc9.D(!map.containsKey(vz5Var), "listen() called twice for same QuerySpec.", new Object[0]);
        if (u00Var.e()) {
            u00Var.c("Adding listen query: " + vz5Var, null, new Object[0]);
        }
        tz5 tz5Var = new tz5(roVar, vz5Var, lValueOf, gdVar);
        map.put(vz5Var, tz5Var);
        if (wz5Var.a()) {
            wz5Var.l(tz5Var);
        }
        wz5Var.b();
    }

    @Override // defpackage.ri0
    public void g(List list, List list2, List list3, boolean z) {
        List<gm> localBackups;
        gm gmVar;
        AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
        l20 l20Var = appsBatchActivity.m0;
        if (l20Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        List<ji> listL = l20Var.l();
        if (list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : listL) {
                if (!((ji) obj).isBundled()) {
                    arrayList.add(obj);
                }
            }
            listL = arrayList;
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(listL, 10));
        for (ji jiVar : listL) {
            hk hkVar = (!z || (localBackups = jiVar.getLocalBackups()) == null || (gmVar = (gm) el1.U0(localBackups)) == null) ? null : gmVar.a;
            List list4 = jiVar.isBundled() ? list2 : list;
            boolean zW = z85.w();
            xp1 xp1VarR = z85.r();
            MultipleBackupStrategy.Companion.getClass();
            arrayList2.add(new hz(jiVar, list4, list3, hkVar, null, zW, xp1VarR, b.c(), ok.d()));
        }
        y10 y10Var = new y10(0, appsBatchActivity, arrayList2, new ky7(2, 0));
        if (list3.contains(q05.CLOUD)) {
            sa1.R(appsBatchActivity, null, y10Var, 1);
        } else {
            y10Var.invoke();
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.b;
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        Map map = (Map) obj;
        z zVar = (z) this.b;
        ArrayList arrayList = new ArrayList(map.values());
        int[] iArr = new int[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
        }
        rr3 rr3Var = (rr3) zVar.F.pollFirst();
        if (rr3Var == null) {
            Log.w("FragmentManager", "No permissions were requested for " + this);
        } else {
            String str = rr3Var.a;
            if (zVar.c.c(str) == null) {
                Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
            }
        }
    }

    @Override // defpackage.sl0
    public void i(hs1 hs1Var) {
        boolean zN = hs1Var.n();
        az3 az3Var = (az3) this.b;
        if (zN) {
            az3Var.k(null, az3Var.w);
            return;
        }
        jq6 jq6Var = az3Var.o;
        if (jq6Var != null) {
            ((oz3) jq6Var.b).a(hs1Var);
        }
    }

    public void j(int i, int i2, int i3, int i4) {
        int[] iArr = (int[]) this.b;
        if (i3 != 0) {
            iArr[i] = -2;
            j((i * 2) + 1 + (i2 & 1), i2 >>> 1, i3 - 1, i4);
        } else if (iArr[i] == -1) {
            iArr[i] = i4;
        } else {
            c6.f(xs1.m(dj7.r(i, "Tree value at index ", " has already been assigned ("), iArr[i], ")"));
        }
    }

    @Override // defpackage.dc5
    public void m(fc5 fc5Var) {
        dc5 dc5Var = ((ActionMenuView) this.b).N;
        if (dc5Var != null) {
            dc5Var.m(fc5Var);
        }
    }

    public pd5 n(Class cls) {
        Method declaredMethod;
        y74[] y74VarArr;
        pd5 pd5Var;
        pd5 pd5Var2 = new pd5();
        pd5Var2.a = new ArrayList();
        pd5Var2.b = (ty4) vm4.m(cls, ty4.class);
        ArrayList arrayList = new ArrayList();
        vm4.o(cls, arrayList);
        int size = arrayList.size();
        Method[] methodArr = new Method[size];
        arrayList.toArray(methodArr);
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Method method = methodArr[i2];
            int i3 = i;
            while (true) {
                if (i3 < size) {
                    Method method2 = methodArr[i3];
                    if (!method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getDeclaringClass().isAssignableFrom(method2.getDeclaringClass()) && method.getName().equals(method2.getName())) {
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        Class<?>[] parameterTypes2 = method2.getParameterTypes();
                        int i4 = i;
                        while (true) {
                            if (i4 < parameterTypes2.length) {
                                if (parameterTypes[i4].equals(parameterTypes2[i4])) {
                                    i4++;
                                }
                            }
                        }
                    }
                    i3++;
                } else {
                    o24 o24Var = (o24) vm4.m(method, o24.class);
                    if (o24Var.enabled() && method != null && vm4.m(method, o24.class) != null) {
                        boolean z = true;
                        if (method.getParameterTypes().length != 1) {
                            System.out.println("Found no or more than one parameter in messageHandler [" + method.getName() + "]. A messageHandler must define exactly one parameter");
                        } else {
                            tx2 tx2Var = (tx2) vm4.m(method, tx2.class);
                            if (tx2Var == null || md5.class.isAssignableFrom(method.getParameterTypes()[i])) {
                                if (tx2Var == null || tx2Var.messages().length != 0) {
                                    Class superclass = cls;
                                    while (true) {
                                        if (superclass.equals(method.getDeclaringClass())) {
                                            declaredMethod = null;
                                            break;
                                        }
                                        try {
                                            declaredMethod = superclass.getDeclaredMethod(method.getName(), method.getParameterTypes());
                                            break;
                                        } catch (NoSuchMethodException unused) {
                                            superclass = superclass.getSuperclass();
                                        }
                                    }
                                    if (declaredMethod != null) {
                                        method = declaredMethod;
                                    }
                                    HashMap map = (HashMap) this.b;
                                    if (o24Var.filters().length == 0) {
                                        y74VarArr = null;
                                        pd5Var = null;
                                    } else {
                                        y74VarArr = new y74[o24Var.filters().length];
                                        qc3[] qc3VarArrFilters = o24Var.filters();
                                        int length = qc3VarArrFilters.length;
                                        int i5 = i;
                                        int i6 = i5;
                                        pd5Var = null;
                                        while (i5 < length) {
                                            qc3 qc3Var = qc3VarArrFilters[i5];
                                            boolean z2 = z;
                                            y74 y74Var = (y74) map.get(qc3Var.value());
                                            if (y74Var == null) {
                                                try {
                                                    y74Var = (y74) qc3Var.value().newInstance();
                                                    map.put(qc3Var.value(), y74Var);
                                                } catch (Exception e) {
                                                    y5.k(e);
                                                    return null;
                                                }
                                            }
                                            y74VarArr[i6] = y74Var;
                                            i6++;
                                            i5++;
                                            z = z2;
                                        }
                                    }
                                    boolean z3 = z;
                                    i = 0;
                                    if (y74VarArr == null) {
                                        y74VarArr = new y74[0];
                                    }
                                    tx2 tx2Var2 = (tx2) vm4.m(method, tx2.class);
                                    Class[] clsArrMessages = tx2Var2 != null ? tx2Var2.messages() : method.getParameterTypes();
                                    method.setAccessible(z3);
                                    HashMap map2 = new HashMap();
                                    map2.put("handler", method);
                                    if (o24Var.condition().length() > 0) {
                                        if (xs2.a == null) {
                                            l0.e("A handler uses an EL filter but no EL implementation is available.");
                                            return pd5Var;
                                        }
                                        y74[] y74VarArr2 = new y74[y74VarArr.length + (z3 ? 1 : 0)];
                                        for (int i7 = 0; i7 < y74VarArr.length; i7++) {
                                            y74VarArr2[i7] = y74VarArr[i7];
                                        }
                                        y74VarArr2[y74VarArr.length] = new ys2();
                                        y74VarArr = y74VarArr2;
                                    }
                                    map2.put("filter", y74VarArr);
                                    String strCondition = o24Var.condition();
                                    if (!strCondition.trim().startsWith("${") && !strCondition.trim().startsWith("#{")) {
                                        strCondition = eq3.k("${", strCondition, "}");
                                    }
                                    map2.put("condition", strCondition);
                                    map2.put("priority", Integer.valueOf(o24Var.priority()));
                                    map2.put("invocation", o24Var.invocation());
                                    map2.put("invocationMode", o24Var.delivery());
                                    map2.put("envelope", Boolean.valueOf(tx2Var2 != null));
                                    map2.put("subtypes", Boolean.valueOf(!o24Var.rejectSubtypes()));
                                    map2.put("listener", pd5Var2);
                                    map2.put("synchronized", Boolean.valueOf(vm4.m(method, ev7.class) != null));
                                    map2.put("messages", clsArrMessages);
                                    pd5Var2.a.add(new nd5(map2));
                                    break;
                                }
                                System.out.println("Message envelope configured but message types defined for handler");
                            } else {
                                System.out.println("Message envelope configured but no subclass of MessageEnvelope found as parameter");
                            }
                        }
                    }
                }
                break;
            }
        }
        return pd5Var2;
    }

    public void o(f80 f80Var, Thread thread, Throwable th) {
        sy1 sy1Var = (sy1) this.b;
        synchronized (sy1Var) {
            String str = "Handling uncaught exception \"" + th + "\" from thread " + thread.getName();
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str, null);
            }
            wx3.v();
            try {
                gi8.a(((o02) sy1Var.e.a).b(new qy1(sy1Var, System.currentTimeMillis(), th, thread, f80Var)));
            } catch (TimeoutException unused) {
                Log.e("FirebaseCrashlytics", "Cannot send reports. Timed out while fetching settings.", null);
            } catch (Exception e) {
                Log.e("FirebaseCrashlytics", "Error handling uncaught exception", e);
            }
        }
    }

    @Override // defpackage.aj8
    public void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        dm3 dm3Var = (dm3) this.b;
        Log.e(dm3Var.b, "onCancelled: ", wc2Var.c());
        dm3Var.i.k(rl3.a);
    }

    @Override // defpackage.aj8
    public void onDataChange(eb2 eb2Var) {
        ex6 ex6Var = ((dm3) this.b).i;
        FolderMetadata folderMetadata = (FolderMetadata) eb2Var.c(FolderMetadata.class);
        if (folderMetadata == null || !folderMetadata.hasBackups()) {
            ex6Var.k(sl3.a);
        } else {
            ex6Var.k(new ol3(folderMetadata));
        }
    }

    public File p() {
        File file = new File(((Context) ((ke) this.b).b).getCacheDir(), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001f  */
    public void q(fh6 fh6Var, mg6 mg6Var, mg6 mg6Var2) {
        boolean zG;
        RecyclerView recyclerView = (RecyclerView) this.b;
        fh6Var.o(false);
        cf2 cf2Var = (cf2) recyclerView.g0;
        if (mg6Var != null) {
            cf2Var.getClass();
            int i = mg6Var.a;
            int i2 = mg6Var2.a;
            if (i == i2 && mg6Var.b == mg6Var2.b) {
                cf2Var.l(fh6Var);
                fh6Var.a.setAlpha(0.0f);
                cf2Var.i.add(fh6Var);
                zG = true;
            } else {
                zG = cf2Var.g(fh6Var, i, mg6Var.b, i2, mg6Var2.b);
            }
        } else {
            cf2Var.l(fh6Var);
            fh6Var.a.setAlpha(0.0f);
            cf2Var.i.add(fh6Var);
            zG = true;
        }
        if (zG) {
            recyclerView.V();
        }
    }

    public void r(fh6 fh6Var, mg6 mg6Var, mg6 mg6Var2) {
        boolean zG;
        RecyclerView recyclerView = (RecyclerView) this.b;
        recyclerView.c.m(fh6Var);
        recyclerView.g(fh6Var);
        fh6Var.o(false);
        cf2 cf2Var = (cf2) recyclerView.g0;
        cf2Var.getClass();
        int i = mg6Var.a;
        int i2 = mg6Var.b;
        View view = fh6Var.a;
        int left = mg6Var2 == null ? view.getLeft() : mg6Var2.a;
        int top = mg6Var2 == null ? view.getTop() : mg6Var2.b;
        if (fh6Var.i() || (i == left && i2 == top)) {
            cf2Var.l(fh6Var);
            cf2Var.h.add(fh6Var);
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = cf2Var.g(fh6Var, i, i2, left, top);
        }
        if (zG) {
            recyclerView.V();
        }
    }

    public int s(hr0 hr0Var) throws IOException {
        int i = 0;
        while (true) {
            int iA = (int) hr0Var.a(1);
            if (iA == -1) {
                return -1;
            }
            int i2 = (i * 2) + 1 + iA;
            int i3 = ((int[]) this.b)[i2];
            if (i3 != -2) {
                if (i3 != -1) {
                    return i3;
                }
                y5.m(dj7.j("The child ", iA, " of node at index ", " is not defined", i));
                return 0;
            }
            i = i2;
        }
    }

    public void t(boolean z) {
        LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) this.b;
        if (z) {
            linearProgressIndicator.setProgress(0);
        } else {
            linearProgressIndicator.setIndeterminate(false);
        }
    }

    public void u(int i) {
        ((LinearProgressIndicator) this.b).setMax(i);
    }

    public void v(int i, boolean z) {
        sz8.b0((LinearProgressIndicator) this.b, i, z);
    }

    public void w() {
        ((LinearProgressIndicator) this.b).setVisibility(8);
    }

    public File x(String str, InputStream inputStream, m73 m73Var) throws IOException {
        File file = new File(p(), l(str, m73Var, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        inputStream.close();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            inputStream.close();
            throw th2;
        }
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        switch (this.a) {
            case 12:
                return new d74((vk9) this.b);
            default:
                return new bm6((Context) this.b, ai5Var.a(Integer.class, AssetFileDescriptor.class));
        }
    }

    public km5(az3 az3Var) {
        this.a = 4;
        Objects.requireNonNull(az3Var);
        this.b = az3Var;
    }

    public km5(Matcher matcher) {
        this.a = 20;
        matcher.getClass();
        this.b = matcher;
    }

    public /* synthetic */ km5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public km5(MaterialCardView materialCardView, MaterialButton materialButton, TextView textView, TextView textView2, TextView textView3) {
        this.a = 13;
        this.b = materialCardView;
    }

    public km5(EditText editText) {
        this.a = 8;
        this.b = new ro(editText);
    }

    public km5(int i) {
        this.a = 5;
        if (i >= 0 && i <= 30) {
            int[] iArr = new int[(int) ((1 << (i + 1)) - 1)];
            Arrays.fill(iArr, -1);
            this.b = iArr;
            return;
        }
        c6.f(fz5.j(i, "depth must be bigger than 0 and not bigger than 30 but is "));
        throw null;
    }
}
