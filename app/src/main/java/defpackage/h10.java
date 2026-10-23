package defpackage;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.List;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h10 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h10(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = 1;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((k10) obj2).l.invoke((l10) obj);
                break;
            case 1:
                ((ac1) obj2).m.invoke((bc1) obj);
                break;
            case 2:
                int i3 = ChatActivity.O;
                Context context = ((tv1) obj2).a.getContext();
                context.getClass();
                Intent intentPutExtra = new Intent(context, (Class<?>) ChatActivity.class).putExtra("extra_conversation", (qv1) obj);
                intentPutExtra.getClass();
                context.startActivity(intentPutExtra);
                break;
            case 3:
                ji jiVar = (ji) obj2;
                gj2 gj2Var = (gj2) obj;
                Const.f(jiVar.getPackageName(), eq3.j(gj2Var.a.getPackageName(), ":app_package_name"), new jh(i2, gj2Var, jiVar));
                break;
            case 4:
                uv2 uv2Var = (uv2) obj;
                if (((ConstraintLayout) obj2).isEnabled()) {
                    uv2Var.f.invoke(Boolean.FALSE);
                    uv2Var.j(true);
                    break;
                }
                break;
            case 5:
                FolderDetailActivity.a0(((kl3) obj2).a, null, ((ol3) obj).a, 1);
                break;
            case 6:
                ((wa) obj2).dismiss();
                ((ye4) obj).invoke();
                break;
            default:
                iu8 iu8Var = ((as8) obj2).b;
                List list = ((zt8) ((au8) obj)).a;
                iu8Var.getClass();
                zn4.c(new rm(16, list, iu8Var));
                break;
        }
    }
}
