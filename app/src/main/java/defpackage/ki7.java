package defpackage;

import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ki7 implements Parcelable, jl0 {
    private static final Uri CONTENT_URI;
    private static final String logTag = "SmsItem";

    @zl1("address")
    private String address;

    @zl1("body")
    private String body;

    @zl1("creator")
    private String creator;

    @zl1("date")
    private Long date;

    @zl1("date_sent")
    private Long dateSent;

    @zl1("error_code")
    private Integer errorCode;

    @zl1("locked")
    private Integer locked;

    @zl1("person")
    private Integer person;

    @zl1("protocol")
    private Integer protocol;

    @x14
    private String randomId;

    @zl1("read")
    private Integer read;

    @zl1("reply_path_present")
    private Integer replyPathPresent;

    @zl1("seen")
    private Integer seen;

    @zl1("service_center")
    private String serviceCenter;

    @zl1("status")
    private String status;

    @zl1("subject")
    private String subject;

    @zl1("thread_id")
    private Long threadId;

    @zl1("type")
    private Integer type;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<ki7> CREATOR = new b();

    static {
        Uri uri = Telephony.Sms.CONTENT_URI;
        uri.getClass();
        CONTENT_URI = uri;
    }

    public /* synthetic */ ki7(Integer num, Long l, String str, Long l2, Long l3, Integer num2, Integer num3, String str2, String str3, String str4, Integer num4, Integer num5, Integer num6, String str5, Integer num7, Integer num8, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : l3, (i & 32) != 0 ? null : num2, (i & 64) != 0 ? null : num3, (i & 128) != 0 ? null : str2, (i & 256) != 0 ? null : str3, (i & 512) != 0 ? null : str4, (i & 1024) != 0 ? null : num4, (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : num5, (i & 4096) != 0 ? null : num6, (i & 8192) != 0 ? null : str5, (i & 16384) != 0 ? null : num7, (i & 32768) != 0 ? null : num8, (i & 65536) != 0 ? null : str6);
    }

    public static /* synthetic */ ki7 copy$default(ki7 ki7Var, Integer num, Long l, String str, Long l2, Long l3, Integer num2, Integer num3, String str2, String str3, String str4, Integer num4, Integer num5, Integer num6, String str5, Integer num7, Integer num8, String str6, int i, Object obj) {
        String str7;
        Integer num9;
        Integer num10 = (i & 1) != 0 ? ki7Var.type : num;
        Long l4 = (i & 2) != 0 ? ki7Var.threadId : l;
        String str8 = (i & 4) != 0 ? ki7Var.address : str;
        Long l5 = (i & 8) != 0 ? ki7Var.date : l2;
        Long l6 = (i & 16) != 0 ? ki7Var.dateSent : l3;
        Integer num11 = (i & 32) != 0 ? ki7Var.read : num2;
        Integer num12 = (i & 64) != 0 ? ki7Var.seen : num3;
        String str9 = (i & 128) != 0 ? ki7Var.status : str2;
        String str10 = (i & 256) != 0 ? ki7Var.subject : str3;
        String str11 = (i & 512) != 0 ? ki7Var.body : str4;
        Integer num13 = (i & 1024) != 0 ? ki7Var.person : num4;
        Integer num14 = (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? ki7Var.protocol : num5;
        Integer num15 = (i & 4096) != 0 ? ki7Var.replyPathPresent : num6;
        String str12 = (i & 8192) != 0 ? ki7Var.serviceCenter : str5;
        Integer num16 = num10;
        Integer num17 = (i & 16384) != 0 ? ki7Var.locked : num7;
        Integer num18 = (i & 32768) != 0 ? ki7Var.errorCode : num8;
        if ((i & 65536) != 0) {
            num9 = num18;
            str7 = ki7Var.creator;
        } else {
            str7 = str6;
            num9 = num18;
        }
        return ki7Var.copy(num16, l4, str8, l5, l6, num11, num12, str9, str10, str11, num13, num14, num15, str12, num17, num9, str7);
    }

    public final Integer component1() {
        return this.type;
    }

    public final String component10() {
        return this.body;
    }

    public final Integer component11() {
        return this.person;
    }

    public final Integer component12() {
        return this.protocol;
    }

    public final Integer component13() {
        return this.replyPathPresent;
    }

    public final String component14() {
        return this.serviceCenter;
    }

    public final Integer component15() {
        return this.locked;
    }

    public final Integer component16() {
        return this.errorCode;
    }

    public final String component17() {
        return this.creator;
    }

    public final Long component2() {
        return this.threadId;
    }

    public final String component3() {
        return this.address;
    }

    public final Long component4() {
        return this.date;
    }

    public final Long component5() {
        return this.dateSent;
    }

    public final Integer component6() {
        return this.read;
    }

    public final Integer component7() {
        return this.seen;
    }

    public final String component8() {
        return this.status;
    }

    public final String component9() {
        return this.subject;
    }

    public final ki7 copy(Integer num, Long l, String str, Long l2, Long l3, Integer num2, Integer num3, String str2, String str3, String str4, Integer num4, Integer num5, Integer num6, String str5, Integer num7, Integer num8, String str6) {
        return new ki7(num, l, str, l2, l3, num2, num3, str2, str3, str4, num4, num5, num6, str5, num7, num8, str6);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ki7)) {
            return false;
        }
        ki7 ki7Var = (ki7) obj;
        return pe4.d(this.type, ki7Var.type) && pe4.d(this.threadId, ki7Var.threadId) && pe4.d(this.address, ki7Var.address) && pe4.d(this.date, ki7Var.date) && pe4.d(this.dateSent, ki7Var.dateSent) && pe4.d(this.read, ki7Var.read) && pe4.d(this.seen, ki7Var.seen) && pe4.d(this.status, ki7Var.status) && pe4.d(this.subject, ki7Var.subject) && pe4.d(this.body, ki7Var.body) && pe4.d(this.person, ki7Var.person) && pe4.d(this.protocol, ki7Var.protocol) && pe4.d(this.replyPathPresent, ki7Var.replyPathPresent) && pe4.d(this.serviceCenter, ki7Var.serviceCenter) && pe4.d(this.locked, ki7Var.locked) && pe4.d(this.errorCode, ki7Var.errorCode) && pe4.d(this.creator, ki7Var.creator);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getBody() {
        return this.body;
    }

    @Override // defpackage.jl0
    public ki7 getCopy() {
        ki7 ki7VarCopy$default = copy$default(this, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
        ki7VarCopy$default.randomId = this.randomId;
        return ki7VarCopy$default;
    }

    public final String getCreator() {
        return this.creator;
    }

    public final Long getDate() {
        return this.date;
    }

    public final Long getDateSent() {
        return this.dateSent;
    }

    public final Integer getErrorCode() {
        return this.errorCode;
    }

    @Override // defpackage.jl0
    public String getItemId() {
        String str = this.randomId;
        if (str != null) {
            return str;
        }
        String strI = nh4.d.i(6, true, true);
        this.randomId = strI;
        strI.getClass();
        return strI;
    }

    public final Integer getLocked() {
        return this.locked;
    }

    public final Integer getPerson() {
        return this.person;
    }

    public final Integer getProtocol() {
        return this.protocol;
    }

    public final Integer getRead() {
        return this.read;
    }

    public final Integer getReplyPathPresent() {
        return this.replyPathPresent;
    }

    public final Integer getSeen() {
        return this.seen;
    }

    public final String getServiceCenter() {
        return this.serviceCenter;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getSubject() {
        return this.subject;
    }

    public final Long getThreadId() {
        return this.threadId;
    }

    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.type;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Long l = this.threadId;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.address;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Long l2 = this.date;
        int iHashCode4 = (iHashCode3 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.dateSent;
        int iHashCode5 = (iHashCode4 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Integer num2 = this.read;
        int iHashCode6 = (iHashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.seen;
        int iHashCode7 = (iHashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.status;
        int iHashCode8 = (iHashCode7 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.subject;
        int iHashCode9 = (iHashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.body;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num4 = this.person;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.protocol;
        int iHashCode12 = (iHashCode11 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.replyPathPresent;
        int iHashCode13 = (iHashCode12 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str5 = this.serviceCenter;
        int iHashCode14 = (iHashCode13 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num7 = this.locked;
        int iHashCode15 = (iHashCode14 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.errorCode;
        int iHashCode16 = (iHashCode15 + (num8 == null ? 0 : num8.hashCode())) * 31;
        String str6 = this.creator;
        return iHashCode16 + (str6 != null ? str6.hashCode() : 0);
    }

    public final boolean isInbox() {
        Integer num = this.type;
        return num != null && num.intValue() == 1;
    }

    public final void setAddress(String str) {
        this.address = str;
    }

    public final void setBody(String str) {
        this.body = str;
    }

    public final void setCreator(String str) {
        this.creator = str;
    }

    public final void setDate(Long l) {
        this.date = l;
    }

    public final void setDateSent(Long l) {
        this.dateSent = l;
    }

    public final void setErrorCode(Integer num) {
        this.errorCode = num;
    }

    public final void setLocked(Integer num) {
        this.locked = num;
    }

    public final void setPerson(Integer num) {
        this.person = num;
    }

    public final void setProtocol(Integer num) {
        this.protocol = num;
    }

    public final void setRead(Integer num) {
        this.read = num;
    }

    public final void setReplyPathPresent(Integer num) {
        this.replyPathPresent = num;
    }

    public final void setSeen(Integer num) {
        this.seen = num;
    }

    public final void setServiceCenter(String str) {
        this.serviceCenter = str;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final void setSubject(String str) {
        this.subject = str;
    }

    public final void setThreadId(Long l) {
        this.threadId = l;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public String toString() {
        Integer num = this.type;
        Long l = this.threadId;
        String str = this.address;
        Long l2 = this.date;
        Long l3 = this.dateSent;
        Integer num2 = this.read;
        Integer num3 = this.seen;
        String str2 = this.status;
        String str3 = this.subject;
        String str4 = this.body;
        Integer num4 = this.person;
        Integer num5 = this.protocol;
        Integer num6 = this.replyPathPresent;
        String str5 = this.serviceCenter;
        Integer num7 = this.locked;
        Integer num8 = this.errorCode;
        String str6 = this.creator;
        StringBuilder sb = new StringBuilder("SmsItem(type=");
        sb.append(num);
        sb.append(", threadId=");
        sb.append(l);
        sb.append(", address=");
        sb.append(str);
        sb.append(", date=");
        sb.append(l2);
        sb.append(", dateSent=");
        sb.append(l3);
        sb.append(", read=");
        sb.append(num2);
        sb.append(", seen=");
        sb.append(num3);
        sb.append(", status=");
        sb.append(str2);
        sb.append(", subject=");
        xs1.t(sb, str3, ", body=", str4, ", person=");
        sb.append(num4);
        sb.append(", protocol=");
        sb.append(num5);
        sb.append(", replyPathPresent=");
        sb.append(num6);
        sb.append(", serviceCenter=");
        sb.append(str5);
        sb.append(", locked=");
        sb.append(num7);
        sb.append(", errorCode=");
        sb.append(num8);
        sb.append(", creator=");
        return dj7.n(sb, str6, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        Integer num = this.type;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
        Long l = this.threadId;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        parcel.writeString(this.address);
        Long l2 = this.date;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
        Long l3 = this.dateSent;
        if (l3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l3);
        }
        Integer num2 = this.read;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num2);
        }
        Integer num3 = this.seen;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num3);
        }
        parcel.writeString(this.status);
        parcel.writeString(this.subject);
        parcel.writeString(this.body);
        Integer num4 = this.person;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num4);
        }
        Integer num5 = this.protocol;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num5);
        }
        Integer num6 = this.replyPathPresent;
        if (num6 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num6);
        }
        parcel.writeString(this.serviceCenter);
        Integer num7 = this.locked;
        if (num7 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num7);
        }
        Integer num8 = this.errorCode;
        if (num8 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num8);
        }
        parcel.writeString(this.creator);
    }

    public ki7(Integer num, Long l, String str, Long l2, Long l3, Integer num2, Integer num3, String str2, String str3, String str4, Integer num4, Integer num5, Integer num6, String str5, Integer num7, Integer num8, String str6) {
        this.type = num;
        this.threadId = l;
        this.address = str;
        this.date = l2;
        this.dateSent = l3;
        this.read = num2;
        this.seen = num3;
        this.status = str2;
        this.subject = str3;
        this.body = str4;
        this.person = num4;
        this.protocol = num5;
        this.replyPathPresent = num6;
        this.serviceCenter = str5;
        this.locked = num7;
        this.errorCode = num8;
        this.creator = str6;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Uri getCONTENT_URI() {
            return ki7.CONTENT_URI;
        }

        public final List<ki7> getList() {
            return r92.a(getCONTENT_URI(), ki7.class);
        }

        public final boolean isSmsOnDevice(ki7 ki7Var) {
            ki7Var.getClass();
            try {
                String[] strArr = {String.valueOf(ki7Var.getDate()), String.valueOf(ki7Var.getDateSent()), ki7Var.getAddress(), String.valueOf(ki7Var.getType())};
                SwiftApp.Companion companion = SwiftApp.d;
                Cursor cursorQuery = SwiftApp.Companion.c().getContentResolver().query(getCONTENT_URI(), new String[]{"date", "date_sent", "address", "type"}, "date = ? AND date_sent = ? AND address = ? AND type = ?", strArr, null);
                if (cursorQuery == null) {
                    return false;
                }
                try {
                    boolean z = cursorQuery.getCount() > 0;
                    cursorQuery.close();
                    return z;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(cursorQuery, th);
                        throw th2;
                    }
                }
            } catch (Exception e) {
                vr6.w$default(vr6.INSTANCE, ki7.logTag, "isSmsOnDevice: ".concat(io4.b(e)), null, 4, null);
                return false;
            }
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final ki7 createFromParcel(Parcel parcel) {
            parcel.getClass();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string = parcel.readString();
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf3 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string2 = parcel.readString();
            Long l = lValueOf;
            Long l2 = lValueOf2;
            Long l3 = lValueOf3;
            Integer num = numValueOf2;
            Integer num2 = numValueOf3;
            String string3 = parcel.readString();
            Integer numValueOf4 = null;
            String string4 = parcel.readString();
            Integer numValueOf5 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf6 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf7 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string5 = parcel.readString();
            Integer numValueOf8 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() != 0) {
                numValueOf4 = Integer.valueOf(parcel.readInt());
            }
            return new ki7(numValueOf, l, string, l2, l3, num, num2, string2, string3, string4, numValueOf5, numValueOf6, numValueOf7, string5, numValueOf8, numValueOf4, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final ki7[] newArray(int i) {
            return new ki7[i];
        }
    }

    public ki7() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
    }

    private static /* synthetic */ void getRandomId$annotations() {
    }
}
