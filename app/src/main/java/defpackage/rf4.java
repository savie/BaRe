package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.data.b;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.settings.LicensesActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rf4 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rf4(int i, Object obj, Object obj2) {
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
                ((wa) obj2).dismiss();
                ((cf4) obj).invoke();
                break;
            case 1:
                Const.B((LicensesActivity) obj2, nq7.H0(((nt4) obj).b).toString());
                break;
            case 2:
                NoticeItem noticeItem = (NoticeItem) obj;
                nu nuVar = ((qo5) obj2).o;
                if (nuVar != null) {
                    nuVar.invoke(noticeItem);
                }
                break;
            default:
                b bVar = (b) obj;
                cz czVar = ((j57) obj2).n;
                if (czVar != null) {
                    czVar.invoke(bVar.q.getItemId());
                }
                break;
        }
    }
}
