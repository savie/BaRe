package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q19 extends b19 implements nz3, oz3 {
    public static final w09 p = t19.a;
    public final Context b;
    public final Handler c;
    public final w09 d;
    public final Set e;
    public final z91 f;
    public if7 k;
    public w86 n;

    public q19(Context context, n29 n29Var, z91 z91Var) {
        super("com.google.android.gms.signin.internal.ISignInCallbacks", 0);
        this.b = context;
        this.c = n29Var;
        this.f = z91Var;
        this.e = z91Var.a;
        this.d = p;
    }

    @Override // defpackage.oz3
    public final void a(hs1 hs1Var) {
        this.n.b(hs1Var);
    }

    @Override // defpackage.nz3
    public final void f(int i) {
        w86 w86Var = this.n;
        g19 g19Var = (g19) ((pz3) w86Var.f).j.get((df) w86Var.c);
        if (g19Var != null) {
            if (g19Var.p) {
                g19Var.p(new hs1(17, null, null));
            } else {
                g19Var.f(i);
            }
        }
    }

    @Override // defpackage.nz3
    public final void g() {
        if7 if7Var = this.k;
        if7Var.getClass();
        try {
            if7Var.z.getClass();
            Account account = new Account("<<default account>>", "com.google");
            GoogleSignInAccount googleSignInAccountB = "<<default account>>".equals(account.name) ? ao7.a(if7Var.c).b() : null;
            Integer num = if7Var.B;
            ly8.h(num);
            m29 m29Var = new m29(2, account, num.intValue(), googleSignInAccountB);
            w19 w19Var = (w19) if7Var.p();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(w19Var.c);
            int i = m19.a;
            parcelObtain.writeInt(1);
            int iF0 = yc9.F0(parcelObtain, 20293);
            yc9.D0(parcelObtain, 1, 4);
            parcelObtain.writeInt(1);
            yc9.v0(parcelObtain, 2, m29Var, 0);
            yc9.G0(parcelObtain, iF0);
            parcelObtain.writeStrongBinder(this);
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                w19Var.b.transact(12, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                this.c.post(new vb(this, new f29(1, new hs1(8, null, null), null)));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // defpackage.b19
    public final boolean m(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 3:
                m19.b(parcel);
                break;
            case 4:
                m19.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                m19.b(parcel);
                break;
            case 7:
                m19.b(parcel);
                break;
            case 8:
                f29 f29Var = (f29) m19.a(parcel, f29.CREATOR);
                m19.b(parcel);
                this.c.post(new vb(this, f29Var));
                break;
            case XmlPullParser.COMMENT /* 9 */:
                m19.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
