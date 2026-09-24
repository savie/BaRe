package com.microsoft.identity.common.java.base64;

import com.microsoft.identity.common.base64.AndroidBase64;
import defpackage.l0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Base64Util {
    public static final /* synthetic */ int a = 0;
    private static final AndroidBase64 base64;

    static {
        AndroidBase64 androidBase64;
        AndroidBase64 androidBase65 = null;
        try {
            Object objNewInstance = AndroidBase64.class.getDeclaredConstructor(null).newInstance(null);
            objNewInstance.getClass();
            androidBase64 = (AndroidBase64) objNewInstance;
            androidBase64.encode(new byte[0], Base64Flags.DEFAULT);
        } catch (ClassNotFoundException | RuntimeException unused) {
            androidBase64 = null;
        }
        if (androidBase64 == null) {
            try {
                Object objNewInstance2 = Class.forName("com.microsoft.identity.broker.base64.MseberaBase64ForLinux").getDeclaredConstructor(null).newInstance(null);
                objNewInstance2.getClass();
                androidBase64 = (AndroidBase64) objNewInstance2;
            } catch (ClassNotFoundException unused2) {
                androidBase64 = null;
            }
            if (androidBase64 == null) {
                try {
                    Object objNewInstance3 = Class.forName("com.microsoft.identity.common.java.MseberaBase64ForCommon4jTests").getDeclaredConstructor(null).newInstance(null);
                    objNewInstance3.getClass();
                    androidBase64 = (AndroidBase64) objNewInstance3;
                } catch (ClassNotFoundException unused3) {
                    androidBase64 = null;
                }
                if (androidBase64 == null) {
                    try {
                        Object objNewInstance4 = Class.forName("com.microsoft.identity.broker4j.MseberaBase64ForBroker4jTests").getDeclaredConstructor(null).newInstance(null);
                        objNewInstance4.getClass();
                        androidBase64 = (AndroidBase64) objNewInstance4;
                    } catch (ClassNotFoundException unused4) {
                        androidBase64 = null;
                    }
                    if (androidBase64 == null) {
                        try {
                            Object objNewInstance5 = Class.forName("com.microsoft.identity.internal.testutils.MseberaBase64ForTestUtils").getDeclaredConstructor(null).newInstance(null);
                            objNewInstance5.getClass();
                            androidBase65 = (AndroidBase64) objNewInstance5;
                        } catch (ClassNotFoundException unused5) {
                        }
                        if (androidBase65 == null) {
                            l0.e("Cannot find a Base64 implementation to initialize.");
                            return;
                        }
                        androidBase64 = androidBase65;
                    }
                }
            }
        }
        base64 = androidBase64;
    }
}
