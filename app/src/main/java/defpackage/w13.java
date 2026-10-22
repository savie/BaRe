package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.IOException;
import java.io.Serializable;
import java.security.GeneralSecurityException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class w13 {
    public static ExecutorService b = null;
    public static volatile boolean f = true;
    public static final Object a = new Object();
    public static final char[][] c = {new char[]{'0', '.'}, new char[]{'0', '.', '0'}, new char[]{'0', '.', '0', '0'}, new char[]{'0', '.', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'}, new char[]{'0', '.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'}};
    public static final ma2 d = new ma2(20);
    public static final fo8 e = new fo8(26);

    public static String A(int i, int i2, String str) {
        if (i < 0) {
            return l73.L("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return l73.L("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        c6.f(fz5.j(i2, "negative size: "));
        return null;
    }

    public static Object a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(qj4 qj4Var) {
        qj4 qj4VarU = u(qj4Var);
        Integer numN = n(qj4VarU);
        if (numN != null) {
            throw new ca5(numN.intValue());
        }
        if ((qj4VarU instanceof xi4) && qj4VarU.g().a.size() == 0) {
            throw new ca5(-9);
        }
        if (qj4VarU instanceof kl4) {
            throw new ca5(-1);
        }
        qj4 qj4VarX = qj4VarU.i().x(JWKParameterNames.RSA_EXPONENT);
        if (qj4VarX != null) {
            Integer num = null;
            Object obj = null;
            Object obj2 = null;
            if (qj4VarX instanceof xi4) {
                xi4 xi4VarG = qj4VarX.g();
                ArrayList arrayList = new ArrayList(hl1.G0(xi4VarG, 10));
                for (qj4 qj4Var2 : xi4VarG.a) {
                    qj4Var2.getClass();
                    arrayList.add(Integer.valueOf(c(qj4Var2)));
                }
                for (Object obj3 : arrayList) {
                    if (((Number) obj3).intValue() != 0) {
                        obj = obj3;
                        break;
                    }
                }
                num = (Integer) obj;
            } else if (qj4VarX instanceof fl4) {
                Set setEntrySet = qj4VarX.i().a.entrySet();
                if (((AbstractCollection) setEntrySet).isEmpty()) {
                    throw new ca5(-1);
                }
                ArrayList arrayList2 = new ArrayList(hl1.G0(setEntrySet, 10));
                Iterator it = ((ew4) setEntrySet).iterator();
                while (it.hasNext()) {
                    Object value = ((Map.Entry) it.next()).getValue();
                    value.getClass();
                    arrayList2.add(Integer.valueOf(c((qj4) value)));
                }
                for (Object obj4 : arrayList2) {
                    if (((Number) obj4).intValue() != 0) {
                        obj2 = obj4;
                        break;
                    }
                }
                num = (Integer) obj2;
            } else {
                if (!(qj4VarX instanceof kl4)) {
                    throw new ca5(-1);
                }
                int iC = c(qj4VarX);
                Integer numValueOf = Integer.valueOf(iC);
                if (iC != 0) {
                    num = numValueOf;
                }
            }
            if (num != null) {
                throw new ca5(num.intValue());
            }
        }
    }

    public static final int c(qj4 qj4Var) {
        Object bn6Var;
        if (!(qj4Var instanceof kl4) || !(qj4Var.k().a instanceof Number)) {
            throw new ca5(-1);
        }
        try {
            bn6Var = Integer.valueOf(qj4Var.f());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (en6.a(bn6Var) == null) {
            return ((Number) bn6Var).intValue();
        }
        throw new ca5(-1);
    }

    public static int d(int i, int i2, int i3) {
        int i4 = i2 & ((i >>> i3) ^ i);
        return i ^ (i4 ^ (i4 << i3));
    }

    public static long e(int i, long j, long j2) {
        long j3 = j2 & ((j >>> i) ^ j);
        return (j3 ^ (j3 << i)) ^ j;
    }

    public static lk3 f(zc6 zc6Var, int i) {
        zc6Var.getClass();
        boolean z = zc6Var.e;
        if (!z) {
            return new lk3("Backup", R.string.backup, null, R.drawable.ic_check_circle_outline, i, false, R.string.backup_options, R.drawable.ic_edit_pencil);
        }
        boolean z2 = z && zc6Var.q;
        return new lk3("Restore", z2 ? R.string.restore_from_cloud : R.string.restore, null, R.drawable.ic_restore, i, z2, R.string.restore_options, R.drawable.ic_edit_pencil);
    }

    public static ArrayList g(LabelsData labelsData) {
        ArrayList arrayList;
        LabelParams labelParams;
        Object next;
        Map<String, LabelledApp> labelledAppsMap;
        Collection<LabelledApp> collectionValues;
        Map<String, LabelParams> labelParamsMap;
        Collection<LabelParams> collectionValues2;
        ArrayList arrayList2 = new ArrayList();
        List listV1 = (labelsData == null || (labelParamsMap = labelsData.getLabelParamsMap()) == null || (collectionValues2 = labelParamsMap.values()) == null) ? null : el1.v1(collectionValues2);
        List listV2 = (labelsData == null || (labelledAppsMap = labelsData.getLabelledAppsMap()) == null || (collectionValues = labelledAppsMap.values()) == null) ? null : el1.v1(collectionValues);
        if (listV1 != null && !listV1.isEmpty()) {
            ArrayList<LabelParams> arrayList3 = new ArrayList();
            for (Object obj : listV1) {
                if (y13.s((LabelParams) obj)) {
                    arrayList3.add(obj);
                }
            }
            for (LabelParams labelParams2 : arrayList3) {
                if (listV2 != null) {
                    arrayList = new ArrayList();
                    for (Object obj2 : listV2) {
                        Set<LabelParams> labelParams3 = ((LabelledApp) obj2).getLabelParams();
                        if (labelParams3 != null) {
                            Iterator<T> it = labelParams3.iterator();
                            do {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it.next();
                            } while (!pe4.d(((LabelParams) next).getId(), labelParams2.getId()));
                            labelParams = (LabelParams) next;
                        } else {
                            labelParams = null;
                        }
                        if (labelParams != null) {
                            arrayList.add(obj2);
                        }
                    }
                } else {
                    arrayList = null;
                }
                arrayList2.add(new vq4(labelParams2, arrayList));
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj3 : arrayList2) {
            if (hashSet.add(((vq4) obj3).a())) {
                arrayList4.add(obj3);
            }
        }
        return arrayList4;
    }

    public static boolean h(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static final ox1 i(ox1 ox1Var, ox1 ox1Var2, boolean z) {
        Boolean bool = Boolean.FALSE;
        int i = 2;
        boolean zBooleanValue = ((Boolean) ox1Var.fold(bool, new pc1(i))).booleanValue();
        boolean zBooleanValue2 = ((Boolean) ox1Var2.fold(bool, new pc1(i))).booleanValue();
        if (!zBooleanValue && !zBooleanValue2) {
            return ox1Var.plus(ox1Var2);
        }
        wc1 wc1Var = new wc1(1);
        lv2 lv2Var = lv2.a;
        ox1 ox1Var3 = (ox1) ox1Var.fold(lv2Var, wc1Var);
        Object objFold = ox1Var2;
        if (zBooleanValue2) {
            objFold = ox1Var2.fold(lv2Var, new px1(0));
        }
        return ox1Var3.plus((ox1) objFold);
    }

    public static Drawable j(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f) {
                return m(context2, i, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e2) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e2;
            }
            return context2.getDrawable(i);
        } catch (NoClassDefFoundError unused2) {
            f = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        Resources resources = context2.getResources();
        ThreadLocal threadLocal = fm6.a;
        return resources.getDrawable(i, theme);
    }

    public static ArrayList k(zc6 zc6Var) {
        ArrayList arrayList;
        zc6Var.getClass();
        boolean z = zc6Var.e;
        boolean z2 = z && zc6Var.q;
        if (z2) {
            List<FolderMetadata> listE = sf1.g.e();
            arrayList = new ArrayList(hl1.G0(listE, 10));
            for (FolderMetadata folderMetadata : listE) {
                folderMetadata.getClass();
                arrayList.add(new zk3(folderMetadata.getFolderItem(), folderMetadata.getLatestBackupDate(), null));
            }
        } else {
            List<FolderMetadata> listE2 = pz4.g.e();
            arrayList = new ArrayList(hl1.G0(listE2, 10));
            for (FolderMetadata folderMetadata2 : listE2) {
                folderMetadata2.getClass();
                arrayList.add(new zk3(folderMetadata2.getFolderItem(), folderMetadata2.getLatestBackupDate(), null));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            zk3 zk3Var = (zk3) obj;
            if (z ? zk3Var.a.hasBackup(z2) : zk3Var.a.getSourceFolder().length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static final boolean l(String str) throws IOException {
        str.getClass();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        StringBuilder sb = new StringBuilder();
        int length = lowerCase.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = lowerCase.charAt(i);
            if (Character.isLetterOrDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString().equals("internalerror");
    }

    public static Drawable m(Context context, int i, Resources.Theme theme) {
        if (theme != null) {
            hv1 hv1Var = new hv1(context);
            hv1Var.b = theme;
            hv1Var.a(theme.getResources().getConfiguration());
            context = hv1Var;
        }
        return iz1.m(context, i);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    public static final Integer n(qj4 qj4Var) {
        Integer numValueOf;
        qj4 qj4VarX;
        if ((qj4Var instanceof kl4) && (qj4Var.k().a instanceof Number)) {
            numValueOf = Integer.valueOf(qj4Var.f());
        } else if (!(qj4Var instanceof fl4) || (qj4VarX = qj4Var.i().x("err")) == null) {
            numValueOf = null;
        } else {
            if (!(qj4VarX instanceof kl4) || !(qj4VarX.k().a instanceof Number)) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                numValueOf = Integer.valueOf(qj4VarX.f());
            } else {
                numValueOf = null;
            }
        }
        if (numValueOf == null || numValueOf.intValue() >= 0) {
            return null;
        }
        return numValueOf;
    }

    public static String o(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            c6.f("Invalid input received");
            return null;
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    public static final ox1 p(xx1 xx1Var, ox1 ox1Var) {
        ox1 ox1VarI = i(xx1Var.d(), ox1Var, true);
        rf2 rf2Var = cn2.a;
        return (ox1VarI == rf2Var || ox1VarI.get(lv1.b) != null) ? ox1VarI : ox1VarI.plus(rf2Var);
    }

    public static void q(Class cls, String str) {
        if (str == null) {
            return;
        }
        Log.d("oq", "AppEventSingle requested by ".concat(cls.getSimpleName()));
        ny2.b().e(new oq(str));
    }

    public static void r(Window window, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            h6.f(window, z);
        } else {
            if (i >= 30) {
                h6.e(window, z);
                return;
            }
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    public static final int s(az6 az6Var) {
        boolean z = az6Var.b;
        ?? r0 = z;
        if (az6Var.a) {
            r0 = (z ? 1 : 0) | 2;
        }
        ?? r1 = r0;
        if (az6Var.c) {
            r1 = (r0 == true ? 1 : 0) | 4;
        }
        ?? r2 = r1;
        if (az6Var.d) {
            r2 = (r1 == true ? 1 : 0) | 8;
        }
        ?? r3 = r2;
        if (az6Var.e) {
            r3 = (r2 == true ? 1 : 0) | 16;
        }
        ?? r4 = r3;
        if (az6Var.f) {
            r4 = (r3 == true ? 1 : 0) | 64;
        }
        return az6Var.g ? r4 | 128 : r4;
    }

    public static final yy6 t(IOException iOException, String str) {
        if (iOException instanceof yy6) {
            return (yy6) iOException;
        }
        String message = iOException.getMessage();
        if (message == null) {
            message = "";
        }
        if (!nq7.j0(message)) {
            str = dj7.k(str, ": ", message);
        }
        if (nq7.Z(message, "SBA operation cancelled", false)) {
            return new zz6(str, iOException);
        }
        if (nq7.Z(message, "authentication failed", false) || nq7.Z(message, "zstd decompression failed", false) || nq7.Z(message, "incomplete zstd payload", false) || nq7.Z(message, "truncated compressed SBA payload", false) || nq7.Z(message, "truncated SBA tar payload", false) || nq7.Z(message, "trailing bytes after zstd payload", false) || nq7.Z(message, "zstd decoded byte count mismatch", false) || nq7.Z(message, "zstd payload decoded beyond expected tar size", false)) {
            return new pz6(str, iOException);
        }
        return (uq7.V(message, "unsafe ", false) || nq7.Z(message, "special tar entry", false) || nq7.Z(message, "link target", false)) ? new h27(str, iOException) : new qz6(str, iOException);
    }

    public static final qj4 u(qj4 qj4Var) {
        Object bn6Var;
        if (!(qj4Var instanceof xi4)) {
            return qj4Var;
        }
        ArrayList arrayList = qj4Var.g().a;
        if (arrayList.size() != 2) {
            return qj4Var;
        }
        qj4 qj4Var2 = (qj4) arrayList.get(0);
        qj4Var2.getClass();
        if (!(qj4Var2 instanceof kl4)) {
            return qj4Var;
        }
        kl4 kl4VarK = ((qj4) arrayList.get(0)).k();
        Serializable serializable = kl4VarK.a;
        if (!(serializable instanceof String)) {
            Integer num = null;
            if (serializable instanceof Number) {
                try {
                    bn6Var = Integer.valueOf(kl4VarK.f());
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                num = (Integer) (bn6Var instanceof bn6 ? null : bn6Var);
            }
            if (num == null || num.intValue() != 0) {
                return qj4Var;
            }
        }
        qj4 qj4Var3 = (qj4) arrayList.get(1);
        qj4Var3.getClass();
        return qj4Var3;
    }

    public static final vd8 v(jv1 jv1Var, ox1 ox1Var, Object obj) {
        vd8 vd8Var = null;
        if ((jv1Var instanceof zx1) && ox1Var.get(wd8.a) != null) {
            zx1 callerFrame = (zx1) jv1Var;
            while (!(callerFrame instanceof zm2) && (callerFrame = callerFrame.getCallerFrame()) != null) {
                if (callerFrame instanceof vd8) {
                    vd8Var = (vd8) callerFrame;
                    break;
                }
            }
            if (vd8Var != null) {
                vd8Var.e0(ox1Var, obj);
            }
        }
        return vd8Var;
    }

    public static void w() {
        try {
            if (po9.a()) {
                throw new GeneralSecurityException("Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode");
            }
        } catch (GeneralSecurityException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void x(int i, int i2) {
        String strL;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                strL = l73.L("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    c6.f(fz5.j(i2, "negative size: "));
                    return;
                }
                strL = l73.L("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strL);
        }
    }

    public static void y(int i, int i2) {
        if (i < 0 || i > i2) {
            a6.d(A(i, i2, "index"));
        }
    }

    public static void z(int i, int i2, int i3) {
        String strA;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strA = A(i, i3, "start index");
            } else {
                strA = (i2 < 0 || i2 > i3) ? A(i2, i3, "end index") : l73.L("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }
}
