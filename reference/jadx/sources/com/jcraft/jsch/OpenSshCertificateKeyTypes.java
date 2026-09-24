package com.jcraft.jsch;

import defpackage.xs1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class OpenSshCertificateKeyTypes {
    private OpenSshCertificateKeyTypes() {
    }

    public static String a(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str.endsWith("-cert-v01@openssh.com") ? xs1.g(21, 0, str) : str;
    }
}
