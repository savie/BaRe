package com.nimbusds.jose.util;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class IOUtils {
    private IOUtils() {
    }

    public static void closeSilently(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static String readFileToString(File file) throws IOException {
        return readInputStreamToString(new FileInputStream(file));
    }

    public static String readInputStreamToString(InputStream inputStream, Charset charset) throws IOException {
        char[] cArr = new char[1024];
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, charset);
        while (true) {
            try {
                int i = inputStreamReader.read(cArr, 0, 1024);
                if (i < 0) {
                    String string = sb.toString();
                    inputStreamReader.close();
                    return string;
                }
                sb.append(cArr, 0, i);
            } catch (Throwable th) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public static String readFileToString(File file, Charset charset) throws IOException {
        return readInputStreamToString(new FileInputStream(file), charset);
    }

    public static String readInputStreamToString(InputStream inputStream) throws IOException {
        return readInputStreamToString(inputStream, StandardCharset.UTF_8);
    }
}
