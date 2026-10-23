package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wo7 extends ws7 implements qt3 {
    public final /* synthetic */ yo7 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wo7(yo7 yo7Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = yo7Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new wo7(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        wo7 wo7Var = (wo7) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        wo7Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object next;
        lg7.H(obj);
        List listC = yn7.c(null);
        List<zn7> listA = yn7.a();
        ArrayList arrayList = new ArrayList(hl1.G0(listA, 10));
        for (zn7 zn7Var : listA) {
            String str = ry5.u;
            q63 q63Var = new q63(qy5.d(zn7Var), 2);
            boolean z = false;
            try {
                if (q63Var.j() || q63.E(q63Var)) {
                    z = true;
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "StorageSwitchItem", io4.b(e), null, 4, null);
                Log.e("StorageSwitchItem", "createItems", e);
            }
            StorageInfoLocal.a aVar = StorageInfoLocal.Companion;
            if (!z) {
                q63Var = zn7Var.n();
            }
            StorageInfoLocal storageInfoLocalCreate = aVar.create(q63Var, z);
            StorageInfoLocal.Success success = storageInfoLocalCreate instanceof StorageInfoLocal.Success ? (StorageInfoLocal.Success) storageInfoLocalCreate : null;
            boolean zM = zn7Var.m();
            String strE = zn7Var.e(listC);
            so7 so7Var = new so7(zn7Var, success, zM, strE);
            StringBuilder sb = new StringBuilder();
            sb.append(zn7Var.u());
            if (strE != null && strE.length() != 0) {
                sb.append(", Format=".concat(strE));
            }
            vr6.i$default(vr6.INSTANCE, "StorageSwitchItem", sb.toString(), null, 4, null);
            arrayList.add(so7Var);
        }
        zn7 zn7VarD = zn7.q.d();
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!pe4.d(((so7) next).a.n(), zn7VarD.n()));
        so7 so7Var2 = (so7) next;
        Set setY = so7Var2 != null ? sz8.Y(so7Var2.getItemId()) : null;
        boolean zIsEmpty = arrayList.isEmpty();
        yo7 yo7Var = this.a;
        if (zIsEmpty) {
            vr6.e$default(vr6.INSTANCE, yo7Var.b, "No storage items!", null, 4, null);
            Const.P();
            yo7Var.d();
        } else {
            ex6 ex6Var = yo7Var.e;
            if (setY == null) {
                setY = sz8.Y(((so7) el1.S0(arrayList)).getItemId());
            }
            ex6Var.k(new fm7((List) arrayList, setY, false, (String) null, 28));
        }
        return be8.a;
    }
}
