package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mp9 implements bj9 {
    public static final mp9 a = new mp9();

    @Override // defpackage.bj9
    public final boolean zza(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case XmlPullParser.COMMENT /* 9 */:
            case 10:
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
            case 12:
            case 13:
            case 17:
            case 18:
            case Argon2.V13 /* 19 */:
            case 20:
                return true;
            case 14:
            case 15:
            case Argon2.V10 /* 16 */:
            default:
                return false;
        }
    }
}
