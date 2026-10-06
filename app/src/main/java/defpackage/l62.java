package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.os.Build;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.StyleSpan;
import android.util.Log;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;
import org.swiftapps.swiftbackup.cloud.protocols.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class l62 extends ws7 implements qt3 {
    public final /* synthetic */ m62 a;
    public final /* synthetic */ CloudCredentials b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l62(m62 m62Var, CloudCredentials cloudCredentials, boolean z, boolean z2, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = m62Var;
        this.b = cloudCredentials;
        this.c = z;
        this.d = z2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new l62(this.a, this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        l62 l62Var = (l62) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        l62Var.invokeSuspend(be8Var);
        return be8Var;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0327 A[Catch: Exception -> 0x0332, TryCatch #11 {Exception -> 0x0332, blocks: (B:106:0x0323, B:108:0x0327, B:111:0x0335, B:112:0x033a), top: B:305:0x0323 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0335 A[Catch: Exception -> 0x0332, TryCatch #11 {Exception -> 0x0332, blocks: (B:106:0x0323, B:108:0x0327, B:111:0x0335, B:112:0x033a), top: B:305:0x0323 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0350  */
    /* JADX WARN: Code duplicated, block: B:118:0x037e  */
    /* JADX WARN: Code duplicated, block: B:123:0x0391 A[Catch: Exception -> 0x03a8, TryCatch #5 {Exception -> 0x03a8, blocks: (B:121:0x0387, B:123:0x0391, B:125:0x0397, B:130:0x03a1, B:134:0x03ac, B:136:0x03c3, B:138:0x03d5, B:139:0x0428, B:140:0x0441), top: B:295:0x0387 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0397 A[Catch: Exception -> 0x03a8, TryCatch #5 {Exception -> 0x03a8, blocks: (B:121:0x0387, B:123:0x0391, B:125:0x0397, B:130:0x03a1, B:134:0x03ac, B:136:0x03c3, B:138:0x03d5, B:139:0x0428, B:140:0x0441), top: B:295:0x0387 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x039d  */
    /* JADX WARN: Code duplicated, block: B:128:0x039e  */
    /* JADX WARN: Code duplicated, block: B:130:0x03a1 A[Catch: Exception -> 0x03a8, TryCatch #5 {Exception -> 0x03a8, blocks: (B:121:0x0387, B:123:0x0391, B:125:0x0397, B:130:0x03a1, B:134:0x03ac, B:136:0x03c3, B:138:0x03d5, B:139:0x0428, B:140:0x0441), top: B:295:0x0387 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:136:0x03c3 A[Catch: Exception -> 0x03a8, TryCatch #5 {Exception -> 0x03a8, blocks: (B:121:0x0387, B:123:0x0391, B:125:0x0397, B:130:0x03a1, B:134:0x03ac, B:136:0x03c3, B:138:0x03d5, B:139:0x0428, B:140:0x0441), top: B:295:0x0387 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:139:0x0428 A[Catch: Exception -> 0x03a8, TryCatch #5 {Exception -> 0x03a8, blocks: (B:121:0x0387, B:123:0x0391, B:125:0x0397, B:130:0x03a1, B:134:0x03ac, B:136:0x03c3, B:138:0x03d5, B:139:0x0428, B:140:0x0441), top: B:295:0x0387 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x046e  */
    /* JADX WARN: Code duplicated, block: B:144:0x0474  */
    /* JADX WARN: Code duplicated, block: B:268:0x0713 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:269:0x0715  */
    /* JADX WARN: Code duplicated, block: B:270:0x0719  */
    /* JADX WARN: Code duplicated, block: B:295:0x0387 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:139:0x0428, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v9, types: [bn6] */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean z2;
        i62 i62Var;
        Object bn6Var;
        Object bn6Var2;
        ?? bn6Var3;
        Network activeNetwork;
        LinkProperties linkProperties;
        X509Certificate x509Certificate;
        CloudCredentials cloudCredentials;
        String str;
        CloudServiceId cloudServiceIdC;
        CloudServiceId cloudServiceId;
        CloudCredentials cloudCredentialsCopy;
        a aVar;
        dd1 dd1Var;
        String password;
        String strE;
        CloudCredentials.CloudPrivateKey key;
        String strE2;
        mj1 mj1Var;
        int i;
        lg7.H(obj);
        m62 m62Var = this.a;
        m62Var.h(R.string.processing);
        String strJ = eq3.j(m62Var.b, ".checkRootExists");
        CloudCredentials cloudCredentials2 = this.b;
        if (cloudCredentials2 == null || cloudCredentials2.getServer().length() <= 0) {
            g84.h(strJ.concat(": Invalid credentials!"));
            return null;
        }
        dd1 dd1Var2 = m62Var.f;
        if (dd1Var2 == null) {
            pe4.F("cloudType");
            throw null;
        }
        String server = cloudCredentials2.getServer();
        dz5 dz5Var = dz5.a;
        boolean zH = dz5.h("android.permission.ACCESS_LOCAL_NETWORK");
        int i2 = Build.VERSION.SDK_INT;
        SwiftApp.Companion companion = SwiftApp.d;
        zz4 zz4VarA = uz4.a(dd1Var2, server, zH, i2, SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion, new uk(0, dz5Var, dz5.class, "grantLocalNetworkPermissionWithRootOrShizuku", "grantLocalNetworkPermissionWithRootOrShizuku()Z", 0, 2));
        boolean zU = false;
        boolean z3 = this.c;
        if (zz4VarA == null) {
            if (ai8.i(SwiftApp.Companion.c())) {
                mj1 mj1Var2 = m62Var.e;
                if (mj1Var2 == null) {
                    pe4.F("cloudService");
                    throw null;
                }
                mj1Var2.u(cloudCredentials2);
                mj1 mj1Var3 = m62Var.e;
                if (mj1Var3 == null) {
                    pe4.F("cloudService");
                    throw null;
                }
                CloudOperationsImpl$LoginResult cloudOperationsImpl$LoginResultD = mj1Var3.d(this.d);
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, m62Var.b, "checkRootExists.LoginResult: " + cloudOperationsImpl$LoginResultD, null, 4, null);
                if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.Success) {
                    mj1 mj1Var4 = m62Var.e;
                    if (mj1Var4 == null) {
                        pe4.F("cloudService");
                        throw null;
                    }
                    mj1Var4.u(cloudCredentials2);
                    mj1 mj1Var5 = m62Var.e;
                    if (mj1Var5 == null) {
                        pe4.F("cloudService");
                        throw null;
                    }
                    String strD = eh1.d(mj1Var5);
                    if (strD == null || strD.length() == 0) {
                        z = z3;
                        ix6 ix6Var = m62Var.l;
                        if (strD == null) {
                            strD = "";
                        }
                        ix6Var.k(strD);
                    } else {
                        String strJ2 = eq3.j(m62Var.b, ": testReadWrite");
                        try {
                            String string = UUID.randomUUID().toString();
                            string.getClass();
                            Charset charset = f51.a;
                            str = "cloudService";
                            try {
                                byte[] bytes = string.getBytes(charset);
                                bytes.getClass();
                                z = z3;
                                try {
                                    String str2 = strD + "/TestFile_" + string + ".txt";
                                    long length = bytes.length;
                                    cloudCredentials = cloudCredentials2;
                                    try {
                                        vr6.i$default(vr6Var, strJ2, "Testing uploading a small file (" + length + " B) at path '" + str2 + "' with content '" + string + "'", null, 4, null);
                                        mj1 mj1Var6 = m62Var.e;
                                        if (mj1Var6 == null) {
                                            pe4.F(str);
                                            throw null;
                                        }
                                        if (mj1Var6.r(str2)) {
                                            throw new IllegalStateException("Exists check returned true for a file that shouldn't exist on the server yet!");
                                        }
                                        vr6.i$default(vr6Var, strJ2, "Starting upload...", null, 4, null);
                                        mj1 mj1Var7 = m62Var.e;
                                        if (mj1Var7 == null) {
                                            pe4.F(str);
                                            throw null;
                                        }
                                        mj1Var7.e(new c62(new uk(0, bytes, cy0.class, "inputStream", "inputStream([B)Ljava/io/ByteArrayInputStream;", 1, 1)), str2, length, null);
                                        vr6.i$default(vr6Var, strJ2, "Uploading likely successful", null, 4, null);
                                        vr6.i$default(vr6Var, strJ2, "Checking if the uploaded file exists at ".concat(str2), null, 4, null);
                                        mj1 mj1Var8 = m62Var.e;
                                        if (mj1Var8 == null) {
                                            pe4.F(str);
                                            throw null;
                                        }
                                        if (!mj1Var8.r(str2)) {
                                            throw new IllegalStateException("Exists check failed for test file! Either upload failed or server isn't allowing file read!");
                                        }
                                        vr6.i$default(vr6Var, strJ2, "File exists at ".concat(str2), null, 4, null);
                                        vr6.i$default(vr6Var, strJ2, "Downloading file at ".concat(str2), null, 4, null);
                                        mj1 mj1Var9 = m62Var.e;
                                        if (mj1Var9 == null) {
                                            pe4.F(str);
                                            throw null;
                                        }
                                        tc4 tc4VarC = mj1Var9.c(str2, null);
                                        try {
                                            String str3 = new String(cy0.E(tc4VarC.a), charset);
                                            tc4VarC.close();
                                            if (!string.equals(str3)) {
                                                throw new IllegalStateException(("Test string content doesn't match downloaded string content! Test='" + string + "', Downloaded='" + str3 + "'").toString());
                                            }
                                            vr6.i$default(vr6Var, strJ2, "Test string content matches the downloaded string content", null, 4, null);
                                            vr6.i$default(vr6Var, strJ2, "Deleting the test file at ".concat(str2), null, 4, null);
                                            try {
                                                mj1 mj1Var10 = m62Var.e;
                                                if (mj1Var10 == null) {
                                                    pe4.F(str);
                                                    throw null;
                                                }
                                                mj1Var10.j(str2);
                                                vr6.i$default(vr6Var, m62Var.b, "Confirming if test file was deleted...", null, 4, null);
                                                mj1 mj1Var11 = m62Var.e;
                                                if (mj1Var11 == null) {
                                                    pe4.F(str);
                                                    throw null;
                                                }
                                                if (mj1Var11.r(str2)) {
                                                    throw new IllegalStateException(("Unable to delete file at " + str2 + "!").toString());
                                                }
                                                vr6.i$default(vr6Var, strJ2, "Test file sucessfully deleted", null, 4, null);
                                                vr6.i$default(vr6Var, strJ2, "Test successful", null, 4, null);
                                                zU = true;
                                                if (zU && !z) {
                                                    try {
                                                        mj1Var = m62Var.e;
                                                        if (mj1Var != null) {
                                                            pe4.F(str);
                                                            throw null;
                                                        }
                                                        cloudServiceIdC = eh1.c(mj1Var, cloudCredentials.getCloudServiceId());
                                                        zU = zm5.u(cloudServiceIdC);
                                                        if (zU) {
                                                            CloudCredentials cloudCredentials3 = this.b;
                                                            cloudCredentialsCopy = cloudCredentials3.copy((16383 & 1) != 0 ? cloudCredentials3.cloudTypeConstant : null, (16383 & 2) != 0 ? cloudCredentials3.protocol : null, (16383 & 4) != 0 ? cloudCredentials3.server : null, (16383 & 8) != 0 ? cloudCredentials3.path : null, (16383 & 16) != 0 ? cloudCredentials3.port : null, (16383 & 32) != 0 ? cloudCredentials3.authType : null, (16383 & 64) != 0 ? cloudCredentials3.username : null, (16383 & 128) != 0 ? cloudCredentials3.password : null, (16383 & 256) != 0 ? cloudCredentials3.key : null, (16383 & 512) != 0 ? cloudCredentials3.encryption : null, (16383 & 1024) != 0 ? cloudCredentials3.cloudServiceId : cloudServiceIdC, (16383 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudCredentials3._region : null, (16383 & 4096) != 0 ? cloudCredentials3.providerPresetId : null, (16383 & 8192) != 0 ? cloudCredentials3.displayName : null);
                                                            cloudServiceId = cloudServiceIdC;
                                                            aVar = CloudCredentials.Companion;
                                                            dd1Var = m62Var.f;
                                                            if (dd1Var != null) {
                                                                pe4.F("cloudType");
                                                                throw null;
                                                            }
                                                            aVar.getClass();
                                                            if (cloudCredentialsCopy != null) {
                                                                try {
                                                                    if (zm5.u(cloudCredentialsCopy.getCloudServiceId())) {
                                                                        throw new IllegalArgumentException(("Can't save credentials, Invalid id = " + cloudCredentialsCopy.getCloudServiceId()).toString());
                                                                    }
                                                                    password = cloudCredentialsCopy.getPassword();
                                                                    if (password == null) {
                                                                        strE = null;
                                                                    } else {
                                                                        if (password.length() > 0) {
                                                                            password = null;
                                                                        }
                                                                        if (password != null) {
                                                                            gv7 gv7Var = y32.a;
                                                                            strE = y32.e(password);
                                                                        } else {
                                                                            strE = null;
                                                                        }
                                                                    }
                                                                    cz4.h("cloud_creds_pswd_" + dd1Var, strE);
                                                                    key = cloudCredentialsCopy.getKey();
                                                                    if (key != null) {
                                                                        gv7 gv7Var2 = w14.a;
                                                                        String strI = w14.c().i(key);
                                                                        gv7 gv7Var3 = y32.a;
                                                                        strE2 = y32.e(strI);
                                                                    } else {
                                                                        strE2 = null;
                                                                    }
                                                                    cz4.h("cloud_creds_pvt_key_" + dd1Var, strE2);
                                                                    CloudCredentials cloudCredentialsCopy2 = cloudCredentialsCopy.copy((16383 & 1) != 0 ? cloudCredentialsCopy.cloudTypeConstant : null, (16383 & 2) != 0 ? cloudCredentialsCopy.protocol : null, (16383 & 4) != 0 ? cloudCredentialsCopy.server : null, (16383 & 8) != 0 ? cloudCredentialsCopy.path : null, (16383 & 16) != 0 ? cloudCredentialsCopy.port : null, (16383 & 32) != 0 ? cloudCredentialsCopy.authType : null, (16383 & 64) != 0 ? cloudCredentialsCopy.username : null, (16383 & 128) != 0 ? cloudCredentialsCopy.password : null, (16383 & 256) != 0 ? cloudCredentialsCopy.key : null, (16383 & 512) != 0 ? cloudCredentialsCopy.encryption : null, (16383 & 1024) != 0 ? cloudCredentialsCopy.cloudServiceId : null, (16383 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudCredentialsCopy._region : null, (16383 & 4096) != 0 ? cloudCredentialsCopy.providerPresetId : null, (16383 & 8192) != 0 ? cloudCredentialsCopy.displayName : null);
                                                                    gv7 gv7Var4 = w14.a;
                                                                    cz4.h("cloud_creds_" + dd1Var, w14.c().j(cloudCredentialsCopy2, CloudCredentials.class));
                                                                } catch (Exception e) {
                                                                    Log.e("CloudCredentials", "saveCredentials", e);
                                                                    vr6.e$default(vr6.INSTANCE, "CloudCredentials", "saveCredentials: cloudType=" + dd1Var + " msg=" + io4.b(e), null, 4, null);
                                                                }
                                                            }
                                                        } else {
                                                            cloudServiceId = cloudServiceIdC;
                                                        }
                                                        vr6.i$default(vr6.INSTANCE, m62Var.b, "CloudServiceId = " + cloudServiceId, null, 4, null);
                                                    } catch (Exception e2) {
                                                        vr6.e$default(vr6.INSTANCE, m62Var.b, "Error while creating cloud service id", e2, null, 8, null);
                                                        cloudServiceIdC = null;
                                                    }
                                                }
                                            } catch (Exception e3) {
                                                e = e3;
                                                strJ2 = strJ2;
                                                vr6.e$default(vr6.INSTANCE, strJ2, "Test failed", e, null, 8, null);
                                            }
                                        } catch (Throwable th) {
                                            try {
                                                throw th;
                                            } catch (Throwable th2) {
                                                rs9.c(tc4VarC, th);
                                                throw th2;
                                            }
                                        }
                                    } catch (Exception e4) {
                                        e = e4;
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    cloudCredentials = cloudCredentials2;
                                }
                            } catch (Exception e6) {
                                e = e6;
                                cloudCredentials = cloudCredentials2;
                                z = z3;
                            }
                        } catch (Exception e7) {
                            e = e7;
                            cloudCredentials = cloudCredentials2;
                            z = z3;
                            str = "cloudService";
                        }
                        vr6.e$default(vr6.INSTANCE, strJ2, "Test failed", e, null, 8, null);
                        if (zU) {
                            mj1Var = m62Var.e;
                            if (mj1Var != null) {
                                pe4.F(str);
                                throw null;
                            }
                            cloudServiceIdC = eh1.c(mj1Var, cloudCredentials.getCloudServiceId());
                            zU = zm5.u(cloudServiceIdC);
                            if (zU) {
                                CloudCredentials cloudCredentials4 = this.b;
                                cloudCredentialsCopy = cloudCredentials4.copy((16383 & 1) != 0 ? cloudCredentials4.cloudTypeConstant : null, (16383 & 2) != 0 ? cloudCredentials4.protocol : null, (16383 & 4) != 0 ? cloudCredentials4.server : null, (16383 & 8) != 0 ? cloudCredentials4.path : null, (16383 & 16) != 0 ? cloudCredentials4.port : null, (16383 & 32) != 0 ? cloudCredentials4.authType : null, (16383 & 64) != 0 ? cloudCredentials4.username : null, (16383 & 128) != 0 ? cloudCredentials4.password : null, (16383 & 256) != 0 ? cloudCredentials4.key : null, (16383 & 512) != 0 ? cloudCredentials4.encryption : null, (16383 & 1024) != 0 ? cloudCredentials4.cloudServiceId : cloudServiceIdC, (16383 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudCredentials4._region : null, (16383 & 4096) != 0 ? cloudCredentials4.providerPresetId : null, (16383 & 8192) != 0 ? cloudCredentials4.displayName : null);
                                cloudServiceId = cloudServiceIdC;
                                aVar = CloudCredentials.Companion;
                                dd1Var = m62Var.f;
                                if (dd1Var != null) {
                                    pe4.F("cloudType");
                                    throw null;
                                }
                                aVar.getClass();
                                if (cloudCredentialsCopy != null) {
                                    if (zm5.u(cloudCredentialsCopy.getCloudServiceId())) {
                                        throw new IllegalArgumentException(("Can't save credentials, Invalid id = " + cloudCredentialsCopy.getCloudServiceId()).toString());
                                    }
                                    password = cloudCredentialsCopy.getPassword();
                                    if (password == null) {
                                        strE = null;
                                    } else {
                                        if (password.length() > 0) {
                                            password = null;
                                        }
                                        if (password != null) {
                                            gv7 gv7Var5 = y32.a;
                                            strE = y32.e(password);
                                        } else {
                                            strE = null;
                                        }
                                    }
                                    cz4.h("cloud_creds_pswd_" + dd1Var, strE);
                                    key = cloudCredentialsCopy.getKey();
                                    if (key != null) {
                                        gv7 gv7Var6 = w14.a;
                                        String strI2 = w14.c().i(key);
                                        gv7 gv7Var7 = y32.a;
                                        strE2 = y32.e(strI2);
                                    } else {
                                        strE2 = null;
                                    }
                                    cz4.h("cloud_creds_pvt_key_" + dd1Var, strE2);
                                    CloudCredentials cloudCredentialsCopy3 = cloudCredentialsCopy.copy((16383 & 1) != 0 ? cloudCredentialsCopy.cloudTypeConstant : null, (16383 & 2) != 0 ? cloudCredentialsCopy.protocol : null, (16383 & 4) != 0 ? cloudCredentialsCopy.server : null, (16383 & 8) != 0 ? cloudCredentialsCopy.path : null, (16383 & 16) != 0 ? cloudCredentialsCopy.port : null, (16383 & 32) != 0 ? cloudCredentialsCopy.authType : null, (16383 & 64) != 0 ? cloudCredentialsCopy.username : null, (16383 & 128) != 0 ? cloudCredentialsCopy.password : null, (16383 & 256) != 0 ? cloudCredentialsCopy.key : null, (16383 & 512) != 0 ? cloudCredentialsCopy.encryption : null, (16383 & 1024) != 0 ? cloudCredentialsCopy.cloudServiceId : null, (16383 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudCredentialsCopy._region : null, (16383 & 4096) != 0 ? cloudCredentialsCopy.providerPresetId : null, (16383 & 8192) != 0 ? cloudCredentialsCopy.displayName : null);
                                    gv7 gv7Var8 = w14.a;
                                    cz4.h("cloud_creds_" + dd1Var, w14.c().j(cloudCredentialsCopy3, CloudCredentials.class));
                                }
                            } else {
                                cloudServiceId = cloudServiceIdC;
                            }
                            vr6.i$default(vr6.INSTANCE, m62Var.b, "CloudServiceId = " + cloudServiceId, null, 4, null);
                        }
                    }
                } else {
                    z = z3;
                    vr6.e$default(vr6Var, m62Var.b, xs1.j("Error while logging in with url = ", cloudCredentials2.getBaseUrl(true)), null, 4, null);
                    Exception e8 = cloudOperationsImpl$LoginResultD.getE();
                    if (e8 != null) {
                        vr6.e$default(vr6Var, m62Var.b, "Error: ".concat(io4.b(e8)), null, 4, null);
                        if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.InvalidCredentials) {
                            ai8.m(SwiftApp.Companion.c(), R.string.invalid_login_details);
                        } else if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.UntrustedCertificate) {
                            mf8 mf8Var = e8 instanceof mf8 ? (mf8) e8 : null;
                            if (mf8Var == null || (x509Certificate = mf8Var.a) == null) {
                                z2 = z;
                                ai8.m(SwiftApp.Companion.c(), R.string.untrusted_certificate_msg);
                            } else {
                                z2 = z;
                                m62Var.p.k(new j62(x509Certificate, z2));
                            }
                        } else {
                            z2 = z;
                            if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.UnknownHostKey) {
                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                spannableStringBuilder.append((CharSequence) SwiftApp.Companion.c().getString(R.string.server_host_key_not_verifiable_msg));
                                for (pw5 pw5Var : ((CloudOperationsImpl$LoginResult.UnknownHostKey) cloudOperationsImpl$LoginResultD).getProperties()) {
                                    String str4 = (String) pw5Var.a;
                                    String str5 = (String) pw5Var.b;
                                    spannableStringBuilder.append((CharSequence) "\n\n");
                                    StyleSpan styleSpan = new StyleSpan(1);
                                    int length2 = spannableStringBuilder.length();
                                    spannableStringBuilder.append((CharSequence) (str4 + ": "));
                                    spannableStringBuilder.setSpan(styleSpan, length2, spannableStringBuilder.length(), 17);
                                    spannableStringBuilder.append((CharSequence) str5);
                                }
                                m62Var.q.k(new h62(new SpannedString(spannableStringBuilder), z2));
                            } else if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.TempConnectionError) {
                                dd1 dd1Var3 = m62Var.f;
                                if (dd1Var3 == null) {
                                    pe4.F("cloudType");
                                    throw null;
                                }
                                zz4 zz4VarC = uz4.c(dd1Var3, cloudCredentials2.getServer(), cloudCredentials2.getProtocol(), cloudCredentials2.m77getPort(), e8, dz5.h("android.permission.ACCESS_LOCAL_NETWORK"), i2, SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion, new ji1(0, dz5Var, dz5.class, "grantLocalNetworkPermissionWithRootOrShizuku", "grantLocalNetworkPermissionWithRootOrShizuku()Z", 0, 2), new rz4(3, SwiftApp.Companion.a(), SwiftApp.class, "isLocalNetworkTcpBlockedByPermission", "isLocalNetworkTcpBlockedByPermission(Ljava/lang/String;II)Z", 0));
                                vq6 vq6Var = e8 instanceof vq6 ? (vq6) e8 : null;
                                if (vq6Var != null) {
                                    ContentResolver contentResolver = SwiftApp.Companion.c().getContentResolver();
                                    try {
                                        bn6Var = Settings.Global.getString(contentResolver, "private_dns_mode");
                                    } catch (Throwable th3) {
                                        bn6Var = new bn6(th3);
                                    }
                                    if (bn6Var instanceof bn6) {
                                        bn6Var = null;
                                    }
                                    String str6 = (String) bn6Var;
                                    try {
                                        bn6Var2 = Settings.Global.getString(contentResolver, "private_dns_specifier");
                                    } catch (Throwable th4) {
                                        bn6Var2 = new bn6(th4);
                                    }
                                    if (bn6Var2 instanceof bn6) {
                                        bn6Var2 = null;
                                    }
                                    String str7 = (String) bn6Var2;
                                    String str8 = (str6 == null || nq7.j0(str6)) ? null : str6;
                                    String str9 = (str7 == null || nq7.j0(str7)) ? null : str7;
                                    String server2 = vq6Var.a;
                                    if (server2 == null) {
                                        server2 = cloudCredentials2.getServer();
                                    }
                                    String str10 = server2;
                                    List list = vq6Var.b;
                                    ov2 ov2Var = ov2.a;
                                    try {
                                        SwiftApp.Companion companion2 = SwiftApp.d;
                                        Object systemService = SwiftApp.Companion.c().getSystemService("connectivity");
                                        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                                        if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) == null) {
                                            bn6Var3 = ov2Var;
                                        } else {
                                            List<InetAddress> dnsServers = linkProperties.getDnsServers();
                                            dnsServers.getClass();
                                            bn6Var3 = new ArrayList();
                                            Iterator it = dnsServers.iterator();
                                            while (it.hasNext()) {
                                                String hostAddress = ((InetAddress) it.next()).getHostAddress();
                                                if (hostAddress == null || nq7.j0(hostAddress)) {
                                                    hostAddress = null;
                                                }
                                                if (hostAddress != null) {
                                                    bn6Var3.add(hostAddress);
                                                }
                                            }
                                        }
                                    } catch (Throwable th5) {
                                        bn6Var3 = new bn6(th5);
                                    }
                                    ?? r3 = ov2Var;
                                    if (!(bn6Var3 instanceof bn6)) {
                                        r3 = bn6Var3;
                                    }
                                    i62Var = new i62(str10, list, str8, str9, (List) r3);
                                } else {
                                    i62Var = null;
                                }
                                if (zz4VarC != null) {
                                    SwiftApp.Companion companion3 = SwiftApp.d;
                                    Context contextC = SwiftApp.Companion.c();
                                    String message = zz4VarC.getMessage();
                                    if (message == null) {
                                        message = "";
                                    }
                                    zn4 zn4Var = zn4.a;
                                    dj7.y(contextC, message);
                                } else if (i62Var != null) {
                                    m62Var.s.k(i62Var);
                                } else if (e8 instanceof ei7) {
                                    ix6 ix6Var2 = m62Var.m;
                                    String message2 = e8.getMessage();
                                    if (message2 == null) {
                                        message2 = "";
                                    }
                                    ix6Var2.k(message2);
                                } else {
                                    SwiftApp.Companion companion4 = SwiftApp.d;
                                    Context contextC2 = SwiftApp.Companion.c();
                                    String strB = io4.b(e8);
                                    zn4 zn4Var2 = zn4.a;
                                    dj7.y(contextC2, strB);
                                }
                            } else {
                                ai8.n(SwiftApp.Companion.c(), io4.b(e8));
                            }
                        }
                    }
                }
                z2 = z;
            } else {
                vr6.e$default(vr6.INSTANCE, m62Var.b, "Not connected to a WiFi network", null, 4, null);
                ai8.m(SwiftApp.Companion.c(), R.string.cloud_connection_failed);
            }
            if (z2) {
                if (zU) {
                    i = R.string.cloud_connection_successful;
                } else {
                    i = R.string.cloud_connection_failed;
                }
                SwiftApp.Companion companion5 = SwiftApp.d;
                Context contextC3 = SwiftApp.Companion.c();
                String strG = dj7.g(i);
                zn4 zn4Var3 = zn4.a;
                dj7.y(contextC3, strG);
            }
            if (!z2 && zU) {
                m62Var.h.k(Boolean.TRUE);
            }
            m62Var.f();
            return be8.a;
        }
        vr6.e$default(vr6.INSTANCE, m62Var.b, xs1.j("checkRootExists: ", zz4VarA.getMessage()), null, 4, null);
        Context contextC4 = SwiftApp.Companion.c();
        String message3 = zz4VarA.getMessage();
        if (message3 == null) {
            message3 = "";
        }
        zn4 zn4Var4 = zn4.a;
        dj7.y(contextC4, message3);
        z2 = z3;
        if (z2) {
            if (zU) {
                i = R.string.cloud_connection_successful;
            } else {
                i = R.string.cloud_connection_failed;
            }
            SwiftApp.Companion companion6 = SwiftApp.d;
            Context contextC5 = SwiftApp.Companion.c();
            String strG2 = dj7.g(i);
            zn4 zn4Var5 = zn4.a;
            dj7.y(contextC5, strG2);
        }
        if (!z2) {
            m62Var.h.k(Boolean.TRUE);
        }
        m62Var.f();
        return be8.a;
    }
}
