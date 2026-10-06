package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pu1 implements ou1 {
    public final ClipData a;
    public final int b;
    public final int c;
    public final Uri d;
    public final Bundle e;

    public pu1(mu1 mu1Var) {
        ClipData clipData = mu1Var.a;
        clipData.getClass();
        this.a = clipData;
        int i = mu1Var.b;
        if (i < 0) {
            Locale locale = Locale.US;
            c6.f("source is out of range of [0, 5] (too low)");
            throw null;
        }
        if (i > 5) {
            Locale locale2 = Locale.US;
            c6.f("source is out of range of [0, 5] (too high)");
            throw null;
        }
        this.b = i;
        int i2 = mu1Var.c;
        if ((i2 & 1) == i2) {
            this.c = i2;
            this.d = mu1Var.d;
            this.e = mu1Var.e;
            return;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
    }

    @Override // defpackage.ou1
    public final ClipData a() {
        return this.a;
    }

    @Override // defpackage.ou1
    public final int b() {
        return this.c;
    }

    @Override // defpackage.ou1
    public final ContentInfo c() {
        return null;
    }

    @Override // defpackage.ou1
    public final int getSource() {
        return this.b;
    }

    public final String toString() {
        String strValueOf;
        String str;
        StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
        sb.append(this.a.getDescription());
        sb.append(", source=");
        int i = this.b;
        if (i == 0) {
            strValueOf = "SOURCE_APP";
        } else if (i == 1) {
            strValueOf = "SOURCE_CLIPBOARD";
        } else if (i == 2) {
            strValueOf = "SOURCE_INPUT_METHOD";
        } else if (i == 3) {
            strValueOf = "SOURCE_DRAG_AND_DROP";
        } else if (i != 4) {
            strValueOf = i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT";
        } else {
            strValueOf = "SOURCE_AUTOFILL";
        }
        sb.append(strValueOf);
        sb.append(", flags=");
        int i2 = this.c;
        sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
        Uri uri = this.d;
        if (uri == null) {
            str = "";
        } else {
            str = ", hasLinkUri(" + uri.toString().length() + ")";
        }
        sb.append(str);
        return dj7.n(sb, this.e != null ? ", hasExtras" : "", "}");
    }
}
