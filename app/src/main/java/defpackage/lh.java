package defpackage;

import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lh implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ lh(rb rbVar, dj0 dj0Var, List list, mj0 mj0Var) {
        this.a = 1;
        this.b = rbVar;
        this.c = list;
        this.d = mj0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        boolean z = true;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                w45 w45Var = (w45) obj2;
                qh qhVar = (qh) obj;
                zm zmVar = (zm) ((nh) obj3).b;
                if (qhVar instanceof oh) {
                    oh ohVar = (oh) qhVar;
                    if (w45Var.isShowing()) {
                        long j = ohVar.b;
                        if (j <= 0) {
                            w45Var.k(true);
                            String string = zmVar.getString(R.string.downloading_backup_files);
                            string.getClass();
                            w45Var.i(string);
                        } else {
                            long jI = l73.i(ohVar.a, 0L, j);
                            w45Var.k(false);
                            w45Var.m(l73.h(Const.r(jI, j), 0, 100));
                            p93 p93Var = p93.a;
                            String string2 = zmVar.getString(R.string.downloded_progress_message, p93.c(Long.valueOf(jI)), p93.c(Long.valueOf(j)));
                            string2.getClass();
                            w45Var.i(string2);
                        }
                    }
                } else {
                    if (!pe4.d(qhVar, ph.a)) {
                        q.j();
                        return null;
                    }
                    if (w45Var.isShowing()) {
                        w45Var.k(true);
                        w45Var.m(0);
                        String string3 = zmVar.getString(R.string.preparing_apks);
                        string3.getClass();
                        w45Var.i(string3);
                    }
                }
                return be8Var;
            case 1:
                rb rbVar = (rb) obj3;
                List list = (List) obj2;
                ArrayList arrayList = new ArrayList();
                for (jj0 jj0Var : ((mj0) obj).f) {
                    if (pe4.d(jj0Var.a, "locations")) {
                        ArrayList arrayListA = jj0Var.a();
                        ArrayList<String> arrayList2 = new ArrayList(hl1.G0(arrayListA, 10));
                        Iterator it = arrayListA.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(((li0) it.next()).a);
                        }
                        for (String str : arrayList2) {
                            q05.Companion.getClass();
                            q05 q05VarA = o05.a(str);
                            if (q05VarA != null) {
                                arrayList.add(q05VarA);
                            }
                        }
                        for (li0 li0Var : jj0Var.c) {
                            o05 o05Var = q05.Companion;
                            String str2 = li0Var.a;
                            o05Var.getClass();
                            q05 q05VarA2 = o05.a(str2);
                            if (!li0Var.b() && q05VarA2 != null) {
                                q05VarA2.setCheckedInExpansion(5, li0Var.a());
                            }
                        }
                    }
                }
                bz7 bz7Var = new bz7(list, arrayList, false);
                boolean zContains = arrayList.contains(q05.CLOUD);
                cs8 cs8Var = (cs8) rbVar.b;
                if (zContains) {
                    sa1.R(cs8Var.a, null, new qf(18, cs8Var, bz7Var), 1);
                } else {
                    iu8 iu8Var = cs8Var.b;
                    iu8Var.getClass();
                    zn4.c(new ut8(bz7Var, R.string.backing_up, iu8Var, z));
                }
                return be8Var;
            case 2:
                fi1 fi1Var = (fi1) obj2;
                lh1 lh1Var = (lh1) obj;
                qt3 qt3Var = ((mh1) obj3).j;
                if (qt3Var != null) {
                    qt3Var.invoke(fi1Var, Integer.valueOf(lh1Var.b()));
                }
                return be8Var;
            default:
                return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$0$0((Executor) obj3, (t22) obj2, (bw3) obj);
        }
    }

    public /* synthetic */ lh(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }
}
