package defpackage;

import android.content.DialogInterface;
import java.util.Set;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class fp3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fp3(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                ((kp3) obj2).i().V().j(((zk3) obj).a, to3.LOCAL);
                break;
            case 1:
                zm zmVar = (zm) obj2;
                Set set = (Set) obj;
                String packageName = zmVar.getPackageName();
                packageName.getClass();
                ww4 ww4VarD = z85.d(packageName, set, ((Boolean) hs5.b.getValue()).booleanValue(), ((Boolean) hs5.c.getValue()).booleanValue());
                dz5 dz5Var = dz5.a;
                dz5.r(zmVar, ww4VarD, set);
                break;
            case 2:
                er6.X((zn7) obj2, (er6) obj);
                break;
            default:
                et8 et8Var = WifiActivity.Y;
                et8 et8Var2 = (et8) ((vt8) obj2).a.get(i);
                iu8 iu8VarA0 = ((WifiActivity) obj).a0();
                et8Var2.getClass();
                zn4 zn4Var = zn4.a;
                zn4.c(new lx(11, iu8VarA0, et8Var2));
                break;
        }
    }
}
