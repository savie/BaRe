package defpackage;

import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vg5 implements Parcelable {
    private static final String ORDER_BY_ID = "_id ASC";

    @zl1("address")
    private String address;

    @zl1("charset")
    private Integer charset;

    @zl1("contact_id")
    private Long contactId;

    @zl1("msg_id")
    private Long msgId;

    @zl1("type")
    private Integer type;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<vg5> CREATOR = new b();

    public /* synthetic */ vg5(Long l, Long l2, String str, Integer num, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : l2, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : num2);
    }

    public static /* synthetic */ vg5 copy$default(vg5 vg5Var, Long l, Long l2, String str, Integer num, Integer num2, int i, Object obj) {
        if ((i & 1) != 0) {
            l = vg5Var.msgId;
        }
        if ((i & 2) != 0) {
            l2 = vg5Var.contactId;
        }
        if ((i & 4) != 0) {
            str = vg5Var.address;
        }
        if ((i & 8) != 0) {
            num = vg5Var.type;
        }
        if ((i & 16) != 0) {
            num2 = vg5Var.charset;
        }
        Integer num3 = num2;
        String str2 = str;
        return vg5Var.copy(l, l2, str2, num, num3);
    }

    public final Long component1() {
        return this.msgId;
    }

    public final Long component2() {
        return this.contactId;
    }

    public final String component3() {
        return this.address;
    }

    public final Integer component4() {
        return this.type;
    }

    public final Integer component5() {
        return this.charset;
    }

    public final vg5 copy(Long l, Long l2, String str, Integer num, Integer num2) {
        return new vg5(l, l2, str, num, num2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vg5)) {
            return false;
        }
        vg5 vg5Var = (vg5) obj;
        return pe4.d(this.msgId, vg5Var.msgId) && pe4.d(this.contactId, vg5Var.contactId) && pe4.d(this.address, vg5Var.address) && pe4.d(this.type, vg5Var.type) && pe4.d(this.charset, vg5Var.charset);
    }

    public final String getAddress() {
        return this.address;
    }

    public final Integer getCharset() {
        return this.charset;
    }

    public final Long getContactId() {
        return this.contactId;
    }

    public final Long getMsgId() {
        return this.msgId;
    }

    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        Long l = this.msgId;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.contactId;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.address;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.type;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.charset;
        return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    public final void setAddress(String str) {
        this.address = str;
    }

    public final void setCharset(Integer num) {
        this.charset = num;
    }

    public final void setContactId(Long l) {
        this.contactId = l;
    }

    public final void setMsgId(Long l) {
        this.msgId = l;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public String toString() {
        return "MmsAddressItem(msgId=" + this.msgId + ", contactId=" + this.contactId + ", address=" + this.address + ", type=" + this.type + ", charset=" + this.charset + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        Long l = this.msgId;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        Long l2 = this.contactId;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
        parcel.writeString(this.address);
        Integer num = this.type;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
        Integer num2 = this.charset;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String getLogTag() {
            return "MmsAddressItem";
        }

        public final Uri getContentUriForMms(long j) {
            Uri uriBuild = Telephony.Mms.CONTENT_URI.buildUpon().appendPath(String.valueOf(j)).appendPath("addr").build();
            uriBuild.getClass();
            return uriBuild;
        }

        public final List<vg5> getList(Long l) throws IOException {
            if (l != null) {
                xf5 xf5Var = new xf5();
                Uri contentUriForMms = getContentUriForMms(l.longValue());
                SwiftApp.Companion companion = SwiftApp.d;
                Cursor cursorQuery = SwiftApp.Companion.c().getContentResolver().query(contentUriForMms, null, null, null, vg5.ORDER_BY_ID);
                if (cursorQuery != null) {
                    try {
                        ArrayList arrayListB = xf5Var.b(cursorQuery, vg5.class);
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : arrayListB) {
                            String address = ((vg5) obj).getAddress();
                            if (address != null && address.length() != 0) {
                                arrayList.add(obj);
                            }
                        }
                        cursorQuery.close();
                        return arrayList;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(cursorQuery, th);
                            throw th2;
                        }
                    }
                }
                Log.e(getLogTag(), "Address items not available for mms id " + l);
            }
            return null;
        }

        public final int getPDU_HEADERS_TO() {
            return 151;
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final vg5 createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new vg5(parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final vg5[] newArray(int i) {
            return new vg5[i];
        }
    }

    public vg5(Long l, Long l2, String str, Integer num, Integer num2) {
        this.msgId = l;
        this.contactId = l2;
        this.address = str;
        this.type = num;
        this.charset = num2;
    }

    public vg5() {
        this(null, null, null, null, null, 31, null);
    }
}
