package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a38 implements c38, dh5, gg8 {
    public static final String[] b = {"_data"};
    public final ContentResolver a;

    public /* synthetic */ a38(ContentResolver contentResolver) {
        this.a = contentResolver;
    }

    @Override // defpackage.gg8
    public ra2 j(Uri uri) {
        return new g60(this.a, uri, 0);
    }

    @Override // defpackage.c38
    public Cursor u(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        return this.a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND video_id = ?", new String[]{lastPathSegment}, null);
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new hg8(this);
    }
}
