package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cb8 extends tn2 {
    public final Context a;
    public final Uri b;

    public cb8(Context context, Uri uri) {
        this.a = context;
        this.b = uri;
    }

    @Override // defpackage.tn2
    public final tn2 a(String str) {
        Uri uriCreateDocument;
        Context context = this.a;
        try {
            uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), this.b, "", str);
        } catch (Exception unused) {
            uriCreateDocument = null;
        }
        if (uriCreateDocument != null) {
            return new cb8(context, uriCreateDocument);
        }
        return null;
    }

    @Override // defpackage.tn2
    public final String d() {
        return iz1.u(this.a, this.b, "_display_name");
    }

    @Override // defpackage.tn2
    public final Uri e() {
        return this.b;
    }

    @Override // defpackage.tn2
    public final long f() {
        return iz1.t(this.a, this.b, "_size", 0L);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0070 A[LOOP:1: B:25:0x006d->B:27:0x0070, LOOP_END] */
    @Override // defpackage.tn2
    public final tn2[] g() {
        Uri[] uriArr;
        tn2[] tn2VarArr;
        Context context = this.a;
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = this.b;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(DocumentsContract.buildDocumentUriUsingTree(uri, cursorQuery.getString(0)));
                    }
                    try {
                        xs1.q(cursorQuery);
                    } catch (RuntimeException e) {
                        throw e;
                    }
                } catch (Exception e2) {
                    Log.w("DocumentFile", "Failed query: " + e2);
                    if (cursorQuery != null) {
                        try {
                            xs1.q(cursorQuery);
                        } catch (RuntimeException e3) {
                            throw e3;
                        }
                    }
                    uriArr = (Uri[]) arrayList.toArray(new Uri[0]);
                    tn2VarArr = new tn2[uriArr.length];
                    for (int i = 0; i < uriArr.length; i++) {
                        tn2VarArr[i] = new cb8(context, uriArr[i]);
                    }
                    return tn2VarArr;
                }
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                try {
                    xs1.q(cursorQuery);
                    throw th;
                } catch (RuntimeException e4) {
                    throw e4;
                } catch (Exception unused) {
                    throw th;
                }
            }
        } catch (Exception unused2) {
        }
        uriArr = (Uri[]) arrayList.toArray(new Uri[0]);
        tn2VarArr = new tn2[uriArr.length];
        while (i < uriArr.length) {
            tn2VarArr[i] = new cb8(context, uriArr[i]);
        }
        return tn2VarArr;
    }
}
