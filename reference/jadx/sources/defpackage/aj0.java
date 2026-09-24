package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class aj0 {
    public final il0 a;
    public final int b;

    public aj0(il0 il0Var, int i) {
        this.a = il0Var;
        this.b = i;
    }

    public final void a(zi0 zi0Var) {
        zi0Var.getClass();
        il0 il0Var = this.a;
        String string = il0Var.getString(R.string.select_backup_locations);
        string.getClass();
        jj0 jj0Var = new jj0("locations", string, false, (bt3) null, 28);
        q05 q05Var = q05.DEVICE;
        String string2 = q05Var.toString();
        String string3 = il0Var.getString(R.string.device);
        string3.getClass();
        Integer numValueOf = Integer.valueOf(R.drawable.ic_device);
        int i = this.b;
        li0 li0Var = new li0(string2, string3, (String) null, numValueOf, (Integer) null, q05Var.isCheckedInExpansion(i), (ao) null, 212);
        List list = jj0Var.c;
        list.add(li0Var);
        q05 q05Var2 = q05.CLOUD;
        String string4 = q05Var2.toString();
        String string5 = il0Var.getString(R.string.cloud);
        string5.getClass();
        list.add(new li0(string4, string5, (String) null, Integer.valueOf(R.drawable.ic_cloud), (Integer) null, q05Var2.isCheckedInExpansion(i), (ao) null, 212));
        mj0 mj0Var = new mj0(fl1.C0(jj0Var), false);
        new lj0(il0Var).j(mj0Var, new yi0(0, zi0Var, this, mj0Var));
    }
}
