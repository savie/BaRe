package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.MenuItem;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.util.BitSet;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rn1 implements mo1, ObjectConstructor, OnSuccessListener, t45, g36, ny6, g88, dv7, Continuation {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ rn1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.g88
    public boolean a(char c) {
        return ((BitSet) this.b).get(c);
    }

    @Override // defpackage.t45
    public void b(boolean z, boolean z2) {
        IntroActivity introActivity = (IntroActivity) this.b;
        int i = IntroActivity.V;
        if (z2) {
            dz5 dz5Var = dz5.a;
            dz5.o(introActivity, sz8.Y("com.android.permission.GET_INSTALLED_APPS"), false);
            return;
        }
        if (z) {
            introActivity.a0().o();
            dz5 dz5Var2 = dz5.a;
            if (dz5.k()) {
                return;
            }
            dz5.o(introActivity, sz8.Y("com.android.permission.GET_INSTALLED_APPS"), false);
            return;
        }
        introActivity.N();
        if (introActivity.isFinishing()) {
            return;
        }
        qi7 qi7VarP = introActivity.P();
        ((SnackbarContentLayout) qi7VarP.i.getChildAt(0)).getMessageView().setText(qi7VarP.h.getText(R.string.permission_needed_to_proceed));
        qi7VarP.h(new xd1(introActivity, 7));
        qi7VarP.i();
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newUnsafeAllocator$19((String) this.b);
    }

    @Override // defpackage.dv7
    public Object g() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 8:
                mw6 mw6Var = (mw6) obj;
                long jE = mw6Var.b.e() - mw6Var.d.d;
                SQLiteDatabase sQLiteDatabaseA = mw6Var.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(jE)};
                    Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            mw6Var.j(cursorRawQuery.getInt(0), c15.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    }
                    cursorRawQuery.close();
                    int iDelete = sQLiteDatabaseA.delete("events", "timestamp_ms < ?", strArr);
                    sQLiteDatabaseA.setTransactionSuccessful();
                    sQLiteDatabaseA.endTransaction();
                    return Integer.valueOf(iDelete);
                } catch (Throwable th2) {
                    sQLiteDatabaseA.endTransaction();
                    throw th2;
                }
            default:
                e38 e38Var = (e38) obj;
                Iterator it = ((Iterable) ((mw6) e38Var.c).g(new f6(15))).iterator();
                while (it.hasNext()) {
                    ((e41) e38Var.d).d((oe0) it.next(), 1, false);
                }
                return null;
        }
    }

    @Override // defpackage.ny6
    public boolean isCancellationRequested() {
        Object obj = ((ap6) this.b).b.get();
        obj.getClass();
        return ((Boolean) obj).booleanValue();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return this.b;
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        MegaSignInActivity megaSignInActivity = (MegaSignInActivity) this.b;
        int i = MegaSignInActivity.S;
        if (menuItem.getItemId() != R.id.action_swiftlogger) {
            return true;
        }
        ai8.q(megaSignInActivity, SLogActivity.class);
        return true;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 2:
                ((a32) obj2).invoke(obj);
                break;
            default:
                ((p32) obj2).invoke(obj);
                break;
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        ((CountDownLatch) this.b).countDown();
        return null;
    }
}
