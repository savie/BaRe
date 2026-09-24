package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kb4 extends g3 {
    public final ib4 a = new ib4();
    public final ArrayList b = new ArrayList();

    @Override // defpackage.g3
    public final void a(CharSequence charSequence) {
        this.b.add(charSequence);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0037 A[LOOP:2: B:17:0x0033->B:19:0x0037, LOOP_END] */
    @Override // defpackage.g3
    public final void d() {
        int i;
        StringBuilder sb;
        int i2;
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        do {
            size--;
            if (size >= 0) {
                CharSequence charSequence = (CharSequence) arrayList.get(size);
                int length = charSequence.length();
                i2 = 0;
                while (true) {
                    if (i2 < length) {
                        char cCharAt = charSequence.charAt(i2);
                        if (cCharAt != ' ') {
                            switch (cCharAt) {
                                case XmlPullParser.COMMENT /* 9 */:
                                case '\n':
                                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                case '\f':
                                case '\r':
                                    break;
                            }
                        }
                        i2++;
                    } else {
                        i2 = -1;
                    }
                }
            }
            sb = new StringBuilder();
            for (i = 0; i < size + 1; i++) {
                sb.append((CharSequence) arrayList.get(i));
                sb.append('\n');
            }
            this.a.f = sb.toString();
        } while (i2 == -1);
        sb = new StringBuilder();
        while (i < size + 1) {
            sb.append((CharSequence) arrayList.get(i));
            sb.append('\n');
        }
        this.a.f = sb.toString();
    }

    @Override // defpackage.g3
    public final ws0 e() {
        return this.a;
    }

    @Override // defpackage.g3
    public final ys0 h(un2 un2Var) {
        if (un2Var.g >= 4) {
            return new ys0(-1, un2Var.c + 4, false);
        }
        if (un2Var.h) {
            return ys0.a(un2Var.e);
        }
        return null;
    }
}
