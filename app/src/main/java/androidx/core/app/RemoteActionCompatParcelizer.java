package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.ak8;
import defpackage.bk8;
import defpackage.zj8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(zj8 zj8Var) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        bk8 bk8VarG = remoteActionCompat.a;
        boolean z = true;
        if (zj8Var.e(1)) {
            bk8VarG = zj8Var.g();
        }
        remoteActionCompat.a = (IconCompat) bk8VarG;
        CharSequence charSequence = remoteActionCompat.b;
        if (zj8Var.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((ak8) zj8Var).e);
        }
        remoteActionCompat.b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.c;
        if (zj8Var.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((ak8) zj8Var).e);
        }
        remoteActionCompat.c = charSequence2;
        remoteActionCompat.d = (PendingIntent) zj8Var.f(remoteActionCompat.d, 4);
        boolean z2 = remoteActionCompat.e;
        if (zj8Var.e(5)) {
            z2 = ((ak8) zj8Var).e.readInt() != 0;
        }
        remoteActionCompat.e = z2;
        boolean z3 = remoteActionCompat.f;
        if (!zj8Var.e(6)) {
            z = z3;
        } else if (((ak8) zj8Var).e.readInt() == 0) {
            z = false;
        }
        remoteActionCompat.f = z;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, zj8 zj8Var) {
        zj8Var.getClass();
        IconCompat iconCompat = remoteActionCompat.a;
        zj8Var.h(1);
        zj8Var.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        zj8Var.h(2);
        Parcel parcel = ((ak8) zj8Var).e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.c;
        zj8Var.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.d;
        zj8Var.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z = remoteActionCompat.e;
        zj8Var.h(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f;
        zj8Var.h(6);
        parcel.writeInt(z2 ? 1 : 0);
    }
}
