package com.jcraft.jsch;

import defpackage.dj7;
import defpackage.u48;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JSchAlgoNegoFailException extends JSchException {
    public final String a;
    public final String b;
    public final String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JSchAlgoNegoFailException(int i, String str, String str2) {
        super(dj7.n(u48.p("Algorithm negotiation fail: algorithmName=\"", a(i), "\" jschProposal=\"", str, "\" serverProposal=\""), str2, "\""));
        Locale locale = Locale.ROOT;
        this.a = a(i);
        this.b = str;
        this.c = str2;
    }

    public static String a(int i) {
        switch (i) {
            case 0:
                return "kex";
            case 1:
                return "server_host_key";
            case 2:
                return "cipher.c2s";
            case 3:
                return "cipher.s2c";
            case 4:
                return "mac.c2s";
            case 5:
                return "mac.s2c";
            case 6:
                return "compression.c2s";
            case 7:
                return "compression.s2c";
            case 8:
                return "lang.c2s";
            case XmlPullParser.COMMENT /* 9 */:
                return "lang.s2c";
            default:
                return "";
        }
    }

    public final String getAlgorithmName() {
        return this.a;
    }

    public final String getJSchProposal() {
        return this.b;
    }

    public final String getServerProposal() {
        return this.c;
    }
}
