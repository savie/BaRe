package defpackage;

import android.content.Context;
import android.os.CancellationSignal;
import android.view.MenuItem;
import android.view.View;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wr0 implements g36, OnFailureListener {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ wr0(Object obj, Object obj2, Object obj3, Object obj4) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
        this.d = obj4;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$2((CredentialProviderPlayServicesImpl) this.a, (CancellationSignal) this.b, (Executor) this.c, (t22) this.d, exc);
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        BlacklistActivity blacklistActivity = (BlacklistActivity) this.a;
        BlacklistApp blacklistApp = (BlacklistApp) this.b;
        bs0 bs0Var = (bs0) this.c;
        View view = (View) this.d;
        int itemId = menuItem.getItemId();
        jv1 jv1Var = null;
        if (itemId == R.id.action_clear) {
            zn4 zn4Var = zn4.a;
            zn4.b(null, new as0(blacklistApp, bs0Var, jv1Var, 0));
            return true;
        }
        if (itemId == R.id.blacklist_mode) {
            ns0.l(blacklistActivity, blacklistApp, el1.x1(bs0Var.e.a), null);
            return true;
        }
        if (itemId == R.id.action_delete_backups) {
            Const.J(blacklistActivity, R.string.delete_backups, new rm(2, blacklistActivity, blacklistApp));
            return true;
        }
        if (itemId != R.id.action_play_store) {
            return true;
        }
        Context context = view.getContext();
        context.getClass();
        ai8.l(context, blacklistApp.getPackageName());
        return true;
    }
}
