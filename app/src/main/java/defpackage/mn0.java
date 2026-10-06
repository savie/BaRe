package defpackage;

import android.accounts.Account;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mn0 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zU = false;
        int iV = 0;
        int iV2 = 0;
        Intent intent = null;
        String strQ = null;
        String strQ2 = null;
        switch (this.a) {
            case 0:
                nn0 nn0Var = new nn0(parcel);
                nn0Var.a = parcel.readFloat();
                nn0Var.b = parcel.readFloat();
                ArrayList arrayList = new ArrayList();
                nn0Var.c = arrayList;
                parcel.readList(arrayList, Float.class.getClassLoader());
                nn0Var.d = parcel.readFloat();
                nn0Var.e = parcel.createBooleanArray()[0];
                return nn0Var;
            case 1:
                sh3 sh3Var = new sh3(0, 0);
                sh3Var.a = 1;
                sh3Var.b = 0.0f;
                sh3Var.c = 1.0f;
                sh3Var.d = -1;
                sh3Var.e = -1.0f;
                sh3Var.f = -1;
                sh3Var.k = -1;
                sh3Var.n = 16777215;
                sh3Var.p = 16777215;
                sh3Var.a = parcel.readInt();
                sh3Var.b = parcel.readFloat();
                sh3Var.c = parcel.readFloat();
                sh3Var.d = parcel.readInt();
                sh3Var.e = parcel.readFloat();
                sh3Var.f = parcel.readInt();
                sh3Var.k = parcel.readInt();
                sh3Var.n = parcel.readInt();
                sh3Var.p = parcel.readInt();
                sh3Var.q = parcel.readByte() != 0;
                ((ViewGroup.MarginLayoutParams) sh3Var).bottomMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) sh3Var).leftMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) sh3Var).rightMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) sh3Var).topMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) sh3Var).height = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) sh3Var).width = parcel.readInt();
                return sh3Var;
            case 2:
                rr3 rr3Var = new rr3();
                rr3Var.a = parcel.readString();
                rr3Var.b = parcel.readInt();
                return rr3Var;
            case 3:
                x85 x85Var = new x85(parcel);
                x85Var.a = ((Integer) parcel.readValue(x85.class.getClassLoader())).intValue();
                return x85Var;
            case 4:
                parcel.getClass();
                boolean z = parcel.readInt() != 0;
                int i = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i);
                for (int i2 = 0; i2 != i; i2++) {
                    arrayList2.add(FolderItem.CREATOR.createFromParcel(parcel));
                }
                return new h37(arrayList2, z);
            case 5:
                return new l67(parcel);
            case 6:
                int iK0 = jb9.k0(parcel);
                int iV3 = 0;
                while (parcel.dataPosition() < iK0) {
                    int i3 = parcel.readInt();
                    char c = (char) i3;
                    if (c == 1) {
                        iV2 = jb9.V(parcel, i3);
                    } else if (c == 2) {
                        iV3 = jb9.V(parcel, i3);
                    } else if (c != 3) {
                        jb9.e0(parcel, i3);
                    } else {
                        intent = (Intent) jb9.p(parcel, i3, Intent.CREATOR);
                    }
                }
                jb9.x(parcel, iK0);
                return new x09(iV2, iV3, intent);
            case 7:
                int iK1 = jb9.k0(parcel);
                Account account = null;
                GoogleSignInAccount googleSignInAccount = null;
                int iV4 = 0;
                while (parcel.dataPosition() < iK1) {
                    int i4 = parcel.readInt();
                    char c2 = (char) i4;
                    if (c2 == 1) {
                        iV = jb9.V(parcel, i4);
                    } else if (c2 == 2) {
                        account = (Account) jb9.p(parcel, i4, Account.CREATOR);
                    } else if (c2 == 3) {
                        iV4 = jb9.V(parcel, i4);
                    } else if (c2 != 4) {
                        jb9.e0(parcel, i4);
                    } else {
                        googleSignInAccount = (GoogleSignInAccount) jb9.p(parcel, i4, GoogleSignInAccount.CREATOR);
                    }
                }
                jb9.x(parcel, iK1);
                return new m29(iV, account, iV4, googleSignInAccount);
            case 8:
                int iK2 = jb9.k0(parcel);
                String strQ3 = null;
                String strQ4 = null;
                while (parcel.dataPosition() < iK2) {
                    int i5 = parcel.readInt();
                    char c3 = (char) i5;
                    if (c3 == 1) {
                        strQ2 = jb9.q(parcel, i5);
                    } else if (c3 == 2) {
                        strQ3 = jb9.q(parcel, i5);
                    } else if (c3 != 3) {
                        jb9.e0(parcel, i5);
                    } else {
                        strQ4 = jb9.q(parcel, i5);
                    }
                }
                jb9.x(parcel, iK2);
                return new v89(strQ2, strQ3, strQ4);
            case XmlPullParser.COMMENT /* 9 */:
                int iK3 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK3) {
                    int i6 = parcel.readInt();
                    if (((char) i6) != 1) {
                        jb9.e0(parcel, i6);
                    } else {
                        strQ = jb9.q(parcel, i6);
                    }
                }
                jb9.x(parcel, iK3);
                return new c99(strQ);
            case 10:
                int iK4 = jb9.k0(parcel);
                byte[] bArrN = null;
                while (parcel.dataPosition() < iK4) {
                    int i7 = parcel.readInt();
                    char c4 = (char) i7;
                    if (c4 == 1) {
                        zU = jb9.U(parcel, i7);
                    } else if (c4 != 2) {
                        jb9.e0(parcel, i7);
                    } else {
                        bArrN = jb9.n(parcel, i7);
                    }
                }
                jb9.x(parcel, iK4);
                return new fl9(zU, bArrN != null ? wk9.l(bArrN, bArrN.length) : null);
            default:
                int iK5 = jb9.k0(parcel);
                byte[] bArrN2 = null;
                byte[] bArrN3 = null;
                byte[] bArrN4 = null;
                long jX = 0;
                while (parcel.dataPosition() < iK5) {
                    int i8 = parcel.readInt();
                    char c5 = (char) i8;
                    if (c5 == 1) {
                        jX = jb9.X(parcel, i8);
                    } else if (c5 == 2) {
                        bArrN2 = jb9.n(parcel, i8);
                    } else if (c5 == 3) {
                        bArrN3 = jb9.n(parcel, i8);
                    } else if (c5 != 4) {
                        jb9.e0(parcel, i8);
                    } else {
                        bArrN4 = jb9.n(parcel, i8);
                    }
                }
                jb9.x(parcel, iK5);
                return new st9(jX, bArrN2, bArrN3, bArrN4);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new nn0[i];
            case 1:
                return new sh3[i];
            case 2:
                return new rr3[i];
            case 3:
                return new x85[i];
            case 4:
                return new h37[i];
            case 5:
                return new l67[i];
            case 6:
                return new x09[i];
            case 7:
                return new m29[i];
            case 8:
                return new v89[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new c99[i];
            case 10:
                return new fl9[i];
            default:
                return new st9[i];
        }
    }
}
