package com.microsoft.identity.common.internal.fido;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.internal.util.CommonMoshiJsonAdapter;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.logging.Logger;
import defpackage.an5;
import defpackage.bw3;
import defpackage.f51;
import defpackage.kv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.nc8;
import defpackage.nd2;
import defpackage.oa6;
import defpackage.ph6;
import defpackage.qj7;
import defpackage.u22;
import defpackage.ww3;
import defpackage.yx1;
import defpackage.zv3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredManFidoManager implements IFidoManager {
    private static final String TAG = String.valueOf(ph6.a(CredManFidoManager.class).c());
    private final Context context;
    private final u22 credentialManager;
    private final IFidoManager legacyManager;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.fido.CredManFidoManager$authenticate$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.fido.CredManFidoManager", f = "CredManFidoManager.kt", l = {91, 102}, m = "authenticate")
    final class AnonymousClass1 extends kv1 {
        CredManFidoManager L$0;
        String L$1;
        String L$2;
        List L$3;
        String L$4;
        qj7 L$5;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(kv1 kv1Var) {
            super(kv1Var);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            return CredManFidoManager.this.authenticate(null, null, null, null, null, this);
        }
    }

    public CredManFidoManager(Context context, LegacyFido2ApiManager legacyFido2ApiManager) {
        context.getClass();
        this.context = context;
        this.legacyManager = legacyFido2ApiManager;
        this.credentialManager = new u22(context);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // com.microsoft.identity.common.internal.fido.IFidoManager
    public final Object authenticate(String str, String str2, List list, String str3, qj7 qj7Var, kv1 kv1Var) throws an5 {
        AnonymousClass1 anonymousClass1;
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object objB = anonymousClass2.result;
        int i2 = anonymousClass2.label;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(objB);
                String str4 = TAG + ":authenticate";
                qj7Var.getClass();
                int i3 = WebAuthnJsonUtil.a;
                str.getClass();
                str2.getClass();
                str3.getClass();
                ArrayList arrayList = new ArrayList();
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new PublicKeyCredentialDescriptor((String) it.next()));
                    }
                }
                byte[] bytes = str.getBytes(f51.a);
                bytes.getClass();
                String strEncodeToString = Base64.encodeToString(bytes, 11);
                strEncodeToString.getClass();
                zv3 zv3Var = new zv3(14, nc8.I(new ww3(new CommonMoshiJsonAdapter().toJson(new PublicKeyCredentialRequestOptions(strEncodeToString, str2, arrayList, str3)))), this.legacyManager != null && CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC) && Build.VERSION.SDK_INT < 34);
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info(str4, "Calling Credential Manager with a GetCredentialRequest.");
                u22 u22Var = this.credentialManager;
                Context context = this.context;
                anonymousClass2.L$0 = this;
                anonymousClass2.L$1 = str;
                anonymousClass2.L$2 = str2;
                anonymousClass2.L$3 = list;
                anonymousClass2.L$4 = str3;
                anonymousClass2.L$5 = qj7Var;
                anonymousClass2.label = 1;
                u22Var.getClass();
                objB = u22.b(context, zv3Var, anonymousClass2);
                if (objB == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i2 != 1) {
                    if (i2 == 2) {
                        lg7.H(objB);
                        return objB;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                qj7Var = anonymousClass2.L$5;
                str3 = anonymousClass2.L$4;
                list = anonymousClass2.L$3;
                str2 = anonymousClass2.L$2;
                str = anonymousClass2.L$1;
                CredManFidoManager credManFidoManager = anonymousClass2.L$0;
                lg7.H(objB);
            }
            oa6 oa6Var = (oa6) ((bw3) objB).a;
            int i5 = WebAuthnJsonUtil.a;
            return WebAuthnJsonUtil.extractAuthenticatorAssertionResponseJson(oa6Var.c);
        } catch (an5 e) {
            IFidoManager iFidoManager = this.legacyManager;
            if (iFidoManager == null) {
                throw e;
            }
            anonymousClass2.L$0 = null;
            anonymousClass2.L$1 = null;
            anonymousClass2.L$2 = null;
            anonymousClass2.L$3 = null;
            anonymousClass2.L$4 = null;
            anonymousClass2.L$5 = null;
            anonymousClass2.label = 2;
            Object objAuthenticate = iFidoManager.authenticate(str, str2, list, str3, qj7Var, anonymousClass2);
            if (objAuthenticate != yx1Var) {
                return objAuthenticate;
            }
        }
    }
}
