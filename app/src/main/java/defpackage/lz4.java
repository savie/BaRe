package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lz4 extends Handler {
    public final /* synthetic */ nz4 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lz4(nz4 nz4Var, Looper looper) {
        super(looper);
        this.a = nz4Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int size;
        wc9[] wc9VarArr;
        if (message.what != 1) {
            super.handleMessage(message);
            return;
        }
        nz4 nz4Var = this.a;
        while (true) {
            synchronized (((HashMap) nz4Var.c)) {
                try {
                    size = ((ArrayList) nz4Var.e).size();
                    if (size <= 0) {
                        return;
                    }
                    wc9VarArr = new wc9[size];
                    ((ArrayList) nz4Var.e).toArray(wc9VarArr);
                    ((ArrayList) nz4Var.e).clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i = 0; i < size; i++) {
                wc9 wc9Var = wc9VarArr[i];
                int size2 = ((ArrayList) wc9Var.c).size();
                for (int i2 = 0; i2 < size2; i2++) {
                    mz4 mz4Var = (mz4) ((ArrayList) wc9Var.c).get(i2);
                    if (!mz4Var.d) {
                        mz4Var.b.onReceive((Context) nz4Var.b, (Intent) wc9Var.b);
                    }
                }
            }
        }
    }
}
