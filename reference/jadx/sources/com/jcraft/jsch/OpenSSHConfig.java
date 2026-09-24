package com.jcraft.jsch;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import defpackage.dj7;
import defpackage.fz5;
import defpackage.zt5;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.Vector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class OpenSSHConfig implements ConfigRepository {
    public static final Set c = (Set) Stream.of((Object[]) new String[]{"KexAlgorithms", "Ciphers", "HostKeyAlgorithms", "MACs", "PubkeyAcceptedAlgorithms", "PubkeyAcceptedKeyTypes", "CASignatureAlgorithms"}).map(new zt5()).collect(Collectors.toSet());
    public static final Hashtable d;
    public final Hashtable a;
    public final Vector b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class MyConfig implements ConfigRepository.Config {
        public final Vector a;

        public MyConfig(OpenSSHConfig openSSHConfig, String str) {
            boolean z;
            Vector vector = new Vector();
            this.a = vector;
            vector.addElement((Vector) openSSHConfig.a.get(""));
            byte[] bArr = Util.a;
            byte[] bArrP = Util.p(str, StandardCharsets.UTF_8);
            Vector vector2 = openSSHConfig.b;
            if (vector2.size() > 1) {
                for (int i = 1; i < vector2.size(); i++) {
                    boolean z2 = false;
                    boolean z3 = false;
                    for (String str2 : ((String) vector2.elementAt(i)).split("[ \t]")) {
                        String strTrim = str2.trim();
                        if (strTrim.startsWith("!")) {
                            strTrim = strTrim.substring(1).trim();
                            z = true;
                        } else {
                            z = false;
                        }
                        if (Util.l(Util.p(strTrim, StandardCharsets.UTF_8), bArrP)) {
                            if (z) {
                                z3 = true;
                            } else {
                                z2 = true;
                            }
                        }
                    }
                    if (z2 && !z3) {
                        this.a.addElement((Vector) openSSHConfig.a.get(vector2.elementAt(i)));
                    }
                }
            }
        }

        public static void b(String str, NumberFormatException numberFormatException) {
            Logger logger = JSch.i;
            if (logger != null) {
                StringBuilder sbU = dj7.u("Error during parsing of ", str, ": ");
                sbU.append(numberFormatException.getMessage());
                logger.log(3, sbU.toString(), numberFormatException);
            }
        }

        public final String a(String str) {
            Hashtable hashtable = OpenSSHConfig.d;
            String upperCase = (hashtable.get(str) != null ? (String) hashtable.get(str) : str).toUpperCase(Locale.ROOT);
            String string = null;
            int i = 0;
            while (true) {
                Vector vector = this.a;
                if (i >= vector.size()) {
                    break;
                }
                Vector vector2 = (Vector) vector.elementAt(i);
                for (int i2 = 0; i2 < vector2.size(); i2++) {
                    String[] strArr = (String[]) vector2.elementAt(i2);
                    if (strArr[0].toUpperCase(Locale.ROOT).equals(upperCase)) {
                        string = strArr[1];
                        break;
                    }
                }
                if (string != null) {
                    break;
                }
                i++;
            }
            if (string != null && (upperCase.equals("SERVERALIVEINTERVAL") || upperCase.equals("CONNECTTIMEOUT"))) {
                try {
                    string = Integer.toString(Integer.parseInt(string) * PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
                } catch (NumberFormatException e) {
                    b(str, e);
                }
            }
            if (!OpenSSHConfig.c.contains(upperCase) || string == null) {
                return string;
            }
            if (!string.startsWith("+") && !string.startsWith("-") && !string.startsWith("^")) {
                return string;
            }
            String strTrim = JSch.getConfig(str).trim();
            if (string.startsWith("+")) {
                StringBuilder sbN = fz5.n(strTrim, ",");
                sbN.append(string.substring(1).trim());
                return sbN.toString();
            }
            if (string.startsWith("-")) {
                List list = (List) Arrays.stream(Util.o(strTrim)).collect(Collectors.toList());
                for (String str2 : Util.o(string.substring(1).trim())) {
                    list.remove(str2.trim());
                }
                return String.join(",", list);
            }
            if (!string.startsWith("^")) {
                return string;
            }
            return string.substring(1).trim() + "," + strTrim;
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String getHostname() {
            return a("Hostname");
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final int getPort() {
            String strA = a("Port");
            if (strA != null) {
                try {
                    return Integer.parseInt(strA);
                } catch (NumberFormatException e) {
                    b("Port", e);
                }
            }
            return -1;
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String getUser() {
            return a("User");
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String getValue(String str) {
            if (!str.equals("compression.s2c") && !str.equals("compression.c2s")) {
                return a(str);
            }
            String strA = a(str);
            return (strA == null || strA.equals("no")) ? "none,zlib@openssh.com,zlib" : "zlib@openssh.com,zlib,none";
        }

        @Override // com.jcraft.jsch.ConfigRepository.Config
        public final String[] getValues(String str) {
            String str2;
            String upperCase = str.toUpperCase(Locale.ROOT);
            Vector vector = new Vector();
            int i = 0;
            while (true) {
                Vector vector2 = this.a;
                if (i >= vector2.size()) {
                    String[] strArr = new String[vector.size()];
                    vector.toArray(strArr);
                    return strArr;
                }
                Vector vector3 = (Vector) vector2.elementAt(i);
                for (int i2 = 0; i2 < vector3.size(); i2++) {
                    String[] strArr2 = (String[]) vector3.elementAt(i2);
                    if (strArr2[0].toUpperCase(Locale.ROOT).equals(upperCase) && (str2 = strArr2[1]) != null) {
                        vector.remove(str2);
                        vector.addElement(str2);
                    }
                }
                i++;
            }
        }
    }

    static {
        Hashtable hashtable = new Hashtable();
        d = hashtable;
        hashtable.put("kex", "KexAlgorithms");
        hashtable.put("server_host_key", "HostKeyAlgorithms");
        hashtable.put("cipher.c2s", "Ciphers");
        hashtable.put("cipher.s2c", "Ciphers");
        hashtable.put("mac.c2s", "Macs");
        hashtable.put("mac.s2c", "Macs");
        hashtable.put("compression.s2c", "Compression");
        hashtable.put("compression.c2s", "Compression");
        hashtable.put("compression_level", "CompressionLevel");
        hashtable.put("MaxAuthTries", "NumberOfPasswordPrompts");
        hashtable.put("ca_signature_algorithms", "CASignatureAlgorithms");
    }

    public OpenSSHConfig(BufferedReader bufferedReader) throws IOException {
        Hashtable hashtable = new Hashtable();
        this.a = hashtable;
        Vector vector = new Vector();
        this.b = vector;
        Vector vector2 = new Vector();
        String str = "";
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                hashtable.put(str, vector2);
                vector.addElement(str);
                return;
            }
            String strTrim = line.trim();
            if (strTrim.length() != 0 && !strTrim.startsWith("#")) {
                String[] strArrSplit = strTrim.split("[= \t]", 2);
                for (int i = 0; i < strArrSplit.length; i++) {
                    strArrSplit[i] = strArrSplit[i].trim();
                }
                if (strArrSplit.length > 1) {
                    if (strArrSplit[0].equalsIgnoreCase("Host")) {
                        hashtable.put(str, vector2);
                        vector.addElement(str);
                        str = strArrSplit[1];
                        vector2 = new Vector();
                    } else {
                        vector2.addElement(strArrSplit);
                    }
                }
            }
        }
    }

    public static OpenSSHConfig parse(String str) throws IOException {
        StringReader stringReader = new StringReader(str);
        try {
            BufferedReader bufferedReader = new BufferedReader(stringReader);
            try {
                OpenSSHConfig openSSHConfig = new OpenSSHConfig(bufferedReader);
                bufferedReader.close();
                stringReader.close();
                return openSSHConfig;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                stringReader.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static OpenSSHConfig parseFile(String str) throws IOException {
        BufferedReader bufferedReaderNewBufferedReader = Files.newBufferedReader(Paths.get(Util.f(str), new String[0]), StandardCharsets.UTF_8);
        try {
            OpenSSHConfig openSSHConfig = new OpenSSHConfig(bufferedReaderNewBufferedReader);
            bufferedReaderNewBufferedReader.close();
            return openSSHConfig;
        } catch (Throwable th) {
            if (bufferedReaderNewBufferedReader != null) {
                try {
                    bufferedReaderNewBufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // com.jcraft.jsch.ConfigRepository
    public final ConfigRepository.Config getConfig(String str) {
        return new MyConfig(this, str);
    }
}
