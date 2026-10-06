package defpackage;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xg5 implements Parcelable {
    private String cachedFileName;

    @zl1("chset")
    private String charset;

    @zl1("cd")
    private String contentDisposition;

    @zl1("cid")
    private Integer contentId;

    @zl1("cl")
    private Integer contentLocation;

    @zl1("ctt_s")
    private Integer contentStartType;

    @zl1("ct")
    private String contentType;

    @zl1("ctt_t")
    private String contentTypeType;

    @zl1("_data")
    private Integer dataLocation;

    @zl1("fn")
    private String fileName;

    @zl1("_id")
    private Long id;

    @zl1("mid")
    private Long mid;

    @zl1("name")
    private String name;

    @zl1("seq")
    private Integer seq;

    @zl1("text")
    private String text;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<xg5> CREATOR = new b();
    private static final os4 logTag$delegate = new gv7(new zj(11));

    public /* synthetic */ xg5(Long l, Long l2, Integer num, String str, String str2, String str3, String str4, String str5, Integer num2, Integer num3, Integer num4, String str6, Integer num5, String str7, String str8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : l2, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : num2, (i & 512) != 0 ? null : num3, (i & 1024) != 0 ? null : num4, (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : str6, (i & 4096) != 0 ? null : num5, (i & 8192) != 0 ? null : str7, (i & 16384) != 0 ? null : str8);
    }

    private final String generateFileName() {
        String strI = nh4.d.i(10, true, true);
        strI.getClass();
        return strI;
    }

    private final InputStream getPartInputStream() {
        return (InputStream) io4.j(Companion.getLogTag(), null, false, new xq4(this, 5), 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InputStream getPartInputStream$lambda$0(xg5 xg5Var) {
        Uri partUri = xg5Var.getPartUri();
        if (partUri == null) {
            return null;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        return SwiftApp.Companion.c().getContentResolver().openInputStream(partUri);
    }

    private final boolean isPlainText() {
        String str = this.contentType;
        return str != null && uq7.V(str, "text/plain", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logTag_delegate$lambda$0() {
        return "MmsPartItem";
    }

    public final Long component1() {
        return this.id;
    }

    public final Integer component10() {
        return this.contentLocation;
    }

    public final Integer component11() {
        return this.contentStartType;
    }

    public final String component12() {
        return this.contentTypeType;
    }

    public final Integer component13() {
        return this.dataLocation;
    }

    public final String component14() {
        return this.text;
    }

    public final String component15() {
        return this.cachedFileName;
    }

    public final Long component2() {
        return this.mid;
    }

    public final Integer component3() {
        return this.seq;
    }

    public final String component4() {
        return this.contentType;
    }

    public final String component5() {
        return this.name;
    }

    public final String component6() {
        return this.charset;
    }

    public final String component7() {
        return this.fileName;
    }

    public final String component8() {
        return this.contentDisposition;
    }

    public final Integer component9() {
        return this.contentId;
    }

    public final xg5 copy(Long l, Long l2, Integer num, String str, String str2, String str3, String str4, String str5, Integer num2, Integer num3, Integer num4, String str6, Integer num5, String str7, String str8) {
        return new xg5(l, l2, num, str, str2, str3, str4, str5, num2, num3, num4, str6, num5, str7, str8);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xg5)) {
            return false;
        }
        xg5 xg5Var = (xg5) obj;
        return pe4.d(this.id, xg5Var.id) && pe4.d(this.mid, xg5Var.mid) && pe4.d(this.seq, xg5Var.seq) && pe4.d(this.contentType, xg5Var.contentType) && pe4.d(this.name, xg5Var.name) && pe4.d(this.charset, xg5Var.charset) && pe4.d(this.fileName, xg5Var.fileName) && pe4.d(this.contentDisposition, xg5Var.contentDisposition) && pe4.d(this.contentId, xg5Var.contentId) && pe4.d(this.contentLocation, xg5Var.contentLocation) && pe4.d(this.contentStartType, xg5Var.contentStartType) && pe4.d(this.contentTypeType, xg5Var.contentTypeType) && pe4.d(this.dataLocation, xg5Var.dataLocation) && pe4.d(this.text, xg5Var.text) && pe4.d(this.cachedFileName, xg5Var.cachedFileName);
    }

    public final String getCachedFileName() {
        return this.cachedFileName;
    }

    public final String getCharset() {
        return this.charset;
    }

    public final String getContentDisposition() {
        return this.contentDisposition;
    }

    public final Integer getContentId() {
        return this.contentId;
    }

    public final Integer getContentLocation() {
        return this.contentLocation;
    }

    public final Integer getContentStartType() {
        return this.contentStartType;
    }

    public final String getContentType() {
        return this.contentType;
    }

    public final String getContentTypeType() {
        return this.contentTypeType;
    }

    public final Integer getDataLocation() {
        return this.dataLocation;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final Long getId() {
        return this.id;
    }

    public final Long getMid() {
        return this.mid;
    }

    public final String getName() {
        return this.name;
    }

    public final Uri getPartUri() {
        Long l;
        if (isPlainText() || (l = this.id) == null) {
            return null;
        }
        return Companion.getCONTENT_URI().buildUpon().appendPath(String.valueOf(l.longValue())).build();
    }

    public final Integer getSeq() {
        return this.seq;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        Long l = this.id;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.mid;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Integer num = this.seq;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.contentType;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.charset;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.fileName;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.contentDisposition;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.contentId;
        int iHashCode9 = (iHashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.contentLocation;
        int iHashCode10 = (iHashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.contentStartType;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str6 = this.contentTypeType;
        int iHashCode12 = (iHashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num5 = this.dataLocation;
        int iHashCode13 = (iHashCode12 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str7 = this.text;
        int iHashCode14 = (iHashCode13 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.cachedFileName;
        return iHashCode14 + (str8 != null ? str8.hashCode() : 0);
    }

    public final boolean isImage() {
        String str = this.contentType;
        return str != null && uq7.V(str, "image", false);
    }

    public final boolean isSmil() {
        return pe4.d(this.contentType, "application/smil");
    }

    public final boolean isText() {
        String str = this.contentType;
        return str != null && uq7.V(str, "text", false);
    }

    public final void savePartFileToCache(q63 q63Var, String str) {
        q63Var.getClass();
        if (isPlainText()) {
            return;
        }
        try {
            if (!q63Var.j()) {
                q63.E(q63Var);
            }
            if (str == null || str.length() == 0) {
                str = null;
            }
            if (str == null) {
                str = generateFileName();
            }
            q63 q63VarJ = q63Var.J(str);
            if (q63VarJ.j()) {
                q63VarJ = q63Var.J(generateFileName());
            }
            InputStream partInputStream = getPartInputStream();
            if (partInputStream != null) {
                OutputStream outputStreamF = q63VarJ.F(true);
                try {
                    try {
                        cy0.j(partInputStream, outputStreamF, 262144);
                        outputStreamF.close();
                        partInputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(outputStreamF, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        rs9.c(partInputStream, th3);
                        throw th4;
                    }
                }
            }
            if (!q63VarJ.j() || q63VarJ.A() <= 0) {
                return;
            }
            this.cachedFileName = q63VarJ.p();
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, Companion.getLogTag(), "savePartFileToCache: ".concat(yc9.g0(e)), null, 4, null);
        }
    }

    public final void setCachedFileName(String str) {
        this.cachedFileName = str;
    }

    public final void setCharset(String str) {
        this.charset = str;
    }

    public final void setContentDisposition(String str) {
        this.contentDisposition = str;
    }

    public final void setContentId(Integer num) {
        this.contentId = num;
    }

    public final void setContentLocation(Integer num) {
        this.contentLocation = num;
    }

    public final void setContentStartType(Integer num) {
        this.contentStartType = num;
    }

    public final void setContentType(String str) {
        this.contentType = str;
    }

    public final void setContentTypeType(String str) {
        this.contentTypeType = str;
    }

    public final void setDataLocation(Integer num) {
        this.dataLocation = num;
    }

    public final void setFileName(String str) {
        this.fileName = str;
    }

    public final void setId(Long l) {
        this.id = l;
    }

    public final void setMid(Long l) {
        this.mid = l;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setSeq(Integer num) {
        this.seq = num;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public String toString() {
        Long l = this.id;
        Long l2 = this.mid;
        Integer num = this.seq;
        String str = this.contentType;
        String str2 = this.name;
        String str3 = this.charset;
        String str4 = this.fileName;
        String str5 = this.contentDisposition;
        Integer num2 = this.contentId;
        Integer num3 = this.contentLocation;
        Integer num4 = this.contentStartType;
        String str6 = this.contentTypeType;
        Integer num5 = this.dataLocation;
        String str7 = this.text;
        String str8 = this.cachedFileName;
        StringBuilder sb = new StringBuilder("MmsPartItem(id=");
        sb.append(l);
        sb.append(", mid=");
        sb.append(l2);
        sb.append(", seq=");
        sb.append(num);
        sb.append(", contentType=");
        sb.append(str);
        sb.append(", name=");
        xs1.t(sb, str2, ", charset=", str3, ", fileName=");
        xs1.t(sb, str4, ", contentDisposition=", str5, ", contentId=");
        sb.append(num2);
        sb.append(", contentLocation=");
        sb.append(num3);
        sb.append(", contentStartType=");
        sb.append(num4);
        sb.append(", contentTypeType=");
        sb.append(str6);
        sb.append(", dataLocation=");
        sb.append(num5);
        sb.append(", text=");
        sb.append(str7);
        sb.append(", cachedFileName=");
        return dj7.n(sb, str8, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        Long l = this.id;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        Long l2 = this.mid;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
        Integer num = this.seq;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
        parcel.writeString(this.contentType);
        parcel.writeString(this.name);
        parcel.writeString(this.charset);
        parcel.writeString(this.fileName);
        parcel.writeString(this.contentDisposition);
        Integer num2 = this.contentId;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num2);
        }
        Integer num3 = this.contentLocation;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num3);
        }
        Integer num4 = this.contentStartType;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num4);
        }
        parcel.writeString(this.contentTypeType);
        Integer num5 = this.dataLocation;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num5);
        }
        parcel.writeString(this.text);
        parcel.writeString(this.cachedFileName);
    }

    public xg5(Long l, Long l2, Integer num, String str, String str2, String str3, String str4, String str5, Integer num2, Integer num3, Integer num4, String str6, Integer num5, String str7, String str8) {
        this.id = l;
        this.mid = l2;
        this.seq = num;
        this.contentType = str;
        this.name = str2;
        this.charset = str3;
        this.fileName = str4;
        this.contentDisposition = str5;
        this.contentId = num2;
        this.contentLocation = num3;
        this.contentStartType = num4;
        this.contentTypeType = str6;
        this.dataLocation = num5;
        this.text = str7;
        this.cachedFileName = str8;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Uri getCONTENT_URI() {
            if (b67.b()) {
                Uri uri = Telephony.Mms.Part.CONTENT_URI;
                uri.getClass();
                return uri;
            }
            Uri uriBuild = Telephony.Mms.CONTENT_URI.buildUpon().appendPath("part").build();
            uriBuild.getClass();
            return uriBuild;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getLogTag() {
            return (String) xg5.logTag$delegate.getValue();
        }

        public final Uri getContentUriForMms(Long l) {
            Uri uriBuild = Telephony.Mms.CONTENT_URI.buildUpon().appendPath(String.valueOf(l)).appendPath("part").build();
            uriBuild.getClass();
            return uriBuild;
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final xg5 createFromParcel(Parcel parcel) {
            parcel.getClass();
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string = parcel.readString();
            Long l = lValueOf2;
            Integer num = numValueOf;
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            Integer numValueOf2 = null;
            String string5 = parcel.readString();
            Integer numValueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf4 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf5 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string6 = parcel.readString();
            if (parcel.readInt() != 0) {
                numValueOf2 = Integer.valueOf(parcel.readInt());
            }
            return new xg5(lValueOf, l, num, string, string2, string3, string4, string5, numValueOf3, numValueOf4, numValueOf5, string6, numValueOf2, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final xg5[] newArray(int i) {
            return new xg5[i];
        }
    }

    public xg5() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
    }
}
