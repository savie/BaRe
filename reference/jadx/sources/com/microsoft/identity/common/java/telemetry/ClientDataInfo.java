package com.microsoft.identity.common.java.telemetry;

import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.util.StringUtil;
import com.nimbusds.jose.jwk.JWKParameterNames;
import defpackage.qj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ClientDataInfo {
    private String mAccountType;
    private String mCallerDataBoundary;
    private String mCloudInstance;
    private String mError;
    private String mSubError;

    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    public static ClientDataInfo fromPipeDelimited(String str) {
        String str2;
        String str3;
        if (StringUtil.isNullOrEmpty(str)) {
            return null;
        }
        try {
            String[] strArrSplit = str.split("\\|", -1);
            if (strArrSplit.length < 3) {
                Logger.warn("ClientDataInfo", "clientdata pipe-delimited value has fewer than 3 segments.");
                return null;
            }
            ClientDataInfo clientDataInfo = new ClientDataInfo();
            String str4 = strArrSplit[0];
            if (StringUtil.isNullOrEmpty(str4)) {
                str4 = null;
            }
            clientDataInfo.mAccountType = str4;
            String str5 = strArrSplit[1];
            if (StringUtil.isNullOrEmpty(str5)) {
                str5 = null;
            }
            clientDataInfo.mError = str5;
            String str6 = strArrSplit[2];
            if (StringUtil.isNullOrEmpty(str6)) {
                str6 = null;
            }
            clientDataInfo.mSubError = str6;
            if (strArrSplit.length > 3) {
                str2 = strArrSplit[3];
                if (StringUtil.isNullOrEmpty(str2)) {
                    str2 = null;
                }
            } else {
                str2 = null;
            }
            clientDataInfo.mCallerDataBoundary = str2;
            if (strArrSplit.length > 4) {
                str3 = strArrSplit[4];
                if (StringUtil.isNullOrEmpty(str3)) {
                    str3 = null;
                }
            } else {
                str3 = null;
            }
            clientDataInfo.mCloudInstance = str3;
            return clientDataInfo;
        } catch (Exception e) {
            Logger.warn("ClientDataInfo", "Failed to parse clientdata pipe-delimited value: " + e.getMessage());
            return null;
        }
    }

    private static String truncate(String str) {
        return (str == null || str.length() <= 256) ? str : str.substring(0, 256);
    }

    public final void emitToSpan() {
        String str;
        qj7 qj7VarCurrent = SpanExtension.current();
        String str2 = this.mError;
        if (str2 != null) {
            truncate(str2);
            qj7VarCurrent.getClass();
        }
        String str3 = this.mSubError;
        if (str3 != null) {
            truncate(str3);
            qj7VarCurrent.getClass();
        }
        String str4 = this.mAccountType;
        if (str4 != null) {
            if ("m".equalsIgnoreCase(str4)) {
                str = "MSA";
            } else if (JWKParameterNames.RSA_EXPONENT.equalsIgnoreCase(str4)) {
                str = "AAD";
            } else {
                Logger.warn("ClientDataInfo", "Unknown account_type value in clientdata; emitting as UNKNOWN.");
                str = "UNKNOWN";
            }
            truncate(str);
            qj7VarCurrent.getClass();
        }
        String str5 = this.mCloudInstance;
        if (str5 != null) {
            truncate(str5);
            qj7VarCurrent.getClass();
        }
        String str6 = this.mCallerDataBoundary;
        if (str6 != null) {
            truncate(str6);
            qj7VarCurrent.getClass();
        }
    }
}
