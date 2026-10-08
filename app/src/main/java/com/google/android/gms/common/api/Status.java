package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import defpackage.fn6;
import defpackage.gk;
import defpackage.hs1;
import defpackage.i5;
import defpackage.ib;
import defpackage.x13;
import defpackage.yc9;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Status extends i5 implements fn6, ReflectedParcelable {
    public final int a;
    public final String b;
    public final PendingIntent c;
    public final hs1 d;
    public static final Status e = new Status(0, null, null, null);
    public static final Status f = new Status(14, null, null, null);
    public static final Status k = new Status(8, null, null, null);
    public static final Status n = new Status(15, null, null, null);
    public static final Status p = new Status(16, null, null, null);
    public static final Parcelable.Creator<Status> CREATOR = new gk(11);

    public Status(int i, String str, PendingIntent pendingIntent, hs1 hs1Var) {
        this.a = i;
        this.b = str;
        this.c = pendingIntent;
        this.d = hs1Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.a == status.a && x13.m(this.b, status.b) && x13.m(this.c, status.c) && x13.m(this.d, status.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.a), this.b, this.c, this.d});
    }

    public final boolean n() {
        return this.a <= 0;
    }

    public final String toString() {
        ib ibVar = new ib(this);
        String string = this.b;
        if (string == null) {
            int i = this.a;
            switch (i) {
                case -1:
                    string = "SUCCESS_CACHE";
                    break;
                case 0:
                    string = "SUCCESS";
                    break;
                case 1:
                case XmlPullParser.COMMENT /* 9 */:
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                case 12:
                default:
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 21);
                    sb.append("unknown status code: ");
                    sb.append(i);
                    string = sb.toString();
                    break;
                case 2:
                    string = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    string = "SERVICE_DISABLED";
                    break;
                case 4:
                    string = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    string = "INVALID_ACCOUNT";
                    break;
                case 6:
                    string = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    string = "NETWORK_ERROR";
                    break;
                case 8:
                    string = "INTERNAL_ERROR";
                    break;
                case 10:
                    string = "DEVELOPER_ERROR";
                    break;
                case 13:
                    string = "ERROR";
                    break;
                case 14:
                    string = "INTERRUPTED";
                    break;
                case 15:
                    string = "TIMEOUT";
                    break;
                case Argon2.V10 /* 16 */:
                    string = "CANCELED";
                    break;
                case 17:
                    string = "API_NOT_CONNECTED";
                    break;
                case 18:
                    string = "DEAD_CLIENT";
                    break;
                case Argon2.V13 /* 19 */:
                    string = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    string = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    string = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    string = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        ibVar.b(string, "statusCode");
        ibVar.b(this.c, "resolution");
        return ibVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.v0(parcel, 3, this.c, i);
        yc9.v0(parcel, 4, this.d, i);
        yc9.G0(parcel, iF0);
    }

    @Override // defpackage.fn6
    public final Status getStatus() {
        return this;
    }
}
