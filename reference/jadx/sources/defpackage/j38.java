package defpackage;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j38 implements Parcelable {
    public static final Parcelable.Creator<j38> CREATOR = new m8(16);
    public final int a;
    public int b;
    public int c;
    public int d;
    public int e;

    public j38(int i, int i2, int i3, int i4) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.a = i4;
        this.e = i >= 12 ? 1 : 0;
    }

    public static String c(Resources resources, CharSequence charSequence, String str) {
        try {
            return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final int e() {
        int i = this.b;
        if (this.a == 1) {
            return i % 24;
        }
        if (i % 12 == 0) {
            return 12;
        }
        return this.e == 1 ? i - 12 : i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j38)) {
            return false;
        }
        j38 j38Var = (j38) obj;
        return this.b == j38Var.b && this.c == j38Var.c && this.a == j38Var.a && this.d == j38Var.d;
    }

    public final void g(int i) {
        if (this.a == 1) {
            this.b = i;
        } else {
            this.b = (i % 12) + (this.e != 1 ? 0 : 12);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d)});
    }

    public final void l(int i) {
        this.c = i % 60;
    }

    public final void m(int i) {
        if (i != this.e) {
            this.e = i;
            int i2 = this.b;
            if (i2 < 12 && i == 1) {
                this.b = i2 + 12;
            } else {
                if (i2 < 12 || i != 0) {
                    return;
                }
                this.b = i2 - 12;
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.a);
    }

    public j38(int i) {
        this(0, 0, 10, i);
    }
}
