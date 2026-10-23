package defpackage;

import android.widget.TextView;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yi0 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ yi0(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                zi0 zi0Var = (zi0) obj3;
                aj0 aj0Var = (aj0) obj2;
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
                                q05VarA2.setCheckedInExpansion(aj0Var.b, li0Var.a());
                            }
                        }
                    }
                }
                zi0Var.o(new xy7(arrayList, false));
                return be8Var;
            case 1:
                return CreateDigitalCredentialController.invokePlayServices$lambda$2$0((Executor) obj3, (t22) obj2, (Exception) obj);
            case 2:
                in3 in3Var = (in3) obj3;
                q63 q63Var = (q63) obj2;
                zn7 zn7Var = (zn7) obj;
                zn7 zn7VarJ = in3Var.j(q63Var);
                if (zn7VarJ != null) {
                    zn7Var = zn7VarJ;
                }
                return new hn3(zn7Var, in3Var.l(), q63Var);
            case 3:
                String str3 = (String) obj2;
                char[] cArr = (char[]) obj;
                File file = new File((String) obj3);
                l0 l0Var = lv1.e;
                str3.getClass();
                f27 f27Var = null;
                char[] cArrCopyOf = cArr != null ? Arrays.copyOf(cArr, cArr.length) : null;
                try {
                    z07 z07Var = new z07(file, new b17(f27Var, cArrCopyOf, l0Var, 41));
                    try {
                        List listM = z07Var.m(str3);
                        ArrayList arrayList3 = new ArrayList(hl1.G0(listM, 10));
                        Iterator it2 = listM.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(tu0.B((SbaTarEntryInfo) it2.next()));
                        }
                        z07Var.close();
                        if (cArrCopyOf != null) {
                            Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                        }
                        return arrayList3;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(z07Var, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    if (cArrCopyOf != null) {
                        Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                    }
                    throw th3;
                }
            default:
                uo8 uo8Var = (uo8) obj3;
                Integer num = (Integer) obj2;
                String str4 = (String) obj;
                if (!uo8Var.a.isDestroyed()) {
                    TextView textView = uo8Var.b;
                    if (num != null && num.intValue() > 0) {
                        str4 = str4 + " (" + num + ")";
                    }
                    textView.setText(str4);
                }
                return be8Var;
        }
    }
}
