package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.notice.NoticeItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ro5 extends xh8 {
    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        db2 db2VarB = eb2Var.b();
        ArrayList arrayList = new ArrayList();
        Iterator it = (Iterator) db2VarB.b;
        while (it.hasNext()) {
            hk5 hk5Var = (hk5) it.next();
            NoticeItem noticeItem = (NoticeItem) io4.j("NoticeRepo", null, true, new as4(new eb2(((eb2) db2VarB.c).b.d(hk5Var.a.a), sb4.d(hk5Var.b)), 6), 10);
            if (noticeItem != null) {
                arrayList.add(noticeItem);
            }
        }
        so5.d.l(arrayList);
    }
}
