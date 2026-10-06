package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Context;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.fragment.app.u;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.logging.Logger;
import defpackage.e22;
import defpackage.f22;
import defpackage.fz5;
import defpackage.g12;
import defpackage.g84;
import defpackage.kv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.ln5;
import defpackage.m12;
import defpackage.nc8;
import defpackage.nd2;
import defpackage.o21;
import defpackage.p22;
import defpackage.r22;
import defpackage.u22;
import defpackage.vk9;
import defpackage.ww3;
import defpackage.x22;
import defpackage.yx1;
import defpackage.zv3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialManagerHandler {
    private final u activity;
    private final u22 mCredMan;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.providers.oauth2.CredentialManagerHandler$createPasskey$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.providers.oauth2.CredentialManagerHandler", f = "CredentialManagerHandler.kt", l = {58}, m = "createPasskey")
    final class AnonymousClass1 extends kv1 {
        String L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(kv1 kv1Var) {
            super(kv1Var);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            return CredentialManagerHandler.this.createPasskey(null, this);
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.providers.oauth2.CredentialManagerHandler$getPasskey$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.providers.oauth2.CredentialManagerHandler", f = "CredentialManagerHandler.kt", l = {82}, m = "getPasskey")
    final class C00241 extends kv1 {
        String L$0;
        int label;
        /* synthetic */ Object result;

        public C00241(kv1 kv1Var) {
            super(kv1Var);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            return CredentialManagerHandler.this.getPasskey(null, this);
        }
    }

    public CredentialManagerHandler(u uVar) {
        this.activity = uVar;
        Context applicationContext = uVar.getApplicationContext();
        applicationContext.getClass();
        this.mCredMan = new u22(applicationContext);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object createPasskey(String str, kv1 kv1Var) {
        AnonymousClass1 anonymousClass1;
        String str2;
        if (kv1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) kv1Var;
            int i = anonymousClass1.label;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                anonymousClass1.label = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                anonymousClass1 = new AnonymousClass1(kv1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(kv1Var);
        }
        Object objS = anonymousClass1.result;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            lg7.H(objS);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 < 28) {
                String strJ = fz5.j(i3, "Passkey creation is not supported on Android versions below 9 (Pie). Current version: ");
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("CredentialManagerHandler:createPasskey", strJ);
                g84.j("Passkey creation requires Android 9 or higher.");
                return null;
            }
            e22 e22Var = new e22(str, null, false, null, false, 30, null);
            anonymousClass1.L$0 = "CredentialManagerHandler:createPasskey";
            anonymousClass1.label = 1;
            u22 u22Var = this.mCredMan;
            u22Var.getClass();
            o21 o21Var = new o21(1, nc8.D(anonymousClass1));
            o21Var.u();
            CancellationSignal cancellationSignal = new CancellationSignal();
            o21Var.w(new r22(cancellationSignal));
            vk9 vk9Var = new vk9(o21Var, 4);
            p22 p22Var = new p22();
            x22 x22VarM = ln5.m(new ln5(u22Var.a), e22Var);
            if (x22VarM == null) {
                vk9Var.onError(new g12("createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
            } else {
                u uVar = this.activity;
                if (uVar.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                    vk9Var.onError(new m12("createCredential is not supported on this device"));
                } else {
                    x22VarM.onCreateCredential(uVar, e22Var, cancellationSignal, p22Var, vk9Var);
                }
            }
            objS = o21Var.s();
            yx1 yx1Var = yx1.a;
            if (objS == yx1Var) {
                return yx1Var;
            }
            str2 = "CredentialManagerHandler:createPasskey";
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = anonymousClass1.L$0;
            lg7.H(objS);
        }
        objS.getClass();
        f22 f22Var = (f22) objS;
        int i5 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(str2, "Passkey created successfully.");
        return f22Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object getPasskey(String str, kv1 kv1Var) {
        C00241 c00241;
        String str2;
        if (kv1Var instanceof C00241) {
            c00241 = (C00241) kv1Var;
            int i = c00241.label;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                c00241.label = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                c00241 = new C00241(kv1Var);
            }
        } else {
            c00241 = new C00241(kv1Var);
        }
        Object objB = c00241.result;
        int i2 = c00241.label;
        if (i2 == 0) {
            lg7.H(objB);
            zv3 zv3Var = new zv3(30, nc8.I(new ww3(str)), false);
            c00241.L$0 = "CredentialManagerHandler:getPasskey";
            c00241.label = 1;
            this.mCredMan.getClass();
            objB = u22.b(this.activity, zv3Var, c00241);
            yx1 yx1Var = yx1.a;
            if (objB == yx1Var) {
                return yx1Var;
            }
            str2 = "CredentialManagerHandler:getPasskey";
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = c00241.L$0;
            lg7.H(objB);
        }
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(str2, "Passkey retrieved successfully.");
        return objB;
    }
}
