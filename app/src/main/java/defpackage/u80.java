package defpackage;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u80 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ u80(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                return new v80(parcel);
            case 1:
                int iK0 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK0) {
                    jb9.e0(parcel, parcel.readInt());
                }
                jb9.x(parcel, iK0);
                return new g91();
            case 2:
                int iK1 = jb9.k0(parcel);
                String strQ = null;
                Bundle bundleM = null;
                Bundle bundleM2 = null;
                String strQ2 = null;
                String strQ3 = null;
                ResultReceiver resultReceiver = null;
                while (parcel.dataPosition() < iK1) {
                    int i = parcel.readInt();
                    switch ((char) i) {
                        case 1:
                            strQ = jb9.q(parcel, i);
                            break;
                        case 2:
                            bundleM = jb9.m(parcel, i);
                            break;
                        case 3:
                            bundleM2 = jb9.m(parcel, i);
                            break;
                        case 4:
                            strQ2 = jb9.q(parcel, i);
                            break;
                        case 5:
                            strQ3 = jb9.q(parcel, i);
                            break;
                        case 6:
                            resultReceiver = (ResultReceiver) jb9.p(parcel, i, ResultReceiver.CREATOR);
                            break;
                        default:
                            jb9.e0(parcel, i);
                            break;
                    }
                }
                jb9.x(parcel, iK1);
                return new h12(strQ, bundleM, bundleM2, strQ2, strQ3, resultReceiver);
            case 3:
                int iK2 = jb9.k0(parcel);
                Bundle bundleM3 = null;
                while (parcel.dataPosition() < iK2) {
                    int i2 = parcel.readInt();
                    if (((char) i2) != 1) {
                        jb9.e0(parcel, i2);
                    } else {
                        bundleM3 = jb9.m(parcel, i2);
                    }
                }
                jb9.x(parcel, iK2);
                return new i22(bundleM3);
            case 4:
                int iK3 = jb9.k0(parcel);
                Bundle bundleM4 = null;
                while (parcel.dataPosition() < iK3) {
                    int i3 = parcel.readInt();
                    if (((char) i3) != 1) {
                        jb9.e0(parcel, i3);
                    } else {
                        bundleM4 = jb9.m(parcel, i3);
                    }
                }
                jb9.x(parcel, iK3);
                return new xw3(bundleM4);
            case 5:
                return new hi5(parcel);
            case 6:
                return new s36(parcel);
            case 7:
                int iK4 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK4) {
                    jb9.e0(parcel, parcel.readInt());
                }
                jb9.x(parcel, iK4);
                return new qf7();
            case 8:
                int iK5 = jb9.k0(parcel);
                int iV = 0;
                ArrayList arrayListT = null;
                Account account = null;
                boolean zU = false;
                boolean zU2 = false;
                boolean zU3 = false;
                String strQ4 = null;
                String strQ5 = null;
                String strQ6 = null;
                ArrayList arrayListT2 = null;
                while (parcel.dataPosition() < iK5) {
                    int i4 = parcel.readInt();
                    switch ((char) i4) {
                        case 1:
                            iV = jb9.V(parcel, i4);
                            break;
                        case 2:
                            arrayListT = jb9.t(parcel, i4, Scope.CREATOR);
                            break;
                        case 3:
                            account = (Account) jb9.p(parcel, i4, Account.CREATOR);
                            break;
                        case 4:
                            zU = jb9.U(parcel, i4);
                            break;
                        case 5:
                            zU2 = jb9.U(parcel, i4);
                            break;
                        case 6:
                            zU3 = jb9.U(parcel, i4);
                            break;
                        case 7:
                            strQ4 = jb9.q(parcel, i4);
                            break;
                        case '\b':
                            strQ5 = jb9.q(parcel, i4);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            arrayListT2 = jb9.t(parcel, i4, y04.CREATOR);
                            break;
                        case '\n':
                            strQ6 = jb9.q(parcel, i4);
                            break;
                        default:
                            jb9.e0(parcel, i4);
                            break;
                    }
                }
                jb9.x(parcel, iK5);
                return new GoogleSignInOptions(iV, arrayListT, account, zU, zU2, zU3, strQ4, strQ5, GoogleSignInOptions.q(arrayListT2), strQ6);
            case XmlPullParser.COMMENT /* 9 */:
                int iK6 = jb9.k0(parcel);
                GoogleSignInOptions googleSignInOptions = null;
                String strQ7 = null;
                while (parcel.dataPosition() < iK6) {
                    int i5 = parcel.readInt();
                    char c = (char) i5;
                    if (c == 2) {
                        strQ7 = jb9.q(parcel, i5);
                    } else if (c != 5) {
                        jb9.e0(parcel, i5);
                    } else {
                        googleSignInOptions = (GoogleSignInOptions) jb9.p(parcel, i5, GoogleSignInOptions.CREATOR);
                    }
                }
                jb9.x(parcel, iK6);
                return new SignInConfiguration(strQ7, googleSignInOptions);
            case 10:
                int iK7 = jb9.k0(parcel);
                String strQ8 = null;
                String strQ9 = null;
                String strQ10 = null;
                String strQ11 = null;
                String strQ12 = null;
                String strQ13 = null;
                boolean zU4 = false;
                String strQ14 = null;
                while (parcel.dataPosition() < iK7) {
                    int i6 = parcel.readInt();
                    switch ((char) i6) {
                        case 1:
                            strQ8 = jb9.q(parcel, i6);
                            break;
                        case 2:
                            strQ9 = jb9.q(parcel, i6);
                            break;
                        case 3:
                            strQ12 = jb9.q(parcel, i6);
                            break;
                        case 4:
                            strQ11 = jb9.q(parcel, i6);
                            break;
                        case 5:
                            strQ10 = jb9.q(parcel, i6);
                            break;
                        case 6:
                            strQ13 = jb9.q(parcel, i6);
                            break;
                        case 7:
                            zU4 = jb9.U(parcel, i6);
                            break;
                        case '\b':
                            strQ14 = jb9.q(parcel, i6);
                            break;
                        default:
                            jb9.e0(parcel, i6);
                            break;
                    }
                }
                jb9.x(parcel, iK7);
                return new w1a(strQ8, strQ9, strQ10, strQ11, strQ12, strQ13, zU4, strQ14);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK8 = jb9.k0(parcel);
                b69 b69Var = null;
                u99 u99Var = null;
                ArrayList arrayListT3 = null;
                w1a w1aVar = null;
                String strQ15 = null;
                String strQ16 = null;
                ArrayList arrayListT4 = null;
                ArrayList arrayListR = null;
                String strQ17 = null;
                Boolean boolValueOf = null;
                l59 l59Var = null;
                boolean zU5 = false;
                ua9 ua9Var = null;
                while (parcel.dataPosition() < iK8) {
                    int i7 = parcel.readInt();
                    ArrayList arrayList = arrayListT3;
                    switch ((char) i7) {
                        case 1:
                            b69Var = (b69) jb9.p(parcel, i7, b69.CREATOR);
                            break;
                        case 2:
                            w1aVar = (w1a) jb9.p(parcel, i7, w1a.CREATOR);
                            break;
                        case 3:
                            strQ15 = jb9.q(parcel, i7);
                            break;
                        case 4:
                            strQ16 = jb9.q(parcel, i7);
                            break;
                        case 5:
                            arrayListT4 = jb9.t(parcel, i7, w1a.CREATOR);
                            break;
                        case 6:
                            arrayListR = jb9.r(parcel, i7);
                            break;
                        case 7:
                            strQ17 = jb9.q(parcel, i7);
                            break;
                        case '\b':
                            int iZ = jb9.Z(parcel, i7);
                            if (iZ != 0) {
                                jb9.o0(parcel, iZ, 4);
                                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                            } else {
                                boolValueOf = null;
                            }
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            l59Var = (l59) jb9.p(parcel, i7, l59.CREATOR);
                            break;
                        case '\n':
                            zU5 = jb9.U(parcel, i7);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            ua9Var = (ua9) jb9.p(parcel, i7, ua9.CREATOR);
                            break;
                        case '\f':
                            u99Var = (u99) jb9.p(parcel, i7, u99.CREATOR);
                            break;
                        case '\r':
                            arrayListT3 = jb9.t(parcel, i7, v89.CREATOR);
                            continue;
                        default:
                            jb9.e0(parcel, i7);
                            break;
                    }
                    arrayListT3 = arrayList;
                }
                jb9.x(parcel, iK8);
                p49 p49Var = new p49();
                p49Var.a = b69Var;
                p49Var.b = w1aVar;
                p49Var.c = strQ15;
                p49Var.d = strQ16;
                p49Var.e = arrayListT4;
                p49Var.f = arrayListR;
                p49Var.k = strQ17;
                p49Var.n = boolValueOf;
                p49Var.p = l59Var;
                p49Var.q = zU5;
                p49Var.r = ua9Var;
                p49Var.t = u99Var;
                p49Var.x = arrayListT3;
                return p49Var;
            case 12:
                int iK9 = jb9.k0(parcel);
                long jX = 0;
                long jX2 = 0;
                while (parcel.dataPosition() < iK9) {
                    int i8 = parcel.readInt();
                    char c2 = (char) i8;
                    if (c2 == 1) {
                        jX = jb9.X(parcel, i8);
                    } else if (c2 != 2) {
                        jb9.e0(parcel, i8);
                    } else {
                        jX2 = jb9.X(parcel, i8);
                    }
                }
                jb9.x(parcel, iK9);
                return new l59(jX, jX2);
            default:
                int iK10 = jb9.k0(parcel);
                int iV2 = 0;
                String strQ18 = null;
                Long lY = null;
                boolean zU6 = false;
                boolean zU7 = false;
                ArrayList arrayListR2 = null;
                String strQ19 = null;
                while (parcel.dataPosition() < iK10) {
                    int i9 = parcel.readInt();
                    switch ((char) i9) {
                        case 1:
                            iV2 = jb9.V(parcel, i9);
                            break;
                        case 2:
                            strQ18 = jb9.q(parcel, i9);
                            break;
                        case 3:
                            lY = jb9.Y(parcel, i9);
                            break;
                        case 4:
                            zU6 = jb9.U(parcel, i9);
                            break;
                        case 5:
                            zU7 = jb9.U(parcel, i9);
                            break;
                        case 6:
                            arrayListR2 = jb9.r(parcel, i9);
                            break;
                        case 7:
                            strQ19 = jb9.q(parcel, i9);
                            break;
                        default:
                            jb9.e0(parcel, i9);
                            break;
                    }
                }
                jb9.x(parcel, iK10);
                return new TokenData(iV2, strQ18, lY, zU6, zU7, arrayListR2, strQ19);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new v80[i];
            case 1:
                return new g91[i];
            case 2:
                return new h12[i];
            case 3:
                return new i22[i];
            case 4:
                return new xw3[i];
            case 5:
                return new hi5[i];
            case 6:
                return new s36[i];
            case 7:
                return new qf7[i];
            case 8:
                return new GoogleSignInOptions[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new SignInConfiguration[i];
            case 10:
                return new w1a[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new p49[i];
            case 12:
                return new l59[i];
            default:
                return new TokenData[i];
        }
    }
}
