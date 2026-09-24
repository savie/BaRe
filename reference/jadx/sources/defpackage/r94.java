package defpackage;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r94 {
    public static final String[] c = {"*", "FCM", "GCM", ""};
    public final SharedPreferences a;
    public final String b;

    /* JADX WARN: Code duplicated, block: B:12:0x003f  */
    public r94(FirebaseApp firebaseApp) {
        this.a = firebaseApp.getApplicationContext().getSharedPreferences("com.google.android.gms.appid", 0);
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId == null) {
            gcmSenderId = firebaseApp.getOptions().getApplicationId();
            if (gcmSenderId.startsWith("1:") || gcmSenderId.startsWith("2:")) {
                String[] strArrSplit = gcmSenderId.split(":");
                if (strArrSplit.length != 4) {
                    gcmSenderId = null;
                } else {
                    gcmSenderId = strArrSplit[1];
                    if (gcmSenderId.isEmpty()) {
                        gcmSenderId = null;
                    }
                }
            }
        }
        this.b = gcmSenderId;
    }

    public final String a() {
        PublicKey publicKeyGeneratePublic;
        synchronized (this.a) {
            String strEncodeToString = null;
            String string = this.a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            try {
                publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(string, 8)));
            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
                Log.w("ContentValues", "Invalid key stored " + e);
                publicKeyGeneratePublic = null;
            }
            if (publicKeyGeneratePublic == null) {
                return null;
            }
            try {
                byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(publicKeyGeneratePublic.getEncoded());
                bArrDigest[0] = (byte) (((bArrDigest[0] & 15) + OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) & 255);
                strEncodeToString = Base64.encodeToString(bArrDigest, 0, 8, 11);
            } catch (NoSuchAlgorithmException unused) {
                Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            }
            return strEncodeToString;
        }
    }
}
