package defpackage;

import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kc4 extends InputConnectionWrapper {
    public final /* synthetic */ er1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kc4(InputConnection inputConnection, er1 er1Var) {
        super(inputConnection, false);
        this.a = er1Var;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        Bundle bundle2;
        lu1 ku1Var;
        vk9 vk9Var = inputContentInfo == null ? null : new vk9(new jq6(inputContentInfo, 12), 8);
        lo loVar = (lo) this.a.a;
        if ((i & 1) != 0) {
            try {
                ((InputContentInfo) ((jq6) vk9Var.b).b).requestPermission();
                InputContentInfo inputContentInfo2 = (InputContentInfo) ((jq6) vk9Var.b).b;
                bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle2.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo2);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
            }
        } else {
            bundle2 = bundle;
        }
        InputContentInfo inputContentInfo3 = (InputContentInfo) ((jq6) vk9Var.b).b;
        ClipData clipData = new ClipData(inputContentInfo3.getDescription(), new ClipData.Item(inputContentInfo3.getContentUri()));
        if (Build.VERSION.SDK_INT >= 31) {
            ku1Var = new ku1(clipData, 2);
        } else {
            mu1 mu1Var = new mu1();
            mu1Var.a = clipData;
            mu1Var.b = 2;
            ku1Var = mu1Var;
        }
        ku1Var.a(inputContentInfo3.getLinkUri());
        ku1Var.setExtras(bundle2);
        if (dl8.j(loVar, ku1Var.build()) == null) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
