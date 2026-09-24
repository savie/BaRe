package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.identitycredentials.GetCredentialRequest;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Locale;
import moe.shizuku.api.BinderContainer;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m10 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        String strQ = null;
        String strQ2 = null;
        String strQ3 = null;
        String strQ4 = null;
        ArrayList arrayListT = null;
        boolean zU = false;
        switch (this.a) {
            case 0:
                parcel.getClass();
                String string = parcel.readString();
                int i = parcel.readInt();
                int i2 = parcel.readInt();
                String string2 = parcel.readString();
                int i3 = parcel.readInt();
                boolean z = false;
                int i4 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                if (parcel.readInt() != 0) {
                    z = true;
                }
                return new n10(string, i, i2, string2, i3, i4, z, z, parcel.readInt(), parcel.readInt());
            case 1:
                return new zj0(parcel);
            case 2:
                xk0 xk0Var = new xk0();
                xk0Var.p = 255;
                xk0Var.r = -2;
                xk0Var.t = -2;
                xk0Var.x = -2;
                xk0Var.L = Boolean.TRUE;
                xk0Var.a = parcel.readInt();
                xk0Var.b = (Integer) parcel.readSerializable();
                xk0Var.c = (Integer) parcel.readSerializable();
                xk0Var.d = (Integer) parcel.readSerializable();
                xk0Var.e = (Integer) parcel.readSerializable();
                xk0Var.f = (Integer) parcel.readSerializable();
                xk0Var.k = (Integer) parcel.readSerializable();
                xk0Var.n = (Integer) parcel.readSerializable();
                xk0Var.p = parcel.readInt();
                xk0Var.q = parcel.readString();
                xk0Var.r = parcel.readInt();
                xk0Var.t = parcel.readInt();
                xk0Var.x = parcel.readInt();
                xk0Var.G = parcel.readString();
                xk0Var.H = parcel.readString();
                xk0Var.I = parcel.readInt();
                xk0Var.K = (Integer) parcel.readSerializable();
                xk0Var.M = (Integer) parcel.readSerializable();
                xk0Var.N = (Integer) parcel.readSerializable();
                xk0Var.O = (Integer) parcel.readSerializable();
                xk0Var.P = (Integer) parcel.readSerializable();
                xk0Var.Q = (Integer) parcel.readSerializable();
                xk0Var.R = (Integer) parcel.readSerializable();
                xk0Var.U = (Integer) parcel.readSerializable();
                xk0Var.S = (Integer) parcel.readSerializable();
                xk0Var.T = (Integer) parcel.readSerializable();
                xk0Var.L = (Boolean) parcel.readSerializable();
                xk0Var.y = (Locale) parcel.readSerializable();
                xk0Var.V = (Boolean) parcel.readSerializable();
                xk0Var.W = (Integer) parcel.readSerializable();
                return xk0Var;
            case 3:
                BinderContainer binderContainer = new BinderContainer();
                binderContainer.a = parcel.readStrongBinder();
                return binderContainer;
            case 4:
                int iK0 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK0) {
                    int i5 = parcel.readInt();
                    if (((char) i5) != 1) {
                        jb9.e0(parcel, i5);
                    } else {
                        zU = jb9.U(parcel, i5);
                    }
                }
                jb9.x(parcel, iK0);
                return new j91(zU);
            case 5:
                int iK1 = jb9.k0(parcel);
                Bundle bundleM = null;
                while (parcel.dataPosition() < iK1) {
                    int i6 = parcel.readInt();
                    char c = (char) i6;
                    if (c == 1) {
                        strQ = jb9.q(parcel, i6);
                    } else if (c != 2) {
                        jb9.e0(parcel, i6);
                    } else {
                        bundleM = jb9.m(parcel, i6);
                    }
                }
                jb9.x(parcel, iK1);
                return new o22(bundleM, strQ);
            case 6:
                int iK2 = jb9.k0(parcel);
                Bundle bundleM2 = null;
                String strQ5 = null;
                ResultReceiver resultReceiver = null;
                while (parcel.dataPosition() < iK2) {
                    int i7 = parcel.readInt();
                    char c2 = (char) i7;
                    if (c2 == 1) {
                        arrayListT = jb9.t(parcel, i7, v22.CREATOR);
                    } else if (c2 == 2) {
                        bundleM2 = jb9.m(parcel, i7);
                    } else if (c2 == 3) {
                        strQ5 = jb9.q(parcel, i7);
                    } else if (c2 != 4) {
                        jb9.e0(parcel, i7);
                    } else {
                        resultReceiver = (ResultReceiver) jb9.p(parcel, i7, ResultReceiver.CREATOR);
                    }
                }
                jb9.x(parcel, iK2);
                return new GetCredentialRequest(arrayListT, bundleM2, strQ5, resultReceiver);
            case 7:
                parcel.getClass();
                return new zc6(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
            case 8:
                parcel.getClass();
                return new k17(parcel.readString(), parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), g17.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
            case XmlPullParser.COMMENT /* 9 */:
                int iK3 = jb9.k0(parcel);
                String strQ6 = null;
                while (parcel.dataPosition() < iK3) {
                    int i8 = parcel.readInt();
                    char c3 = (char) i8;
                    if (c3 == 1) {
                        strQ4 = jb9.q(parcel, i8);
                    } else if (c3 != 2) {
                        jb9.e0(parcel, i8);
                    } else {
                        strQ6 = jb9.q(parcel, i8);
                    }
                }
                jb9.x(parcel, iK3);
                return new lf7(strQ4, strQ6);
            case 10:
                int iK4 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK4) {
                    int i9 = parcel.readInt();
                    if (((char) i9) != 1) {
                        jb9.e0(parcel, i9);
                    } else {
                        zU = jb9.U(parcel, i9);
                    }
                }
                jb9.x(parcel, iK4);
                return new d14(zU);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK5 = jb9.k0(parcel);
                String strQ7 = null;
                String strQ8 = null;
                String strQ9 = null;
                String strQ10 = null;
                String strQ11 = null;
                String strQ12 = null;
                String strQ13 = null;
                String strQ14 = null;
                String strQ15 = null;
                String strQ16 = null;
                String strQ17 = null;
                boolean zU2 = false;
                boolean zU3 = false;
                boolean zU4 = false;
                String strQ18 = null;
                while (parcel.dataPosition() < iK5) {
                    int i10 = parcel.readInt();
                    String str = strQ16;
                    switch ((char) i10) {
                        case 2:
                            strQ3 = jb9.q(parcel, i10);
                            break;
                        case 3:
                            strQ8 = jb9.q(parcel, i10);
                            break;
                        case 4:
                            strQ9 = jb9.q(parcel, i10);
                            break;
                        case 5:
                            strQ10 = jb9.q(parcel, i10);
                            break;
                        case 6:
                            strQ18 = jb9.q(parcel, i10);
                            break;
                        case 7:
                            strQ11 = jb9.q(parcel, i10);
                            break;
                        case '\b':
                            strQ12 = jb9.q(parcel, i10);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            strQ13 = jb9.q(parcel, i10);
                            break;
                        case '\n':
                            zU3 = jb9.U(parcel, i10);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            zU2 = jb9.U(parcel, i10);
                            break;
                        case '\f':
                            strQ14 = jb9.q(parcel, i10);
                            break;
                        case '\r':
                            strQ15 = jb9.q(parcel, i10);
                            break;
                        case 14:
                            strQ16 = jb9.q(parcel, i10);
                            continue;
                        case 15:
                            strQ17 = jb9.q(parcel, i10);
                            break;
                        case Argon2.V10 /* 16 */:
                            zU4 = jb9.U(parcel, i10);
                            break;
                        case 17:
                            strQ7 = jb9.q(parcel, i10);
                            break;
                        default:
                            jb9.e0(parcel, i10);
                            break;
                    }
                    strQ16 = str;
                }
                jb9.x(parcel, iK5);
                j69 j69Var = new j69();
                j69Var.a = strQ3;
                j69Var.b = strQ8;
                j69Var.c = strQ9;
                j69Var.d = strQ10;
                j69Var.e = strQ18;
                j69Var.f = strQ11;
                j69Var.k = strQ12;
                j69Var.n = strQ13;
                j69Var.p = zU3;
                j69Var.q = zU2;
                j69Var.r = strQ14;
                j69Var.t = strQ15;
                j69Var.x = strQ16;
                j69Var.y = strQ17;
                j69Var.G = zU4;
                j69Var.H = strQ7;
                return j69Var;
            case 12:
                int iK6 = jb9.k0(parcel);
                byte[] bArrN = null;
                ArrayList arrayListT2 = null;
                while (parcel.dataPosition() < iK6) {
                    int i11 = parcel.readInt();
                    char c4 = (char) i11;
                    if (c4 == 2) {
                        strQ2 = jb9.q(parcel, i11);
                    } else if (c4 == 3) {
                        bArrN = jb9.n(parcel, i11);
                    } else if (c4 != 4) {
                        jb9.e0(parcel, i11);
                    } else {
                        arrayListT2 = jb9.t(parcel, i11, Transport.CREATOR);
                    }
                }
                jb9.x(parcel, iK6);
                return new ra6(strQ2, bArrN, arrayListT2);
            default:
                int iK7 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK7) {
                    int i12 = parcel.readInt();
                    if (((char) i12) != 1) {
                        jb9.e0(parcel, i12);
                    } else {
                        zU = jb9.U(parcel, i12);
                    }
                }
                jb9.x(parcel, iK7);
                return new ih8(zU);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new n10[i];
            case 1:
                return new zj0[i];
            case 2:
                return new xk0[i];
            case 3:
                return new BinderContainer[i];
            case 4:
                return new j91[i];
            case 5:
                return new o22[i];
            case 6:
                return new GetCredentialRequest[i];
            case 7:
                return new zc6[i];
            case 8:
                return new k17[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new lf7[i];
            case 10:
                return new d14[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new j69[i];
            case 12:
                return new ra6[i];
            default:
                return new ih8[i];
        }
    }
}
