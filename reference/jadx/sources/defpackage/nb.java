package defpackage;

import android.util.Log;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.material.internal.CheckableImageButton;
import com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment;
import com.pcloud.sdk.internal.a;
import java.util.ArrayList;
import java.util.concurrent.ScheduledExecutorService;
import okhttp3.Response;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nb implements OnFailureListener, hm6, ny6, h9, v51 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ nb(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        return ((hw3) ((a) this.b).f(response, hw3.class)).d();
    }

    @Override // defpackage.v51
    public void b() {
        CheckableImageButton checkableImageButton = ((wl7) this.b).d;
        wx3.E(checkableImageButton, checkableImageButton.getContentDescription());
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 3:
                m37 m37Var = (m37) obj2;
                h37 h37Var = (h37) obj;
                Log.d(m37Var.a, "selectFolderResult=" + (h37Var != null ? el1.Y0(h37Var.b, null, null, null, new nk(11), 31) : null));
                ScheduleItem.Folders folders = m37Var.o().t;
                if (folders != null && h37Var != null) {
                    q47 q47VarP = m37Var.p();
                    ArrayList arrayList = h37Var.b;
                    ScheduleItem.Folders foldersCopy$default = ScheduleItem.Folders.copy$default(folders, null, null, false, !arrayList.isEmpty() ? arrayList : null, null, null, null, null, false, 503, null);
                    foldersCopy$default.getClass();
                    zn4.c(new rm(15, q47VarP, foldersCopy$default));
                }
                m37Var.o().t = null;
                break;
            default:
                WebViewAuthorizationFragment.i((WebViewAuthorizationFragment) obj2, (g9) obj);
                break;
        }
    }

    @Override // defpackage.ny6
    public boolean isCancellationRequested() {
        return ((Boolean) ((bt3) this.b).invoke()).booleanValue();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        ro roVar = (ro) this.b;
        if ((exc instanceof df3) || (exc instanceof tg3)) {
            roVar.q(null);
            return;
        }
        int i = 0;
        ((ScheduledExecutorService) roVar.b).execute(new av1(i, (js1) roVar.c, exc.getMessage()));
    }
}
