package defpackage;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zt1 {

    @zl1("data1")
    private String address;

    @zl1("display_name")
    private String displayName;

    @zl1("_id")
    private long id;

    @zl1("data4")
    private String normalizedNumber;

    @zl1("data1")
    private String phone;

    @zl1("photo_uri")
    private String photoUri;

    public /* synthetic */ zt1(long j, String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5);
    }

    public static /* synthetic */ zt1 copy$default(zt1 zt1Var, long j, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            j = zt1Var.id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = zt1Var.displayName;
        }
        String str6 = str;
        if ((i & 4) != 0) {
            str2 = zt1Var.phone;
        }
        String str7 = str2;
        if ((i & 8) != 0) {
            str3 = zt1Var.normalizedNumber;
        }
        String str8 = str3;
        if ((i & 16) != 0) {
            str4 = zt1Var.photoUri;
        }
        String str9 = str4;
        if ((i & 32) != 0) {
            str5 = zt1Var.address;
        }
        return zt1Var.copy(j2, str6, str7, str8, str9, str5);
    }

    public final long component1() {
        return this.id;
    }

    public final String component2() {
        return this.displayName;
    }

    public final String component3() {
        return this.phone;
    }

    public final String component4() {
        return this.normalizedNumber;
    }

    public final String component5() {
        return this.photoUri;
    }

    public final String component6() {
        return this.address;
    }

    public final zt1 copy(long j, String str, String str2, String str3, String str4, String str5) {
        return new zt1(j, str, str2, str3, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zt1)) {
            return false;
        }
        zt1 zt1Var = (zt1) obj;
        return this.id == zt1Var.id && pe4.d(this.displayName, zt1Var.displayName) && pe4.d(this.phone, zt1Var.phone) && pe4.d(this.normalizedNumber, zt1Var.normalizedNumber) && pe4.d(this.photoUri, zt1Var.photoUri) && pe4.d(this.address, zt1Var.address);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final long getId() {
        return this.id;
    }

    public final String getNormalizedNumber() {
        return this.normalizedNumber;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final Uri getPhotoUri(Context context, String str) {
        Exception exc;
        Cursor cursorQuery;
        context.getClass();
        str.getClass();
        try {
            cursorQuery = context.getContentResolver().query(ContactsContract.Data.CONTENT_URI, null, "contact_id=" + str + " AND mimetype='vnd.android.cursor.item/photo'", null, null);
            if (cursorQuery == null) {
                return null;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return null;
                }
                cursorQuery.close();
                Uri uriWithAppendedId = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.parseLong(str));
                uriWithAppendedId.getClass();
                return Uri.withAppendedPath(uriWithAppendedId, "photo");
            } catch (Exception e) {
                exc = e;
                exc.printStackTrace();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
        } catch (Exception e2) {
            exc = e2;
            cursorQuery = null;
        }
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.id) * 31;
        String str = this.displayName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.phone;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.normalizedNumber;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photoUri;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.address;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setAddress(String str) {
        this.address = str;
    }

    public final void setDisplayName(String str) {
        this.displayName = str;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setNormalizedNumber(String str) {
        this.normalizedNumber = str;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setPhotoUri(String str) {
        this.photoUri = str;
    }

    public String toString() {
        long j = this.id;
        String str = this.displayName;
        String str2 = this.phone;
        String str3 = this.normalizedNumber;
        String str4 = this.photoUri;
        String str5 = this.address;
        StringBuilder sb = new StringBuilder("Contact(id=");
        sb.append(j);
        sb.append(", displayName=");
        sb.append(str);
        xs1.t(sb, ", phone=", str2, ", normalizedNumber=", str3);
        xs1.t(sb, ", photoUri=", str4, ", address=", str5);
        sb.append(")");
        return sb.toString();
    }

    public zt1(long j, String str, String str2, String str3, String str4, String str5) {
        this.id = j;
        this.displayName = str;
        this.phone = str2;
        this.normalizedNumber = str3;
        this.photoUri = str4;
        this.address = str5;
    }

    public zt1() {
        this(0L, null, null, null, null, null, 63, null);
    }

    public final String getPhotoUri() {
        return this.photoUri;
    }
}
