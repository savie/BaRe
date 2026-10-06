package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import com.microsoft.identity.common.logging.Logger;
import defpackage.ci7;
import defpackage.cy0;
import defpackage.dg4;
import defpackage.ie;
import defpackage.j16;
import defpackage.je;
import defpackage.l15;
import defpackage.t16;
import defpackage.vh7;
import defpackage.vk0;
import defpackage.vz0;
import defpackage.w16;
import defpackage.x53;
import java.io.IOException;
import java.security.Key;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class YubiKitSmartcardSession {
    private final w16 piv;

    public YubiKitSmartcardSession(w16 w16Var) {
        this.piv = w16Var;
    }

    private static void getAndPutCertDetailsInList(vh7 vh7Var, w16 w16Var, ArrayList arrayList) throws IOException, vk0, je {
        try {
            arrayList.add(new YubiKitCertDetails(w16Var.a(vh7Var), vh7Var));
        } catch (je e) {
            if (e.b != 27266) {
                throw e;
            }
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("YubiKitSmartcardSession:getAndPutCertDetailsInList", vh7Var + " slot is empty.");
        }
    }

    public final ArrayList getCertDetailsList() throws IOException, vk0, je {
        ArrayList arrayList = new ArrayList();
        vh7 vh7Var = vh7.AUTHENTICATION;
        w16 w16Var = this.piv;
        getAndPutCertDetailsInList(vh7Var, w16Var, arrayList);
        getAndPutCertDetailsInList(vh7.SIGNATURE, w16Var, arrayList);
        getAndPutCertDetailsInList(vh7.KEY_MANAGEMENT, w16Var, arrayList);
        getAndPutCertDetailsInList(vh7.CARD_AUTH, w16Var, arrayList);
        return arrayList;
    }

    public final j16 getKeyForAuth(YubiKitCertDetails yubiKitCertDetails, char[] cArr) throws Exception {
        final w16 w16Var = this.piv;
        KeyStore keyStore = KeyStore.getInstance("YKPiv", new t16(new vz0() { // from class: k16
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                ((vz0) obj).invoke(new cn6(w16Var, null));
            }
        }));
        keyStore.load(null);
        Key key = keyStore.getKey(Integer.toString(yubiKitCertDetails.getSlot().a, 16), cArr);
        if (key instanceof j16) {
            return (j16) key;
        }
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.error("YubiKitSmartcardSession:getKeyForAuth", "Private key retrieved from YKPiv keystore is not of type PivPrivateKey.", null);
        throw new Exception("Private key retrieved from YKPiv keystore is not of type PivPrivateKey.");
    }

    public final int getPinAttemptsRemaining() throws IOException, je {
        w16 w16Var = this.piv;
        ci7 ci7Var = w16Var.a;
        l15 l15Var = w16.f;
        l15Var.k("Getting PIN attempts");
        x53 x53Var = w16.e;
        if (x53Var.u(w16Var.b)) {
            l15Var.k("Getting PIN metadata");
            w16Var.n(x53Var);
            LinkedHashMap linkedHashMapO = cy0.o(ci7Var.b(new ie(-9, null, 0, -128)));
            byte[] bArr = (byte[]) linkedHashMapO.get(6);
            byte b = ((byte[]) linkedHashMapO.get(5))[0];
            byte b2 = bArr[0];
            return bArr[1];
        }
        try {
            ci7Var.b(new ie(32, null, 0, -128));
            l15Var.k("Using cached value, may be incorrect");
            return w16Var.c;
        } catch (je e) {
            int iB = w16Var.b(e.b);
            if (iB < 0) {
                throw e;
            }
            w16Var.c = iB;
            l15Var.k("Using value from empty verify");
            return iB;
        }
    }

    public final boolean verifyPin(char[] cArr) throws IOException, je {
        try {
            this.piv.r(cArr);
            return true;
        } catch (dg4 unused) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("YubiKitSmartcardSession:verifyPin", "Incorrect PIN entered.");
            return false;
        }
    }
}
