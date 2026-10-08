package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.a;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata;
import org.swiftapps.swiftbackup.apptasks.AppsWorkingDir;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class jm1 implements aw2 {
    public static final du9 c;
    public static final du9 d;
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final w96 e = new w96();
    public static final cz4 f = new cz4(23);

    static {
        int i = 2;
        c = new du9("REMOVED_TASK", i);
        d = new du9("CLOSED_EMPTY", i);
    }

    public static boolean A(CharSequence charSequence) {
        int length = charSequence == null ? 0 : charSequence.length();
        if (length == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean B() {
        if (Build.PRODUCT.contains("sdk")) {
            return true;
        }
        String str = Build.HARDWARE;
        return str.contains("goldfish") || str.contains("ranchu");
    }

    public static boolean C() {
        boolean zB = B();
        String str = Build.TAGS;
        if ((zB || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !zB && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static final void D(ImageView imageView, String str) {
        imageView.getClass();
        if (str == null || nq7.j0(str)) {
            str = null;
        }
        if (str != null) {
            pk6 pk6VarD = a.c(imageView.getContext()).f(Drawable.class).D(str);
            pk6VarD.getClass();
            ((pk6) pk6VarD.s(so2.b, new b71())).B(imageView);
        } else {
            yk6 yk6VarC = a.c(imageView.getContext());
            yk6VarC.getClass();
            yk6VarC.i(new wk6(imageView));
            imageView.setImageDrawable(null);
        }
    }

    public static JSONObject E(Map map) {
        map.getClass();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            jb9.j((String) entry.getKey(), "map entries must not have null keys");
            jb9.j((String) entry.getValue(), "map entries must not have null values");
            H(jSONObject, (String) entry.getKey(), (String) entry.getValue());
        }
        return jSONObject;
    }

    public static q63 G(long j, String str) {
        q63 q63VarJ = AppsWorkingDir.INSTANCE.getWorkingDir(str, j).J("apk_share");
        q63VarJ.h();
        if (q63.E(q63VarJ)) {
            return q63VarJ;
        }
        g84.f(xs1.i(q63VarJ, "Unable to create APK share directory: "));
        return null;
    }

    public static void H(JSONObject jSONObject, String str, String str2) {
        jb9.j(str, "field must not be null");
        jb9.j(str2, "value must not be null");
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e2) {
            e6.j("JSONException thrown in violation of contract", e2);
        }
    }

    public static void I(JSONObject jSONObject, String str, JSONArray jSONArray) {
        try {
            jSONObject.put(str, jSONArray);
        } catch (JSONException e2) {
            e6.j("JSONException thrown in violation of contract", e2);
        }
    }

    public static void J(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        jb9.j(jSONObject2, "value must not be null");
        try {
            jSONObject.put(str, jSONObject2);
        } catch (JSONException e2) {
            e6.j("JSONException thrown in violation of contract", e2);
        }
    }

    public static void K(JSONObject jSONObject, String str, Uri uri) {
        if (uri == null) {
            return;
        }
        try {
            jSONObject.put(str, uri.toString());
        } catch (JSONException e2) {
            e6.j("JSONException thrown in violation of contract", e2);
        }
    }

    public static void L(JSONObject jSONObject, String str, Long l) {
        if (l == null) {
            return;
        }
        try {
            jSONObject.put(str, l);
        } catch (JSONException e2) {
            e6.j("JSONException thrown in violation of contract", e2);
        }
    }

    public static void M(JSONObject jSONObject, String str, String str2) {
        if (str2 == null) {
            return;
        }
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e2) {
            e6.j("JSONException thrown in violation of contract", e2);
        }
    }

    public static String N(String str) {
        str.getClass();
        return eq3.k("'", uq7.T(uq7.T(str, "\\", "\\\\"), "'", "\\'"), "'");
    }

    public static a90 O(String str, String str2) {
        JSONObject jSONObject = new JSONObject(str);
        if ("authorization".equals(str2)) {
            return e90.b(jSONObject);
        }
        if ("end_session".equals(str2)) {
            return new rw2(l90.e(jSONObject.getJSONObject("configuration")), u(jSONObject, "id_token_hint"), y(jSONObject, "post_logout_redirect_uri"), u(jSONObject, "state"), u(jSONObject, "ui_locales"), w(jSONObject, "additionalParameters"));
        }
        c6.f("No AuthorizationManagementRequest found matching to this json schema");
        return null;
    }

    public static TypedValue P(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean Q(Context context, int i, boolean z) {
        return R(context.getTheme(), i, z);
    }

    public static boolean R(Resources.Theme theme, int i, boolean z) {
        TypedValue typedValueP = P(theme, i);
        if (typedValueP == null || typedValueP.type != 18) {
            return z;
        }
        return typedValueP.data != 0;
    }

    public static int S(Context context) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValueP = P(theme, R.attr.minTouchTargetSize);
        float dimension = (typedValueP == null || typedValueP.type != 5) ? Float.NaN : typedValueP.getDimension(theme.getResources().getDisplayMetrics());
        return Float.isNaN(dimension) ? (int) context.getResources().getDimension(R.dimen.mtrl_min_touch_target_size) : (int) dimension;
    }

    public static TypedValue T(int i, Context context, String str) {
        TypedValue typedValueP = P(context.getTheme(), i);
        if (typedValueP != null) {
            return typedValueP;
        }
        l0.i("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", new Object[]{str, context.getResources().getResourceName(i)});
        return null;
    }

    public static TypedValue U(View view, int i) {
        return T(i, view.getContext(), view.getClass().getCanonicalName());
    }

    public static String V(ji jiVar) {
        String name = jiVar.getName();
        if (nq7.j0(name)) {
            name = null;
        }
        if (name == null) {
            name = jiVar.getPackageName();
        }
        Locale locale = Locale.US;
        String strQ = dj7.q(locale, name, locale);
        Pattern patternCompile = Pattern.compile("[^a-z0-9._-]+");
        patternCompile.getClass();
        String strReplaceAll = patternCompile.matcher(strQ).replaceAll("_");
        strReplaceAll.getClass();
        String strI0 = nq7.I0(strReplaceAll, '_');
        String str = nq7.j0(strI0) ? null : strI0;
        return str == null ? jiVar.getPackageName() : str;
    }

    public static String W(String str) {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes);
            return z(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            Log.e("FirebaseCrashlytics", "Could not create hashing algorithm: SHA-1, returning empty string.", e2);
            return "";
        }
    }

    public static String X(FileInputStream fileInputStream) {
        Scanner scannerUseDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
        try {
            String next = scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : "";
            scannerUseDelimiter.close();
            return next;
        } catch (Throwable th) {
            if (scannerUseDelimiter != null) {
                try {
                    scannerUseDelimiter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static JSONArray Y(Iterable iterable) {
        jb9.j(iterable, "objects cannot be null");
        JSONArray jSONArray = new JSONArray();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().toString());
        }
        return jSONArray;
    }

    public static ArrayList Z(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object objA0 = jSONArray.get(i);
            if (objA0 instanceof JSONArray) {
                objA0 = Z((JSONArray) objA0);
            } else if (objA0 instanceof JSONObject) {
                objA0 = a0((JSONObject) objA0);
            }
            arrayList.add(objA0);
        }
        return arrayList;
    }

    public static final int a(Context context, int i) {
        return tu0.v(i * context.getResources().getDisplayMetrics().density);
    }

    public static HashMap a0(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objA0 = jSONObject.get(next);
            if (objA0 instanceof JSONArray) {
                objA0 = Z((JSONArray) objA0);
            } else if (objA0 instanceof JSONObject) {
                objA0 = a0((JSONObject) objA0);
            }
            map.put(next, objA0);
        }
        return map;
    }

    public static ArrayList b0(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj = jSONArray.get(i);
                obj.getClass();
                arrayList.add(obj.toString());
            }
        }
        return arrayList;
    }

    public static String c0(hg9 hg9Var) {
        StringBuilder sb = new StringBuilder(hg9Var.e());
        for (int i = 0; i < hg9Var.e(); i++) {
            byte bC = hg9Var.c(i);
            if (bC == 34) {
                sb.append("\\\"");
            } else if (bC == 39) {
                sb.append("\\'");
            } else if (bC != 92) {
                switch (bC) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bC < 32 || bC > 126) {
                            sb.append('\\');
                            sb.append((char) (((bC >>> 6) & 3) + 48));
                            sb.append((char) (((bC >>> 3) & 7) + 48));
                            sb.append((char) ((bC & 7) + 48));
                        } else {
                            sb.append((char) bC);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static void d(yn8 yn8Var, ImageView imageView, boolean z, e66 e66Var) {
        imageView.getClass();
        if (yn8Var.a.v().length() == 0) {
            return;
        }
        yk6 yk6VarC = a.c(imageView.getContext());
        pk6 pk6VarD = yk6VarC.f(Drawable.class).D(new oy3(yn8Var));
        pk6VarD.getClass();
        e(pk6VarD, imageView, z, e66Var);
    }

    public static o79 d0(Object obj, long j) {
        o79 o79Var = (o79) q89.m(obj, j);
        if (((b89) o79Var).a) {
            return o79Var;
        }
        b89 b89Var = (b89) o79Var;
        int i = b89Var.c;
        b89 b89VarD = b89Var.d(i == 0 ? 10 : i << 1);
        q89.d(obj, j, b89VarD);
        return b89VarD;
    }

    public static void e(pk6 pk6Var, ImageView imageView, boolean z, e66 e66Var) {
        pk6 pk6Var2 = (pk6) ((pk6) pk6Var.s(so2.c, new e31())).m(e66Var);
        ap2 ap2Var = new ap2();
        ap2Var.a = new tr9(7, false);
        pk6Var2.E(ap2Var);
        if (z) {
            ((pk6) ((pk6) pk6Var.q(new nr5(Long.valueOf(System.currentTimeMillis())))).d(km2.a)).r();
        }
        pk6Var.B(imageView);
    }

    public static String f(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b2)));
        }
        return sb.toString();
    }

    public static synchronized long g(Context context) {
        ActivityManager.MemoryInfo memoryInfo;
        memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static void h(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                Log.e("FirebaseCrashlytics", str, e2);
            }
        }
    }

    public static void i(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] j(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            jArr[i] = iArr[i];
        }
        return jArr;
    }

    public static mx6 k(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            bundle = bundle2;
        }
        if (bundle == null) {
            mx6 mx6Var = new mx6();
            new LinkedHashMap();
            mx6Var.a = new cy6(pv2.a);
            return mx6Var;
        }
        ClassLoader classLoader = mx6.class.getClassLoader();
        classLoader.getClass();
        bundle.setClassLoader(classLoader);
        d65 d65Var = new d65(bundle.size());
        for (String str : bundle.keySet()) {
            str.getClass();
            d65Var.put(str, bundle.get(str));
        }
        d65 d65VarB = d65Var.b();
        mx6 mx6Var2 = new mx6();
        new LinkedHashMap();
        mx6Var2.a = new cy6(d65VarB);
        return mx6Var2;
    }

    /* JADX WARN: Code duplicated, block: B:70:0x0218 A[LOOP:7: B:68:0x0212->B:70:0x0218, LOOP_END] */
    public static rh l(k55 k55Var, final mt3 mt3Var) throws IOException {
        Iterator it;
        long j;
        final long j2;
        ArrayList arrayList;
        long jA = 0;
        if (k55Var instanceof xh) {
            ji jiVar = ((xh) k55Var).k;
            String sourceDir = jiVar.getSourceDir();
            if (sourceDir == null) {
                f6.g(xs1.j("APK path unavailable for ", jiVar.getPackageName()));
                return null;
            }
            q63 q63Var = new q63(sourceDir, 1);
            List<String> splitsUsingWorkaround = jiVar.getSplitsUsingWorkaround();
            if (splitsUsingWorkaround != null) {
                ArrayList arrayList2 = new ArrayList(hl1.G0(splitsUsingWorkaround, 10));
                Iterator<T> it2 = splitsUsingWorkaround.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new q63((String) it2.next(), 1));
                }
                arrayList = new ArrayList();
                for (Object obj : arrayList2) {
                    if (((q63) obj).j()) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            ov2 ov2Var = ov2.a;
            List<q63> list = arrayList;
            if (arrayList == null) {
                list = ov2Var;
            }
            String packageName = jiVar.getPackageName();
            long jA2 = q63Var.A();
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                jA += ((q63) it3.next()).A();
            }
            q63 q63VarG = G(jA2 + jA, packageName);
            String strV = V(jiVar);
            if (list.isEmpty()) {
                q63 q63VarJ = q63VarG.J(strV + ".apk");
                q63Var.d(q63VarJ, null);
                return new rh(q63VarJ, "application/vnd.android.package-archive");
            }
            q63 q63VarJ2 = q63VarG.J(strV + ".apks");
            ApkSharePackageMetadata apkSharePackageMetadata = new ApkSharePackageMetadata(jiVar.getPackageName(), jiVar.getName(), jiVar.getVersionName(), jiVar.getVersionCode(), jiVar.getInstallerPackage(), System.currentTimeMillis(), "Swift Backup", ov2Var);
            List listI = nc8.I(new vh(q63Var, "base.apk", uh.BASE));
            ArrayList arrayList3 = new ArrayList(hl1.G0(list, 10));
            for (q63 q63Var2 : list) {
                arrayList3.add(new vh(q63Var2, q63Var2.p(), uh.SPLIT));
            }
            org.swiftapps.swiftbackup.apkshare.a.c(q63VarJ2, apkSharePackageMetadata, el1.g1(listI, arrayList3));
            return new rh(q63VarJ2, "application/octet-stream");
        }
        if (k55Var instanceof yh) {
            yh yhVar = (yh) k55Var;
            return m(yhVar.k, yhVar.n, null);
        }
        if (!(k55Var instanceof wh)) {
            q.j();
            return null;
        }
        wh whVar = (wh) k55Var;
        AppCloudBackup appCloudBackup = whVar.n;
        ji jiVar2 = whVar.k;
        CloudMetadata metadata = appCloudBackup.getMetadata();
        if (!metadata.hasApk()) {
            c6.f("Cloud backup does not contain an APK");
            return null;
        }
        hk hkVar = new hk(appCloudBackup.getBackupId(), jiVar2.getPackageName(), true);
        q63.E(hkVar.e());
        q63 q63VarC = hkVar.c();
        q63VarC.getClass();
        String apkLink = metadata.getApkLink();
        apkLink.getClass();
        ArrayList arrayListC0 = fl1.C0(new fo2(apkLink, 1, io4.h(metadata.getApkSize()), q63VarC));
        if (metadata.hasSplitApks()) {
            q63 q63VarC2 = hkVar.C();
            q63VarC2.getClass();
            String splitsLink = metadata.getSplitsLink();
            splitsLink.getClass();
            arrayListC0.add(new fo2(splitsLink, 2, io4.h(metadata.getSplitsSize()), q63VarC2));
        }
        ArrayList<fo2> arrayList4 = new ArrayList();
        for (Object obj2 : arrayListC0) {
            fo2 fo2Var = (fo2) obj2;
            if (!fo2Var.d.j() || fo2Var.d.A() != fo2Var.c) {
                arrayList4.add(obj2);
            }
        }
        if (arrayList4.isEmpty()) {
            it = arrayList4.iterator();
            j = 0;
            while (it.hasNext()) {
                j += ((fo2) it.next()).c;
            }
            j2 = j;
        } else {
            Iterator it4 = arrayList4.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    it = arrayList4.iterator();
                    j = 0;
                    while (it.hasNext()) {
                        j += ((fo2) it.next()).c;
                    }
                    j2 = j;
                } else if (((fo2) it4.next()).c <= 0) {
                    j2 = 0;
                }
            }
        }
        final kh6 kh6Var = new kh6();
        for (final fo2 fo2Var2 : arrayList4) {
            if (mt3Var != null) {
                mt3Var.invoke(new oh(kh6Var.a, j2));
            }
            mt3 mt3Var2 = new mt3() { // from class: th
                @Override // defpackage.mt3
                public final Object invoke(Object obj3) {
                    long jH = io4.h((Long) obj3);
                    if (jH < 0) {
                        jH = 0;
                    }
                    long j3 = fo2Var2.c;
                    Long lValueOf = Long.valueOf(j3);
                    if (j3 <= 0) {
                        lValueOf = null;
                    }
                    if (lValueOf != null) {
                        long jLongValue = lValueOf.longValue();
                        if (jH > jLongValue) {
                            jH = jLongValue;
                        }
                    }
                    mt3 mt3Var3 = mt3Var;
                    if (mt3Var3 != null) {
                        mt3Var3.invoke(new oh(kh6Var.a + jH, j2));
                    }
                    return be8.a;
                }
            };
            if (!fo2Var2.d.j() || fo2Var2.d.A() != fo2Var2.c) {
                tb1 tb1Var = tb1.a;
                no2 no2VarC = qb1.c().c(fo2Var2);
                try {
                    no2VarC.f = mt3Var2;
                    ke keVarB = no2VarC.b();
                    if (!keVarB.e()) {
                        throw new IllegalStateException(keVarB.b().toString());
                    }
                    no2VarC.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(no2VarC, th);
                        throw th2;
                    }
                }
            }
            long j3 = kh6Var.a;
            long j4 = fo2Var2.c;
            if (j4 < 0) {
                j4 = 0;
            }
            long j5 = j3 + j4;
            kh6Var.a = j5;
            if (mt3Var != null) {
                mt3Var.invoke(new oh(j5, j2));
            }
        }
        if (mt3Var != null) {
            mt3Var.invoke(ph.a);
        }
        return m(jiVar2, hkVar, metadata);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e7  */
    public static rh m(ji jiVar, hk hkVar, CloudMetadata cloudMetadata) {
        String name;
        String versionName;
        Long versionCode;
        String installerPackage;
        if (!hkVar.c().j()) {
            f6.g(xs1.i(hkVar.c(), "Backup APK does not exist: "));
            return null;
        }
        LocalMetadata localMetadataU = hkVar.u();
        q63 q63VarC = hkVar.C();
        if (!(cloudMetadata != null ? cloudMetadata.hasSplitApks() : q63VarC.j())) {
            q63VarC = null;
        }
        if (q63VarC == null || !q63VarC.j()) {
            q63VarC = null;
        }
        q63 q63VarG = G(io4.h(q63VarC != null ? Long.valueOf(q63VarC.A()) : null) + hkVar.c().A(), jiVar.getPackageName());
        String strV = V(jiVar);
        if (q63VarC == null) {
            q63 q63VarJ = q63VarG.J(strV + ".apk");
            hkVar.c().d(q63VarJ, null);
            return new rh(q63VarJ, "application/vnd.android.package-archive");
        }
        q63 q63VarJ2 = q63VarG.J("splits");
        if (!q63.E(q63VarJ2)) {
            l0.e("Unable to create splits export directory");
            return null;
        }
        if (!ky.a(q63VarC, q63VarJ2, new b7(3), null)) {
            l0.e("Unable to extract split APK backup");
            return null;
        }
        ArrayList arrayListC = q63VarJ2.C(new sh(0));
        List<q63> listN1 = arrayListC != null ? el1.n1(arrayListC, new xg(1)) : null;
        ov2 ov2Var = ov2.a;
        if (listN1 == null) {
            listN1 = ov2Var;
        }
        if (listN1.isEmpty()) {
            c6.f("Split APK backup did not contain APK files");
            return null;
        }
        q63 q63VarJ3 = q63VarG.J(strV + ".apks");
        String packageName = jiVar.getPackageName();
        if (localMetadataU != null && (name = localMetadataU.getName()) != null) {
            if (nq7.j0(name)) {
                name = null;
            }
            if (name == null) {
                if (cloudMetadata != null) {
                    name = cloudMetadata.getName();
                } else {
                    name = jiVar.getName();
                }
            }
        } else if (cloudMetadata != null) {
            name = cloudMetadata.getName();
        } else {
            name = jiVar.getName();
        }
        String str = name;
        if (localMetadataU == null || (versionName = localMetadataU.getVersionName()) == null) {
            versionName = cloudMetadata != null ? cloudMetadata.getVersionName() : null;
            if (versionName == null) {
                versionName = jiVar.getVersionName();
            }
        }
        String str2 = versionName;
        if (localMetadataU == null || (versionCode = localMetadataU.getVersionCode()) == null) {
            versionCode = cloudMetadata != null ? cloudMetadata.getVersionCode() : null;
            if (versionCode == null) {
                versionCode = jiVar.getVersionCode();
            }
        }
        ApkSharePackageMetadata apkSharePackageMetadata = new ApkSharePackageMetadata(packageName, str, str2, versionCode, (localMetadataU == null || (installerPackage = localMetadataU.getInstallerPackage()) == null) ? cloudMetadata != null ? cloudMetadata.getInstallerPackage() : null : installerPackage, System.currentTimeMillis(), "Swift Backup", ov2Var);
        List listI = nc8.I(new vh(hkVar.c(), "base.apk", uh.BASE));
        ArrayList arrayList = new ArrayList(hl1.G0(listN1, 10));
        for (q63 q63Var : listN1) {
            arrayList.add(new vh(q63Var, q63Var.p(), uh.SPLIT));
        }
        org.swiftapps.swiftbackup.apkshare.a.c(q63VarJ3, apkSharePackageMetadata, el1.g1(listI, arrayList));
        return new rh(q63VarJ3, "application/octet-stream");
    }

    public static JSONObject o(JSONObject jSONObject, String str) throws JSONException {
        jb9.j(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject;
        }
        throw new JSONException(eq3.k("field \"", str, "\" is mapped to a null value"));
    }

    public static Long p(JSONObject jSONObject, String str) {
        jb9.j(jSONObject, "json must not be null");
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        try {
            return Long.valueOf(jSONObject.getLong(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static int s(Context context, String str, String str2) {
        String packageName;
        Resources resources = context.getResources();
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                packageName = context.getResources().getResourcePackageName(i);
                if ("android".equals(packageName)) {
                    packageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
                packageName = context.getPackageName();
            }
        } else {
            packageName = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, packageName);
    }

    public static String t(JSONObject jSONObject, String str) throws JSONException {
        jb9.j(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            throw new JSONException(eq3.k("field \"", str, "\" not found in json object"));
        }
        String string = jSONObject.getString(str);
        if (string != null) {
            return string;
        }
        throw new JSONException(eq3.k("field \"", str, "\" is mapped to a null value"));
    }

    public static String u(JSONObject jSONObject, String str) throws JSONException {
        jb9.j(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            return null;
        }
        String string = jSONObject.getString(str);
        if (string != null) {
            return string;
        }
        throw new JSONException(eq3.k("field \"", str, "\" is mapped to a null value"));
    }

    public static ArrayList v(JSONObject jSONObject, String str) throws JSONException {
        if (!jSONObject.has(str)) {
            return null;
        }
        JSONArray jSONArray = jSONObject.getJSONArray(str);
        if (jSONArray != null) {
            return b0(jSONArray);
        }
        throw new JSONException(eq3.k("field \"", str, "\" is mapped to a null value"));
    }

    public static LinkedHashMap w(JSONObject jSONObject, String str) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        jb9.j(jSONObject, "json must not be null");
        if (jSONObject.has(str)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject2.getString(next);
                jb9.j(string, "additional parameter values must not be null");
                linkedHashMap.put(next, string);
            }
        }
        return linkedHashMap;
    }

    public static Uri x(JSONObject jSONObject, String str) throws JSONException {
        jb9.j(jSONObject, "json must not be null");
        String string = jSONObject.getString(str);
        if (string != null) {
            return Uri.parse(string);
        }
        throw new JSONException(eq3.k("field \"", str, "\" is mapped to a null value"));
    }

    public static Uri y(JSONObject jSONObject, String str) throws JSONException {
        jb9.j(jSONObject, "json must not be null");
        if (!jSONObject.has(str)) {
            return null;
        }
        String string = jSONObject.getString(str);
        if (string != null) {
            return Uri.parse(string);
        }
        throw new JSONException(eq3.k("field \"", str, "\" is mapped to a null value"));
    }

    public static String z(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = a;
            cArr[i2] = cArr2[(b2 & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public abstract void F();

    public abstract boolean b(int i, int i2);

    public abstract boolean c(int i, int i2);

    public abstract int q();

    public abstract int r();

    public void n(int i, int i2) {
    }
}
