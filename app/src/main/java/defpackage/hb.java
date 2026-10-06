package defpackage;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.view.View;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.button.MaterialButton;
import com.microsoft.identity.common.internal.broker.InstallCertActivityLauncher;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hb implements ig2, er5, OnSuccessListener, at5, h9, ls5, dv7 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ hb(ExecutorService executorService, j58 j58Var) {
        this.a = 0;
        this.b = executorService;
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        ga6Var.get().getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.er5
    public Object construct() {
        Constructor constructor = (Constructor) this.b;
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e) {
            pe4 pe4Var = th6.a;
            e6.i("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
            return null;
        } catch (InstantiationException e2) {
            throw new RuntimeException("Failed to invoke constructor '" + th6.b(constructor) + "' with no args", e2);
        } catch (InvocationTargetException e3) {
            e6.i("Failed to invoke constructor '" + th6.b(constructor) + "' with no args", e3.getCause());
            return null;
        }
    }

    @Override // defpackage.at5
    public void d(Object obj) {
        rj3 rj3Var = (rj3) this.b;
        List list = rj3Var.Y.d;
        ArrayList<li0> arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((li0) obj2).a()) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (li0 li0Var : arrayList) {
            o05 o05Var = q05.Companion;
            String str = li0Var.a;
            o05Var.getClass();
            q05 q05VarA = o05.a(str);
            if (q05VarA != null) {
                arrayList2.add(q05VarA);
            }
        }
        rj3Var.a0 = arrayList2;
        ((MaterialButton) rj3Var.X.getValue()).setEnabled((rj3Var.S && rj3Var.a0.isEmpty()) ? false : true);
    }

    @Override // defpackage.dv7
    public Object g() {
        mw6 mw6Var = (mw6) this.b;
        mw6Var.getClass();
        int i = y91.e;
        x91 x91Var = new x91();
        x91Var.a = null;
        x91Var.b = new ArrayList();
        x91Var.c = null;
        x91Var.d = "";
        HashMap map = new HashMap();
        SQLiteDatabase sQLiteDatabaseA = mw6Var.a();
        sQLiteDatabaseA.beginTransaction();
        try {
            y91 y91Var = (y91) mw6.q(sQLiteDatabaseA.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new l32(mw6Var, map, x91Var));
            sQLiteDatabaseA.setTransactionSuccessful();
            return y91Var;
        } finally {
            sQLiteDatabaseA.endTransaction();
        }
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        Intent intent;
        ln3 ln3Var;
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 4:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj2;
                g9 g9Var = (g9) obj;
                int i2 = FolderDetailActivity.Z;
                g9Var.getClass();
                if (g9Var.a == -1 && (intent = g9Var.b) != null) {
                    Serializable serializableExtra = intent.getSerializableExtra("extra_selected_folder");
                    q63 q63Var = serializableExtra instanceof q63 ? (q63) serializableExtra : null;
                    if (q63Var != null && (ln3Var = folderDetailActivity.T) != null) {
                        String strV = q63Var.v();
                        String str = ln3Var.R;
                        String string = nq7.H0(strV).toString();
                        if (!pe4.d(string, "/")) {
                            string = nq7.K0(string, '/');
                        }
                        String string2 = nq7.H0(str).toString();
                        if (!pe4.d(string2, "/")) {
                            string2 = nq7.K0(string2, '/');
                        }
                        ln3Var.Z = pe4.d(string, string2) ? null : q63Var;
                        ln3Var.l();
                    }
                }
                break;
            default:
                InstallCertActivityLauncher.n((InstallCertActivityLauncher) obj2, (g9) obj);
                break;
        }
    }

    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        lv7 lv7Var = (lv7) this.b;
        ArrayList arrayList = lv7Var.b;
        qv8 qv8Var = tv8Var.a;
        vc4 vc4VarB = vc4.b(qv8Var.h(519), qv8Var.h(64));
        vc4 vc4VarB2 = vc4.b(qv8Var.i(519), qv8Var.i(64));
        if (!vc4VarB.equals(lv7Var.c) || !vc4VarB2.equals(lv7Var.d)) {
            lv7Var.c = vc4VarB;
            lv7Var.d = vc4VarB2;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                k96 k96Var = (k96) arrayList.get(size);
                k96Var.c = vc4VarB;
                k96Var.d = vc4VarB2;
                k96Var.c();
            }
        }
        return tv8Var;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((y22) this.b).invoke(obj);
    }

    public /* synthetic */ hb(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
