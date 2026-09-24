package defpackage;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tn2 {
    public static cb8 c(Context context, Uri uri) {
        String treeDocumentId = DocumentsContract.getTreeDocumentId(uri);
        if (DocumentsContract.isDocumentUri(context, uri)) {
            treeDocumentId = DocumentsContract.getDocumentId(uri);
        }
        if (treeDocumentId == null) {
            g84.k(uri, "Could not get document ID from Uri: ");
            return null;
        }
        Uri uriBuildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(uri, treeDocumentId);
        if (uriBuildDocumentUriUsingTree != null) {
            return new cb8(context, uriBuildDocumentUriUsingTree);
        }
        throw new NullPointerException("Failed to build documentUri from a tree: " + uri);
    }

    public abstract tn2 a(String str);

    public final tn2 b(String str) {
        for (tn2 tn2Var : g()) {
            if (str.equals(tn2Var.d())) {
                return tn2Var;
            }
        }
        return null;
    }

    public abstract String d();

    public abstract Uri e();

    public abstract long f();

    public abstract tn2[] g();
}
