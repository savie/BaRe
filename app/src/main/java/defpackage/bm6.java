package defpackage;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bm6 implements ch5 {
    public final Context a;
    public final ch5 b;

    public bm6(Context context, ch5 ch5Var) {
        this.a = context.getApplicationContext();
        this.b = ch5Var;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        return "android.resource".equals(uri.getScheme()) && this.a.getPackageName().equals(uri.getAuthority());
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        Uri uri = (Uri) obj;
        List<String> pathSegments = uri.getPathSegments();
        int size = pathSegments.size();
        ch5 ch5Var = this.b;
        if (size == 1) {
            try {
                int i3 = Integer.parseInt(uri.getPathSegments().get(0));
                if (i3 != 0) {
                    return ch5Var.b(Integer.valueOf(i3), i, i2, ou5Var);
                }
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri);
                    return null;
                }
            } catch (NumberFormatException e) {
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri, e);
                }
            }
        } else if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            Context context = this.a;
            int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
            if (identifier != 0) {
                return ch5Var.b(Integer.valueOf(identifier), i, i2, ou5Var);
            }
            if (Log.isLoggable("ResourceUriLoader", 5)) {
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri);
                return null;
            }
        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
            Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri);
        }
        return null;
    }
}
