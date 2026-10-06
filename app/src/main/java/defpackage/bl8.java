package defpackage;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bl8 {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static qu1 b(View view, qu1 qu1Var) {
        ContentInfo contentInfoC = qu1Var.a.c();
        Objects.requireNonNull(contentInfoC);
        ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoC);
        if (contentInfoPerformReceiveContent == null) {
            return null;
        }
        return contentInfoPerformReceiveContent == contentInfoC ? qu1Var : new qu1(new nu1(contentInfoPerformReceiveContent));
    }
}
