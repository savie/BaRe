package com.microsoft.identity.common.java.util;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResult;
import com.microsoft.identity.common.java.providers.oauth2.IResult;
import defpackage.f6;
import defpackage.fz5;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class FileUtil {
    public static final int compareSemanticVersion(String str, String str2) {
        if (str == null) {
            f6.n("thisVersion is marked non-null but is null");
            return 0;
        }
        if (str2 == null) {
            return 1;
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
        int i = 0;
        while (i < iMax) {
            int i2 = i < strArrSplit.length ? Integer.parseInt(strArrSplit[i]) : 0;
            int i3 = i < strArrSplit2.length ? Integer.parseInt(strArrSplit2[i]) : 0;
            if (i2 < i3) {
                return -1;
            }
            if (i2 > i3) {
                return 1;
            }
            i++;
        }
        return 0;
    }

    public static void deleteFile(File file) {
        if (file == null) {
            f6.n("file is marked non-null but is null");
        } else if (file.exists()) {
            Logger.verbose("FileUtil:deleteKeyFile", "Delete File");
            if (file.delete()) {
                return;
            }
            Logger.verbose("FileUtil:deleteKeyFile", "Failed to delete file.");
        }
    }

    public static synchronized String getStackTraceAsString(Throwable th) {
        StringWriter stringWriter;
        stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    public static boolean isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(String str, String str2) {
        if (!StringUtil.isNullOrEmpty(str)) {
            if (str == null) {
                f6.n("first is marked non-null but is null");
                return false;
            }
            if (compareSemanticVersion(str, str2) >= 0) {
                return true;
            }
        }
        return false;
    }

    public static void logExposedFieldsOfObject(Object obj, String str) {
        if (obj == null) {
            f6.n("object is marked non-null but is null");
            return;
        }
        StringBuilder sbN = fz5.n(str, ":");
        sbN.append(obj.getClass().getSimpleName());
        Logger.info(sbN.toString(), ObjectMapper.serializeExposedFieldsOfObjectToJsonString(obj));
    }

    public static void logResult(String str, IResult iResult) {
        if (iResult == null) {
            f6.n("result is marked non-null but is null");
            return;
        }
        StringBuilder sbN = fz5.n(str, ":");
        sbN.append(iResult.getClass().getSimpleName());
        String string = sbN.toString();
        if (iResult.getSuccess()) {
            Logger.info(string, "Success Result");
            logExposedFieldsOfObject(iResult.getSuccessResponse(), string);
        } else {
            Logger.warn(string, "Failure Result");
            if (iResult.getErrorResponse() != null) {
                if (iResult.getErrorResponse().getError() != null) {
                    Logger.warn(string, "Error: " + iResult.getErrorResponse().getError());
                }
                if (iResult.getErrorResponse().getErrorDescription() != null) {
                    Logger.warnPII(string, "Description: " + iResult.getErrorResponse().getErrorDescription());
                }
                logExposedFieldsOfObject(iResult.getErrorResponse(), string);
            }
        }
        if (iResult instanceof MicrosoftStsAuthorizationResult) {
            MicrosoftStsAuthorizationResult microsoftStsAuthorizationResult = (MicrosoftStsAuthorizationResult) iResult;
            if (microsoftStsAuthorizationResult.getAuthorizationStatus() != null) {
                Logger.info(string, "Authorization Status: " + microsoftStsAuthorizationResult.getAuthorizationStatus().toString());
            }
        }
    }

    public static byte[] readFromFile(File file) throws ClientException {
        if (file == null) {
            f6.n("file is marked non-null but is null");
            return null;
        }
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
            } finally {
                fileInputStream.close();
            }
        } catch (IOException e) {
            ClientException clientException = new ClientException("io_error", e.getMessage(), e);
            Logger.error("FileUtil:readKeyData", clientException.getErrorCode(), e);
            throw clientException;
        }
    }

    public static void writeDataToFile(File file, byte[] bArr) throws ClientException {
        if (bArr == null) {
            f6.n("data is marked non-null but is null");
            return;
        }
        if (file == null) {
            f6.n("file is marked non-null but is null");
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
            } finally {
                fileOutputStream.close();
            }
        } catch (IOException e) {
            ClientException clientException = new ClientException("io_error", e.getMessage(), e);
            Logger.error("FileUtil:writeKeyData", clientException.getErrorCode(), e);
            throw clientException;
        }
    }
}
