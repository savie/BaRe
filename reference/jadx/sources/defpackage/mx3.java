package defpackage;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.data.a;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mx3 implements ql6 {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ mx3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        switch (this.a) {
            case 0:
                return true;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) && !"robolectric".equals(Build.FINGERPRINT);
        }
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        int i3 = this.a;
        Object obj2 = this.b;
        switch (i3) {
            case 0:
                return or0.e((nr0) obj2, ((gl7) obj).b());
            default:
                uo2 uo2Var = (uo2) obj2;
                ArrayList arrayList = uo2Var.d;
                m35 m35Var = uo2Var.c;
                gh ghVar = new gh();
                ms8.j(m35Var, "Argument must not be null");
                ghVar.a = m35Var;
                ms8.j(arrayList, "Argument must not be null");
                ghVar.b = arrayList;
                ghVar.c = new a((ParcelFileDescriptor) obj);
                return uo2Var.a(ghVar, i, i2, ou5Var, uo2.j);
        }
    }
}
