package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qx implements Parcelable {
    private final long apkSize;
    private final long cacheSize;
    private final long dataSize;

    @x14
    private final os4 dataSizeNoCache$delegate;
    private final long deDataCacheSize;
    private final long deDataSize;

    @x14
    private final os4 deDataSizeNoCache$delegate;
    private final long externalCacheSize;
    private final long externalDataSize;

    @x14
    private final os4 externalDataSizeNoCache$delegate;
    private final long externalObbSize;

    @x14
    private final os4 hasExternalData$delegate;

    @x14
    private final os4 hasMedia$delegate;
    private final long mediaSize;
    private final long sharedLibsSize;
    private final long splitApksSize;

    @x14
    private final os4 total$delegate;

    @x14
    private final os4 totalSizeString$delegate;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<qx> CREATOR = new b();

    public qx(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11) {
        this.apkSize = j;
        this.splitApksSize = j2;
        this.sharedLibsSize = j3;
        this.dataSize = j4;
        this.cacheSize = j5;
        this.deDataSize = j6;
        this.deDataCacheSize = j7;
        this.externalDataSize = j8;
        this.externalCacheSize = j9;
        this.mediaSize = j10;
        this.externalObbSize = j11;
        this.dataSizeNoCache$delegate = new gv7(new bk(this, 4));
        this.deDataSizeNoCache$delegate = new gv7(new ck(this, 6));
        this.externalDataSizeNoCache$delegate = new gv7(new dk(this, 7));
        this.totalSizeString$delegate = new gv7(new ek(this, 7));
        this.total$delegate = new gv7(new ah(this, 7));
        this.hasExternalData$delegate = new gv7(new bh(this, 7));
        this.hasMedia$delegate = new gv7(new d76(this, 4));
    }

    public static /* synthetic */ qx copy$default(qx qxVar, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, int i, Object obj) {
        long j12;
        long j13;
        long j14 = (i & 1) != 0 ? qxVar.apkSize : j;
        long j15 = (i & 2) != 0 ? qxVar.splitApksSize : j2;
        long j16 = (i & 4) != 0 ? qxVar.sharedLibsSize : j3;
        long j17 = (i & 8) != 0 ? qxVar.dataSize : j4;
        long j18 = (i & 16) != 0 ? qxVar.cacheSize : j5;
        long j19 = (i & 32) != 0 ? qxVar.deDataSize : j6;
        long j20 = (i & 64) != 0 ? qxVar.deDataCacheSize : j7;
        long j21 = j14;
        long j22 = (i & 128) != 0 ? qxVar.externalDataSize : j8;
        long j23 = (i & 256) != 0 ? qxVar.externalCacheSize : j9;
        long j24 = (i & 512) != 0 ? qxVar.mediaSize : j10;
        if ((i & 1024) != 0) {
            j13 = j24;
            j12 = qxVar.externalObbSize;
        } else {
            j12 = j11;
            j13 = j24;
        }
        return qxVar.copy(j21, j15, j16, j17, j18, j19, j20, j22, j23, j13, j12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long dataSizeNoCache_delegate$lambda$0(qx qxVar) {
        return qxVar.dataSize - qxVar.cacheSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long deDataSizeNoCache_delegate$lambda$0(qx qxVar) {
        return qxVar.deDataSize - qxVar.deDataCacheSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long externalDataSizeNoCache_delegate$lambda$0(qx qxVar) {
        return qxVar.externalDataSize - qxVar.externalCacheSize;
    }

    private final long getDataSizeNoCache() {
        return ((Number) this.dataSizeNoCache$delegate.getValue()).longValue();
    }

    private final long getDeDataSizeNoCache() {
        return ((Number) this.deDataSizeNoCache$delegate.getValue()).longValue();
    }

    private final long getExternalDataSizeNoCache() {
        return ((Number) this.externalDataSizeNoCache$delegate.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasExternalData_delegate$lambda$0(qx qxVar) {
        return qxVar.externalDataSize > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasMedia_delegate$lambda$0(qx qxVar) {
        return qxVar.mediaSize > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String totalSizeString_delegate$lambda$0(qx qxVar) {
        p93 p93Var = p93.a;
        return p93.c(Long.valueOf(qxVar.getTotal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long total_delegate$lambda$0(qx qxVar) {
        return qxVar.apkSize + qxVar.splitApksSize + qxVar.sharedLibsSize + qxVar.dataSize + qxVar.deDataSize + qxVar.externalDataSize + qxVar.mediaSize + qxVar.externalObbSize;
    }

    public final long component1() {
        return this.apkSize;
    }

    public final long component10() {
        return this.mediaSize;
    }

    public final long component11() {
        return this.externalObbSize;
    }

    public final long component2() {
        return this.splitApksSize;
    }

    public final long component3() {
        return this.sharedLibsSize;
    }

    public final long component4() {
        return this.dataSize;
    }

    public final long component5() {
        return this.cacheSize;
    }

    public final long component6() {
        return this.deDataSize;
    }

    public final long component7() {
        return this.deDataCacheSize;
    }

    public final long component8() {
        return this.externalDataSize;
    }

    public final long component9() {
        return this.externalCacheSize;
    }

    public final qx copy(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11) {
        return new qx(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qx)) {
            return false;
        }
        qx qxVar = (qx) obj;
        return this.apkSize == qxVar.apkSize && this.splitApksSize == qxVar.splitApksSize && this.sharedLibsSize == qxVar.sharedLibsSize && this.dataSize == qxVar.dataSize && this.cacheSize == qxVar.cacheSize && this.deDataSize == qxVar.deDataSize && this.deDataCacheSize == qxVar.deDataCacheSize && this.externalDataSize == qxVar.externalDataSize && this.externalCacheSize == qxVar.externalCacheSize && this.mediaSize == qxVar.mediaSize && this.externalObbSize == qxVar.externalObbSize;
    }

    public final long getApkSize() {
        return this.apkSize;
    }

    public final long getCacheSize() {
        return this.cacheSize;
    }

    public final long getDataSize(boolean z) {
        return z ? this.dataSize : getDataSizeNoCache();
    }

    public final long getDeDataCacheSize() {
        return this.deDataCacheSize;
    }

    public final long getDeDataSize(boolean z) {
        return z ? this.deDataSize : getDeDataSizeNoCache();
    }

    public final long getExtDataSize(boolean z) {
        return z ? this.externalDataSize : getExternalDataSizeNoCache();
    }

    public final long getExternalCacheSize() {
        return this.externalCacheSize;
    }

    public final long getExternalDataSize() {
        return this.externalDataSize;
    }

    public final long getExternalObbSize() {
        return this.externalObbSize;
    }

    public final boolean getHasExternalData() {
        return ((Boolean) this.hasExternalData$delegate.getValue()).booleanValue();
    }

    public final boolean getHasMedia() {
        return ((Boolean) this.hasMedia$delegate.getValue()).booleanValue();
    }

    public final long getMediaSize() {
        return this.mediaSize;
    }

    public final long getSharedLibsSize() {
        return this.sharedLibsSize;
    }

    public final long getSplitApksSize() {
        return this.splitApksSize;
    }

    public final long getTotal() {
        return ((Number) this.total$delegate.getValue()).longValue();
    }

    public final long getTotalApkSize() {
        return this.apkSize + this.splitApksSize + this.sharedLibsSize;
    }

    public final long getTotalCacheSizes() {
        return this.cacheSize + this.deDataCacheSize + this.externalCacheSize;
    }

    public final String getTotalCacheSizesString() {
        p93 p93Var = p93.a;
        return p93.c(Long.valueOf(getTotalCacheSizes()));
    }

    public final long getTotalDataSize(boolean z) {
        return getDeDataSize(z) + getDataSize(z);
    }

    public final long getTotalSize(boolean z) {
        return el1.o1(x50.p0(new Long[]{Long.valueOf(getTotalApkSize()), Long.valueOf(getTotalDataSize(z)), Long.valueOf(getExtDataSize(z)), Long.valueOf(this.mediaSize), Long.valueOf(this.externalObbSize)}));
    }

    public final String getTotalSizeString() {
        return (String) this.totalSizeString$delegate.getValue();
    }

    public final boolean hasSharedLibs() {
        return this.sharedLibsSize > 0;
    }

    public final boolean hasSplits() {
        return this.splitApksSize > 0;
    }

    public int hashCode() {
        return Long.hashCode(this.externalObbSize) + xs1.f(this.mediaSize, xs1.f(this.externalCacheSize, xs1.f(this.externalDataSize, xs1.f(this.deDataCacheSize, xs1.f(this.deDataSize, xs1.f(this.cacheSize, xs1.f(this.dataSize, xs1.f(this.sharedLibsSize, xs1.f(this.splitApksSize, Long.hashCode(this.apkSize) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        long j = this.apkSize;
        long j2 = this.splitApksSize;
        long j3 = this.sharedLibsSize;
        long j4 = this.dataSize;
        long j5 = this.cacheSize;
        long j6 = this.deDataSize;
        long j7 = this.deDataCacheSize;
        long j8 = this.externalDataSize;
        long j9 = this.externalCacheSize;
        long j10 = this.mediaSize;
        long j11 = this.externalObbSize;
        StringBuilder sbT = dj7.t("AppSizeInfo(apkSize=", ", splitApksSize=", j);
        sbT.append(j2);
        fz5.r(sbT, ", sharedLibsSize=", j3, ", dataSize=");
        sbT.append(j4);
        fz5.r(sbT, ", cacheSize=", j5, ", deDataSize=");
        sbT.append(j6);
        fz5.r(sbT, ", deDataCacheSize=", j7, ", externalDataSize=");
        sbT.append(j8);
        fz5.r(sbT, ", externalCacheSize=", j9, ", mediaSize=");
        sbT.append(j10);
        sbT.append(", externalObbSize=");
        sbT.append(j11);
        sbT.append(")");
        return sbT.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeLong(this.apkSize);
        parcel.writeLong(this.splitApksSize);
        parcel.writeLong(this.sharedLibsSize);
        parcel.writeLong(this.dataSize);
        parcel.writeLong(this.cacheSize);
        parcel.writeLong(this.deDataSize);
        parcel.writeLong(this.deDataCacheSize);
        parcel.writeLong(this.externalDataSize);
        parcel.writeLong(this.externalCacheSize);
        parcel.writeLong(this.mediaSize);
        parcel.writeLong(this.externalObbSize);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static final String create$addRootSizePath(List<String> list, String str) {
            if (str != null) {
                if (str.length() <= 0) {
                    str = null;
                }
                if (str != null) {
                    list.add(str);
                    return str;
                }
            }
            return null;
        }

        private static final long create$getRootSize(Map<String, Long> map, String str) {
            Long l;
            Long l2 = null;
            if (str != null && (l = map.get(str)) != null && l.longValue() >= 0) {
                l2 = l;
            }
            return io4.h(l2);
        }

        private static final boolean create$shouldUseRootSize(iu iuVar) {
            mp6 mp6Var = mp6.a;
            return mp6.g || iuVar.getBackupReq() == sk0.ROOT_OR_SHIZUKU;
        }

        /* JADX WARN: Code duplicated, block: B:104:0x0252  */
        /* JADX WARN: Code duplicated, block: B:149:0x0380  */
        /* JADX WARN: Code duplicated, block: B:150:0x0383  */
        /* JADX WARN: Code duplicated, block: B:153:0x038d  */
        /* JADX WARN: Code duplicated, block: B:154:0x0390  */
        /* JADX WARN: Code duplicated, block: B:156:0x0398  */
        /* JADX WARN: Code duplicated, block: B:157:0x039d  */
        /* JADX WARN: Code duplicated, block: B:176:0x0255 A[SYNTHETIC] */
        public final qx create(ji jiVar, boolean z, boolean z2, boolean z3, boolean z4) {
            long jE;
            long jF;
            long j;
            Map mapT0;
            Iterator it;
            pw5 pw5Var;
            Long lY;
            long j2;
            long jF2;
            long jCreate$getRootSize;
            long jCreate$getRootSize2;
            long jF3;
            jiVar.getClass();
            ArrayList arrayList = new ArrayList();
            p93 p93Var = p93.a;
            String sourceDir = jiVar.getSourceDir();
            if (sourceDir == null) {
                sourceDir = "";
            }
            long jF4 = p93Var.f(sourceDir);
            List<String> splitSourceDirs = jiVar.getSplitSourceDirs();
            if (splitSourceDirs == null || splitSourceDirs.isEmpty()) {
                jE = 0;
            } else {
                jE = 0;
                for (String str : splitSourceDirs) {
                    if (!TextUtils.isEmpty(str)) {
                        jE += p93Var.e(new File(str));
                    }
                }
            }
            List<yc7> sharedLibsInfos = jiVar.getSharedLibsInfos();
            if (sharedLibsInfos == null || sharedLibsInfos.isEmpty()) {
                jF = 0;
            } else {
                Iterator<T> it2 = sharedLibsInfos.iterator();
                jF = 0;
                while (it2.hasNext()) {
                    jF += p93.a.f(((yc7) it2.next()).getApkPath());
                }
            }
            String strCreate$addRootSizePath = z ? create$addRootSizePath(arrayList, jiVar.getDataDir()) : null;
            String strCreate$addRootSizePath2 = (z && jiVar.hasDeData()) ? create$addRootSizePath(arrayList, jiVar.getDeDataDir()) : null;
            String strCreate$addRootSizePath3 = z ? create$addRootSizePath(arrayList, new jr7(jiVar.getDataDir(), "cache").getPath()) : null;
            String strCreate$addRootSizePath4 = (z && jiVar.hasDeData()) ? create$addRootSizePath(arrayList, new jr7(jiVar.getDeDataDir(), "cache").getPath()) : null;
            String strCreate$addRootSizePath5 = (z2 && create$shouldUseRootSize(iu.EXTDATA)) ? create$addRootSizePath(arrayList, jiVar.getExternalDataDir()) : null;
            String strCreate$addRootSizePath6 = (z2 && create$shouldUseRootSize(iu.EXTDATA)) ? create$addRootSizePath(arrayList, new jr7(jiVar.getExternalDataDir(), "cache").getPath()) : null;
            String strCreate$addRootSizePath7 = z3 ? create$addRootSizePath(arrayList, jiVar.getMediaDir()) : null;
            String strCreate$addRootSizePath8 = (z4 && create$shouldUseRootSize(iu.EXPANSION)) ? create$addRootSizePath(arrayList, jiVar.getExpansionDir()) : null;
            p93 p93Var2 = p93.a;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                long j3 = jF;
                if (!TextUtils.isEmpty((String) obj)) {
                    arrayList2.add(obj);
                }
                jF = j3;
            }
            long j4 = jF;
            List listP = eq3.p(arrayList2);
            int iQ0 = x65.q0(hl1.G0(listP, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
            Iterator it3 = listP.iterator();
            while (it3.hasNext()) {
                Object next = it3.next();
                Iterator it4 = it3;
                String strT = (String) next;
                g00 g00Var = g00.a;
                if (g00.x()) {
                    boolean z5 = g42.a;
                    strT = uq7.T(strT, g42.a("AQLtx28gNYXpyMRmKyV9Yo5p9AR04Uvnp5UkmkR5i39N5ky9ky6+MqOz0sCqR1c="), g42.a("AQI+UbXNmLang25NUR5B3MdXRksgwAYEcSFFo6ICdtsZiBszQUNh5rw="));
                }
                linkedHashMap.put(next, strT);
                it3 = it4;
                jF4 = jF4;
            }
            long j5 = jF4;
            if (linkedHashMap.isEmpty()) {
                mapT0 = pv2.a;
                j = jE;
            } else {
                String strConcat = "toybox du -sk ".concat(el1.Y0(linkedHashMap.values(), TokenAuthenticationScheme.SCHEME_DELIMITER, null, null, new dq(5), 30));
                List listH = mp6.f() ? mp6.a.h(new String[]{strConcat}, ip6.SHIZUKU) : mp6.l(strConcat);
                ArrayList<pw5> arrayList3 = new ArrayList();
                for (Iterator it5 = listH.iterator(); it5.hasNext(); it5 = it) {
                    String str2 = (String) it5.next();
                    if (str2 != null) {
                        ai6 ai6Var = p93.b;
                        ai6Var.getClass();
                        Matcher matcher = ai6Var.a.matcher(str2);
                        matcher.getClass();
                        it = it5;
                        u75 u75Var = !matcher.find(0) ? null : new u75(matcher, str2);
                        pw5Var = (u75Var == null || (lY = uq7.Y((String) ((s75) u75Var.a()).get(1))) == null) ? null : new pw5(nq7.H0((String) ((s75) u75Var.a()).get(2)).toString(), Long.valueOf(lY.longValue() * 1024));
                        if (pw5Var != null) {
                            arrayList3.add(pw5Var);
                        }
                    } else {
                        it = it5;
                    }
                    if (pw5Var != null) {
                        arrayList3.add(pw5Var);
                    }
                }
                ArrayList arrayList4 = new ArrayList(hl1.G0(arrayList3, 10));
                for (pw5 pw5Var2 : arrayList3) {
                    String strK0 = (String) pw5Var2.a;
                    long jLongValue = ((Number) pw5Var2.b).longValue();
                    LinkedHashMap linkedHashMap2 = linkedHashMap;
                    if (strK0.length() > 1) {
                        strK0 = nq7.K0(strK0, '/');
                    }
                    arrayList4.add(new pw5(strK0, Long.valueOf(jLongValue)));
                    linkedHashMap = linkedHashMap2;
                }
                LinkedHashMap linkedHashMap3 = linkedHashMap;
                Map mapT1 = x65.t0(arrayList4);
                ArrayList arrayList5 = new ArrayList();
                Iterator it6 = linkedHashMap3.entrySet().iterator();
                while (it6.hasNext()) {
                    Map.Entry entry = (Map.Entry) it6.next();
                    String str3 = (String) entry.getKey();
                    String strK1 = (String) entry.getValue();
                    Iterator it7 = it6;
                    long j6 = jE;
                    if (strK1.length() > 1) {
                        strK1 = nq7.K0(strK1, '/');
                    }
                    Long l = (Long) mapT1.get(strK1);
                    pw5 pw5Var3 = l != null ? new pw5(str3, Long.valueOf(l.longValue())) : null;
                    if (pw5Var3 != null) {
                        arrayList5.add(pw5Var3);
                    }
                    it6 = it7;
                    jE = j6;
                }
                j = jE;
                mapT0 = x65.t0(arrayList5);
            }
            long jCreate$getRootSize3 = create$getRootSize(mapT0, strCreate$addRootSizePath);
            long jCreate$getRootSize4 = create$getRootSize(mapT0, strCreate$addRootSizePath2);
            long jCreate$getRootSize5 = create$getRootSize(mapT0, strCreate$addRootSizePath3);
            long jCreate$getRootSize6 = create$getRootSize(mapT0, strCreate$addRootSizePath4);
            if (z2) {
                if (create$shouldUseRootSize(iu.EXTDATA)) {
                    jF2 = create$getRootSize(mapT0, strCreate$addRootSizePath5);
                    j2 = -1;
                } else {
                    j2 = -1;
                    jF2 = p93.a.f(jiVar.getExternalDataDir());
                }
                if (jF2 == j2) {
                    jF2 = 0;
                }
            } else {
                jF2 = 0;
                j2 = -1;
            }
            if (z2) {
                jCreate$getRootSize = create$shouldUseRootSize(iu.EXTDATA) ? create$getRootSize(mapT0, strCreate$addRootSizePath6) : p93.a.f(new q63(jiVar.getExternalDataDir(), "cache", 1).v());
                if (jCreate$getRootSize == j2) {
                }
                if (z3) {
                    jCreate$getRootSize2 = create$getRootSize(mapT0, strCreate$addRootSizePath7);
                    if (jCreate$getRootSize2 == j2) {
                        jCreate$getRootSize2 = 0;
                    }
                } else {
                    jCreate$getRootSize2 = 0;
                }
                if (z4) {
                    if (create$shouldUseRootSize(iu.EXPANSION)) {
                        jF3 = create$getRootSize(mapT0, strCreate$addRootSizePath8);
                    } else {
                        jF3 = p93.a.f(jiVar.getExpansionDir());
                    }
                    if (jF3 == j2) {
                        jF3 = 0;
                    }
                } else {
                    jF3 = 0;
                }
                return new qx(j5, j, j4, jCreate$getRootSize3, jCreate$getRootSize5, jCreate$getRootSize4, jCreate$getRootSize6, jF2, jCreate$getRootSize, jCreate$getRootSize2, jF3);
            }
            jCreate$getRootSize3 = jCreate$getRootSize3;
            jCreate$getRootSize = 0;
            if (z3) {
                jCreate$getRootSize2 = 0;
            } else {
                jCreate$getRootSize2 = create$getRootSize(mapT0, strCreate$addRootSizePath7);
                if (jCreate$getRootSize2 == j2) {
                    jCreate$getRootSize2 = 0;
                }
            }
            if (z4) {
                if (create$shouldUseRootSize(iu.EXPANSION)) {
                    jF3 = create$getRootSize(mapT0, strCreate$addRootSizePath8);
                } else {
                    jF3 = p93.a.f(jiVar.getExpansionDir());
                }
                if (jF3 == j2) {
                    jF3 = 0;
                }
            } else {
                jF3 = 0;
            }
            return new qx(j5, j, j4, jCreate$getRootSize3, jCreate$getRootSize5, jCreate$getRootSize4, jCreate$getRootSize6, jF2, jCreate$getRootSize, jCreate$getRootSize2, jF3);
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final qx createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new qx(parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public final qx[] newArray(int i) {
            return new qx[i];
        }
    }

    public final long getDataSize() {
        return this.dataSize;
    }

    public final long getDeDataSize() {
        return this.deDataSize;
    }

    private static /* synthetic */ void getDataSizeNoCache$annotations() {
    }

    private static /* synthetic */ void getDeDataSizeNoCache$annotations() {
    }

    private static /* synthetic */ void getExternalDataSizeNoCache$annotations() {
    }

    public static /* synthetic */ void getHasExternalData$annotations() {
    }

    public static /* synthetic */ void getHasMedia$annotations() {
    }

    public static /* synthetic */ void getTotal$annotations() {
    }

    public static /* synthetic */ void getTotalSizeString$annotations() {
    }

    public qx() {
        this(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2047, null);
    }

    public /* synthetic */ qx(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 0L : j2, (i & 4) != 0 ? 0L : j3, (i & 8) != 0 ? 0L : j4, (i & 16) != 0 ? 0L : j5, (i & 32) != 0 ? 0L : j6, (i & 64) != 0 ? 0L : j7, (i & 128) != 0 ? 0L : j8, (i & 256) != 0 ? 0L : j9, (i & 512) != 0 ? 0L : j10, (i & 1024) != 0 ? 0L : j11);
    }
}
