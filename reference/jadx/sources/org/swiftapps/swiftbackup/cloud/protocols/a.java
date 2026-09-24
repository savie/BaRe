package org.swiftapps.swiftbackup.cloud.protocols;

import android.content.SharedPreferences;
import android.util.Log;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.cz4;
import defpackage.dd1;
import defpackage.f13;
import defpackage.gv7;
import defpackage.io4;
import defpackage.n84;
import defpackage.pe4;
import defpackage.rs9;
import defpackage.tn2;
import defpackage.vr6;
import defpackage.w14;
import defpackage.y32;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static void a(CloudCredentials cloudCredentials, tn2 tn2Var) throws IOException {
        OutputStream outputStreamOpenOutputStream;
        String strI = null;
        vr6.i$default(vr6.INSTANCE, "CloudCredentials", "exportSettings called for file:" + (tn2Var != null ? tn2Var.e() : null), null, 4, null);
        if (tn2Var == null || cloudCredentials == null || (outputStreamOpenOutputStream = f13.d().getContentResolver().openOutputStream(tn2Var.e())) == null) {
            return;
        }
        gv7 gv7Var = w14.a;
        try {
            strI = w14.d().i(cloudCredentials);
        } catch (Exception unused) {
        }
        if (strI == null) {
            return;
        }
        try {
            n84.e(strI, outputStreamOpenOutputStream, Charset.defaultCharset());
            outputStreamOpenOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(outputStreamOpenOutputStream, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003c  */
    public static CloudCredentials b(dd1 dd1Var) {
        String string;
        String strA;
        String string2;
        String strA2;
        CloudCredentials.CloudPrivateKey cloudPrivateKey;
        String string3;
        dd1Var.getClass();
        try {
            String str = "cloud_creds_pswd_" + dd1Var;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences.getString(str, null);
                if (string == null) {
                    strA = null;
                } else {
                    if ((string.length() > 0 ? string : null) != null) {
                        gv7 gv7Var = y32.a;
                        strA = y32.a(string);
                    } else {
                        strA = null;
                    }
                }
                String str2 = "cloud_creds_pvt_key_" + dd1Var;
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string2 = sharedPreferences2.getString(str2, null);
                    if (string2 != null) {
                        gv7 gv7Var2 = y32.a;
                        strA2 = y32.a(string2);
                    } else {
                        strA2 = null;
                    }
                    try {
                        gv7 gv7Var3 = w14.a;
                        cloudPrivateKey = (CloudCredentials.CloudPrivateKey) w14.c().c(strA2, CloudCredentials.CloudPrivateKey.class);
                    } catch (Exception unused) {
                        cloudPrivateKey = null;
                    }
                    String str3 = "cloud_creds_" + dd1Var;
                    try {
                        SharedPreferences sharedPreferences3 = cz4.f;
                        if (sharedPreferences3 == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        string3 = sharedPreferences3.getString(str3, null);
                        if (string3 != null && string3.length() != 0) {
                            gv7 gv7Var4 = w14.a;
                            CloudCredentials cloudCredentials = (CloudCredentials) w14.c().c(string3, CloudCredentials.class);
                            cloudCredentials.getClass();
                            return cloudCredentials.copy((16383 & 1) != 0 ? cloudCredentials.cloudTypeConstant : null, (16383 & 2) != 0 ? cloudCredentials.protocol : null, (16383 & 4) != 0 ? cloudCredentials.server : null, (16383 & 8) != 0 ? cloudCredentials.path : null, (16383 & 16) != 0 ? cloudCredentials.port : null, (16383 & 32) != 0 ? cloudCredentials.authType : null, (16383 & 64) != 0 ? cloudCredentials.username : null, (16383 & 128) != 0 ? cloudCredentials.password : strA, (16383 & 256) != 0 ? cloudCredentials.key : cloudPrivateKey, (16383 & 512) != 0 ? cloudCredentials.encryption : null, (16383 & 1024) != 0 ? cloudCredentials.cloudServiceId : null, (16383 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudCredentials._region : null, (16383 & 4096) != 0 ? cloudCredentials.providerPresetId : null, (16383 & 8192) != 0 ? cloudCredentials.displayName : null);
                        }
                        return null;
                    } catch (ClassCastException unused2) {
                        string3 = null;
                    }
                } catch (ClassCastException unused3) {
                    string2 = null;
                }
            } catch (ClassCastException unused4) {
                string = null;
            }
        } catch (Exception e) {
            Log.e("CloudCredentials", "getSavedCredentials", e);
            vr6.e$default(vr6.INSTANCE, "CloudCredentials", "getSavedCredentials: cloudType=" + dd1Var + " msg=" + io4.b(e), null, 4, null);
        }
    }
}
