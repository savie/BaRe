package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r39 implements Parcelable.Creator {
    public static final r39 b = new r39(0);
    public final /* synthetic */ int a;

    public /* synthetic */ r39(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zU = false;
        qn1 qn1Var = null;
        String strQ = null;
        GoogleSignInAccount googleSignInAccount = null;
        ArrayList arrayListR = null;
        Bundle bundleM = null;
        Bundle bundleM2 = null;
        switch (this.a) {
            case 0:
                int iDataPosition = parcel.dataPosition();
                if (parcel.readInt() != -204102970) {
                    parcel.setDataPosition(iDataPosition - 4);
                    return ef.d;
                }
                int iK0 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK0) {
                    int i = parcel.readInt();
                    char c = (char) i;
                    if (c == 1) {
                        qn1Var = (qn1) jb9.p(parcel, i, qn1.CREATOR);
                    } else if (c != 2) {
                        jb9.e0(parcel, i);
                    } else {
                        zU = jb9.U(parcel, i);
                    }
                }
                jb9.x(parcel, iK0);
                return new ef(qn1Var, zU);
            case 1:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    int i2 = parcel.readInt();
                    if (((char) i2) != 1) {
                        jb9.e0(parcel, i2);
                    } else {
                        bundleM2 = jb9.m(parcel, i2);
                    }
                }
                jb9.x(parcel, iK1);
                return new m91(bundleM2);
            case 2:
                return new vs2(parcel);
            case 3:
                int iK2 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK2) {
                    int i3 = parcel.readInt();
                    if (((char) i3) != 1) {
                        jb9.e0(parcel, i3);
                    } else {
                        bundleM = jb9.m(parcel, i3);
                    }
                }
                jb9.x(parcel, iK2);
                return new p03(bundleM);
            case 4:
                parcel.getClass();
                return new m17(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.createCharArray(), parcel.createStringArrayList(), parcel.readLong(), parcel.readInt() != 0);
            case 5:
                vg7 vg7Var = new vg7(parcel);
                vg7Var.a = parcel.readString();
                vg7Var.b = parcel.readInt() == 1;
                vg7Var.c = parcel.readInt();
                vg7Var.d = parcel.readString();
                vg7Var.e = parcel.readInt() == 1;
                return vg7Var;
            case 6:
                int iK3 = jb9.k0(parcel);
                String strQ2 = null;
                while (parcel.dataPosition() < iK3) {
                    int i4 = parcel.readInt();
                    char c2 = (char) i4;
                    if (c2 == 1) {
                        arrayListR = jb9.r(parcel, i4);
                    } else if (c2 != 2) {
                        jb9.e0(parcel, i4);
                    } else {
                        strQ2 = jb9.q(parcel, i4);
                    }
                }
                jb9.x(parcel, iK3);
                return new a29(strQ2, arrayListR);
            case 7:
                int iK4 = jb9.k0(parcel);
                String strQ3 = "";
                String strQ4 = "";
                while (parcel.dataPosition() < iK4) {
                    int i5 = parcel.readInt();
                    char c3 = (char) i5;
                    if (c3 == 4) {
                        strQ3 = jb9.q(parcel, i5);
                    } else if (c3 == 7) {
                        googleSignInAccount = (GoogleSignInAccount) jb9.p(parcel, i5, GoogleSignInAccount.CREATOR);
                    } else if (c3 != '\b') {
                        jb9.e0(parcel, i5);
                    } else {
                        strQ4 = jb9.q(parcel, i5);
                    }
                }
                jb9.x(parcel, iK4);
                return new SignInAccount(strQ3, googleSignInAccount, strQ4);
            case 8:
                int iK5 = jb9.k0(parcel);
                boolean zU2 = false;
                boolean zU3 = false;
                boolean zU4 = false;
                String strQ5 = null;
                String strQ6 = null;
                String strQ7 = null;
                ArrayList arrayListR2 = null;
                ArrayList arrayListT = null;
                String strQ8 = null;
                while (parcel.dataPosition() < iK5) {
                    int i6 = parcel.readInt();
                    switch ((char) i6) {
                        case 1:
                            zU2 = jb9.U(parcel, i6);
                            break;
                        case 2:
                            strQ5 = jb9.q(parcel, i6);
                            break;
                        case 3:
                            strQ6 = jb9.q(parcel, i6);
                            break;
                        case 4:
                            zU3 = jb9.U(parcel, i6);
                            break;
                        case 5:
                            strQ7 = jb9.q(parcel, i6);
                            break;
                        case 6:
                            arrayListR2 = jb9.r(parcel, i6);
                            break;
                        case 7:
                            zU4 = jb9.U(parcel, i6);
                            break;
                        case '\b':
                            arrayListT = jb9.t(parcel, i6, e39.CREATOR);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            strQ8 = jb9.q(parcel, i6);
                            break;
                        default:
                            jb9.e0(parcel, i6);
                            break;
                    }
                }
                jb9.x(parcel, iK5);
                return new sp0(zU2, strQ5, strQ6, zU3, strQ7, arrayListR2, zU4, arrayListT, strQ8);
            case XmlPullParser.COMMENT /* 9 */:
                int iK6 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK6) {
                    int i7 = parcel.readInt();
                    if (((char) i7) != 1) {
                        jb9.e0(parcel, i7);
                    } else {
                        zU = jb9.U(parcel, i7);
                    }
                }
                jb9.x(parcel, iK6);
                return new q49(zU);
            case 10:
                int iK7 = jb9.k0(parcel);
                ua6 ua6Var = null;
                xa6 xa6Var = null;
                byte[] bArrN = null;
                ArrayList arrayListT2 = null;
                Double dValueOf = null;
                ArrayList arrayListT3 = null;
                p80 p80Var = null;
                Integer numW = null;
                f58 f58Var = null;
                String strQ9 = null;
                i80 i80Var = null;
                String strQ10 = null;
                ResultReceiver resultReceiver = null;
                while (parcel.dataPosition() < iK7) {
                    int i8 = parcel.readInt();
                    switch ((char) i8) {
                        case 2:
                            ua6Var = (ua6) jb9.p(parcel, i8, ua6.CREATOR);
                            break;
                        case 3:
                            xa6Var = (xa6) jb9.p(parcel, i8, xa6.CREATOR);
                            break;
                        case 4:
                            bArrN = jb9.n(parcel, i8);
                            break;
                        case 5:
                            arrayListT2 = jb9.t(parcel, i8, sa6.CREATOR);
                            break;
                        case 6:
                            int iZ = jb9.Z(parcel, i8);
                            if (iZ != 0) {
                                jb9.o0(parcel, iZ, 8);
                                dValueOf = Double.valueOf(parcel.readDouble());
                            } else {
                                dValueOf = null;
                            }
                            break;
                        case 7:
                            arrayListT3 = jb9.t(parcel, i8, ra6.CREATOR);
                            break;
                        case '\b':
                            p80Var = (p80) jb9.p(parcel, i8, p80.CREATOR);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            numW = jb9.W(parcel, i8);
                            break;
                        case '\n':
                            f58Var = (f58) jb9.p(parcel, i8, f58.CREATOR);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            strQ9 = jb9.q(parcel, i8);
                            break;
                        case '\f':
                            i80Var = (i80) jb9.p(parcel, i8, i80.CREATOR);
                            break;
                        case '\r':
                            strQ10 = jb9.q(parcel, i8);
                            break;
                        case 14:
                            resultReceiver = (ResultReceiver) jb9.p(parcel, i8, ResultReceiver.CREATOR);
                            break;
                        default:
                            jb9.e0(parcel, i8);
                            break;
                    }
                }
                jb9.x(parcel, iK7);
                return new qa6(ua6Var, xa6Var, bArrN, arrayListT2, dValueOf, arrayListT3, p80Var, numW, f58Var, strQ9, i80Var, strQ10, resultReceiver);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK8 = jb9.k0(parcel);
                Integer numW2 = null;
                while (parcel.dataPosition() < iK8) {
                    int i9 = parcel.readInt();
                    char c4 = (char) i9;
                    if (c4 == 2) {
                        strQ = jb9.q(parcel, i9);
                    } else if (c4 != 3) {
                        jb9.e0(parcel, i9);
                    } else {
                        numW2 = jb9.W(parcel, i9);
                    }
                }
                jb9.x(parcel, iK8);
                return new sa6(strQ, numW2.intValue());
            default:
                try {
                    return jh8.c(parcel.readString());
                } catch (n99 e) {
                    y5.k(e);
                    return null;
                }
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ef[i];
            case 1:
                return new m91[i];
            case 2:
                return new vs2[i];
            case 3:
                return new p03[i];
            case 4:
                return new m17[i];
            case 5:
                return new vg7[i];
            case 6:
                return new a29[i];
            case 7:
                return new SignInAccount[i];
            case 8:
                return new sp0[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new q49[i];
            case 10:
                return new qa6[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new sa6[i];
            default:
                return new jh8[i];
        }
    }
}
