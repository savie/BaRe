package defpackage;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m51 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m51(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                Context context = ((TextView) obj).getContext();
                context.getClass();
                ((wg5) obj2).openFile(context);
                break;
            case 1:
                Config config = (Config) obj;
                int i2 = ConfigEditActivity.V;
                il0 il0Var = ((yq1) obj2).l;
                il0Var.getClass();
                mp6 mp6Var = mp6.a;
                if (!mp6.f()) {
                    Const.N(il0Var);
                } else {
                    Intent intentPutExtra = new Intent(il0Var, (Class<?>) ConfigEditActivity.class).putExtra("extra_config", config);
                    intentPutExtra.getClass();
                    il0Var.startActivity(intentPutExtra);
                }
                break;
            case 2:
                v53.a.f((ji) obj2, true);
                ((gj2) obj).o = true;
                break;
            case 3:
                uv2 uv2Var = (uv2) obj;
                if (((ConstraintLayout) obj2).isEnabled()) {
                    uv2Var.f.invoke(Boolean.TRUE);
                    uv2Var.j(true);
                    break;
                }
                break;
            case 4:
                ((mt3) obj2).invoke(null);
                sz8.m((wa) obj);
                break;
            default:
                ((mt3) obj2).invoke((ux5) obj);
                break;
        }
    }
}
