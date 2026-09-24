package com.jcraft.jsch;

import defpackage.a6;
import defpackage.eq3;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class KnownHosts implements HostKeyRepository {
    public static final byte[] e = {32};
    public static final byte[] f;
    public final JSch a;
    public String b = null;
    public final Vector c;
    public final MAC d;

    static {
        byte[] bArr = Util.a;
        f = Util.p("\n", StandardCharsets.UTF_8);
    }

    public KnownHosts(JSch jSch) {
        this.c = null;
        this.a = jSch;
        if (this.d == null) {
            String config = JSch.getConfig("hmac-sha1");
            try {
                this.d = (MAC) Class.forName(config).asSubclass(MAC.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Exception e2) {
                this.a.a.a().log(3, "unable to instantiate HMAC-class " + config, e2);
                throw new IllegalArgumentException(eq3.k("instantiation of ", config, " lead to an error"), e2);
            }
        }
        this.c = new Vector();
    }

    public static void c(FileOutputStream fileOutputStream, HostKey hostKey) throws IOException {
        String str = hostKey.a;
        String str2 = hostKey.b;
        String type = hostKey.getType();
        String str3 = hostKey.e;
        boolean zEquals = type.equals("UNKNOWN");
        byte[] bArr = f;
        if (zEquals) {
            fileOutputStream.write(Util.p(str2, StandardCharsets.UTF_8));
            fileOutputStream.write(bArr);
            return;
        }
        int length = str.length();
        byte[] bArr2 = e;
        if (length != 0) {
            fileOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
            fileOutputStream.write(bArr2);
        }
        Charset charset = StandardCharsets.UTF_8;
        fileOutputStream.write(Util.p(str2, charset));
        fileOutputStream.write(bArr2);
        fileOutputStream.write(type.getBytes(charset));
        fileOutputStream.write(bArr2);
        fileOutputStream.write(hostKey.getKey().getBytes(charset));
        if (str3 != null) {
            fileOutputStream.write(bArr2);
            fileOutputStream.write(str3.getBytes(charset));
        }
        fileOutputStream.write(bArr);
    }

    public final void a(String str) {
        this.c.addElement(new HostKey(str, -1, null, null));
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public final void add(HostKey hostKey, UserInfo userInfo) {
        boolean z;
        int i = hostKey.c;
        String str = hostKey.b;
        synchronized (this.c) {
            z = false;
            for (int i2 = 0; i2 < this.c.size(); i2++) {
                try {
                    ((HostKey) this.c.elementAt(i2)).a(str);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.c.addElement(hostKey);
        String str2 = this.b;
        if (str2 == null) {
            return;
        }
        File file = new File(Util.f(str2));
        if (file.exists()) {
            z = true;
        } else if (userInfo != null) {
            boolean zPromptYesNo = userInfo.promptYesNo(str2.concat(" does not exist.\nAre you sure you want to create it?"));
            file = file.getParentFile();
            if (zPromptYesNo && file != null && !file.exists()) {
                zPromptYesNo = userInfo.promptYesNo("The parent directory " + file + " does not exist.\nAre you sure you want to create it?");
                if (zPromptYesNo) {
                    if (file.mkdirs()) {
                        userInfo.showMessage(file + " has been succesfully created.\nPlease check its access permission.");
                    } else {
                        userInfo.showMessage(file + " has not been created.");
                        zPromptYesNo = false;
                    }
                }
            }
            if (file != null) {
                z = zPromptYesNo;
            }
        }
        if (z) {
            try {
                e(str2);
            } catch (Exception e2) {
                this.a.a.a().log(3, "unable to sync known host file " + file.getPath(), e2);
            }
        }
    }

    public final void b(FileOutputStream fileOutputStream) {
        try {
            synchronized (this.c) {
                for (int i = 0; i < this.c.size(); i++) {
                    try {
                        c(fileOutputStream, (HostKey) this.c.elementAt(i));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Exception e2) {
            this.a.a.a().log(3, "unable to dump known hosts", e2);
        }
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public final int check(String str, byte[] bArr) {
        if (str == null) {
            return 1;
        }
        try {
            HostKey hostKey = new HostKey(str, 0, bArr, null);
            synchronized (this.c) {
                int i = 1;
                for (int i2 = 0; i2 < this.c.size(); i2++) {
                    try {
                        HostKey hostKey2 = (HostKey) this.c.elementAt(i2);
                        if (hostKey2.a(str) && hostKey2.c == hostKey.c) {
                            if (Util.a(hostKey2.d, bArr)) {
                                return 0;
                            }
                            i = 2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return (i == 1 && str.startsWith("[") && str.indexOf("]:") > 1) ? check(str.substring(1, str.indexOf("]:")), bArr) : i;
            }
        } catch (Exception e2) {
            this.a.a.a().log(0, eq3.k("exception while trying to read key while checking host '", str, "'"), e2);
            return 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0126 A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x012f A[ADDED_TO_REGION, LOOP:10: B:102:0x012f->B:106:0x0137, LOOP_START, PHI: r3
      0x012f: PHI (r3v11 int) = (r3v10 int), (r3v27 int) binds: [B:100:0x0124, B:106:0x0137] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:103:0x0131 A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x013f A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0147  */
    /* JADX WARN: Code duplicated, block: B:112:0x0148  */
    /* JADX WARN: Code duplicated, block: B:123:0x0163 A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x016b A[ADDED_TO_REGION, LOOP:12: B:124:0x016b->B:128:0x0173, LOOP_START, PHI: r3
      0x016b: PHI (r3v14 int) = (r3v13 int), (r3v22 int) binds: [B:122:0x0161, B:128:0x0173] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:125:0x016d A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x0178 A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x017d A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x0185  */
    /* JADX WARN: Code duplicated, block: B:135:0x0188  */
    /* JADX WARN: Code duplicated, block: B:138:0x018d A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0199  */
    /* JADX WARN: Code duplicated, block: B:202:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x0120 A[EDGE_INSN: B:204:0x0120->B:98:0x0120 BREAK  A[LOOP:9: B:92:0x0109->B:97:0x011d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x011a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x018c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00d7 A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f1 A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0100 A[Catch: all -> 0x004c, LOOP:8: B:83:0x00ec->B:88:0x0100, LOOP_END, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0108  */
    /* JADX WARN: Code duplicated, block: B:94:0x010e A[Catch: all -> 0x004c, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x011d A[Catch: all -> 0x004c, LOOP:9: B:92:0x0109->B:97:0x011d, LOOP_END, TryCatch #2 {all -> 0x004c, blocks: (B:3:0x000e, B:5:0x0013, B:22:0x0038, B:28:0x0043, B:31:0x0050, B:33:0x0055, B:34:0x005e, B:36:0x0063, B:40:0x006c, B:42:0x0073, B:44:0x0079, B:48:0x0083, B:51:0x0089, B:52:0x008c, B:54:0x0096, B:56:0x009b, B:60:0x00a4, B:62:0x00ab, B:64:0x00b1, B:68:0x00ba, B:71:0x00c0, B:73:0x00c9, B:74:0x00d2, B:76:0x00d7, B:80:0x00e0, B:82:0x00e7, B:83:0x00ec, B:85:0x00f1, B:87:0x00fd, B:92:0x0109, B:94:0x010e, B:96:0x011a, B:97:0x011d, B:101:0x0126, B:103:0x0131, B:106:0x0137, B:107:0x013a, B:109:0x013f, B:118:0x0152, B:121:0x0159, B:123:0x0163, B:125:0x016d, B:128:0x0173, B:130:0x0178, B:132:0x017d, B:138:0x018d, B:140:0x0193, B:143:0x019b, B:88:0x0100, B:144:0x01b4, B:15:0x002a, B:146:0x01be, B:147:0x01c8), top: B:162:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0122  */
    public final void d(InputStream inputStream) {
        int i;
        String string;
        int i2;
        byte[][] bArr;
        int i3;
        int i4;
        String string2;
        String string3;
        byte b;
        byte b2;
        int i5;
        byte b3;
        byte b4;
        int i6;
        byte[][] bArr2;
        int i7;
        byte b5;
        Vector vector = this.c;
        vector.removeAllElements();
        StringBuilder sb = new StringBuilder();
        try {
            try {
                byte[] bArr3 = new byte[1024];
                while (true) {
                    byte[] bArr4 = bArr3;
                    int i8 = 0;
                    while (true) {
                        int i9 = inputStream.read();
                        i = -1;
                        if (i9 == -1) {
                            if (i8 != 0) {
                                break;
                            }
                            inputStream.close();
                            return;
                        } else if (i9 != 13) {
                            if (i9 == 10) {
                                break;
                            }
                            if (bArr4.length <= i8) {
                                if (i8 > 10240) {
                                    break;
                                }
                                byte[] bArr5 = new byte[bArr4.length * 2];
                                System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
                                bArr4 = bArr5;
                            }
                            int i10 = i8 + 1;
                            bArr4[i8] = (byte) i9;
                            i8 = i10;
                        }
                    }
                    int i11 = 0;
                    while (true) {
                        if (i11 < i8) {
                            byte b6 = bArr4[i11];
                            if (b6 != 32 && b6 != 9) {
                                if (b6 == 35) {
                                    a(Util.d(bArr4, 0, i8));
                                }
                                bArr3 = bArr4;
                            }
                            i11++;
                        }
                        if (i11 >= i8) {
                            a(Util.d(bArr4, 0, i8));
                        } else {
                            sb.setLength(0);
                            while (i11 < i8) {
                                int i12 = i11 + 1;
                                byte b7 = bArr4[i11];
                                if (b7 != 32 && b7 != 9) {
                                    sb.append((char) b7);
                                    i11 = i12;
                                }
                                i11 = i12;
                                break;
                            }
                            String string4 = sb.toString();
                            if (i11 >= i8 || string4.length() == 0) {
                                a(Util.d(bArr4, 0, i8));
                            } else {
                                while (i11 < i8) {
                                    byte b8 = bArr4[i11];
                                    if (b8 != 32 && b8 != 9) {
                                        break;
                                    } else {
                                        i11++;
                                    }
                                }
                                String str = "";
                                if (string4.charAt(0) == '@') {
                                    sb.setLength(0);
                                    while (i11 < i8) {
                                        int i13 = i11 + 1;
                                        byte b9 = bArr4[i11];
                                        if (b9 != 32 && b9 != 9) {
                                            sb.append((char) b9);
                                            i11 = i13;
                                        }
                                        i11 = i13;
                                        break;
                                    }
                                    String string5 = sb.toString();
                                    if (i11 >= i8 || string5.length() == 0) {
                                        a(Util.d(bArr4, 0, i8));
                                    } else {
                                        while (i11 < i8) {
                                            byte b10 = bArr4[i11];
                                            if (b10 != 32 && b10 != 9) {
                                                break;
                                            } else {
                                                i11++;
                                            }
                                        }
                                        str = string4;
                                        string4 = string5;
                                        sb.setLength(0);
                                        while (i11 < i8) {
                                            i7 = i11 + 1;
                                            b5 = bArr4[i11];
                                            if (b5 != 32 && b5 != 9) {
                                                sb.append((char) b5);
                                                i11 = i7;
                                            }
                                            i11 = i7;
                                            break;
                                        }
                                        string = sb.toString();
                                        i2 = 0;
                                        while (true) {
                                            bArr = HostKey.f;
                                            if (i2 < bArr.length) {
                                                i3 = -1;
                                                break;
                                            } else {
                                                if (Util.c(bArr[i2]).equals(string)) {
                                                    i3 = i2 + 1;
                                                    break;
                                                }
                                                i2++;
                                            }
                                        }
                                        if (i3 != -1) {
                                            i6 = 0;
                                            while (true) {
                                                bArr2 = HostKey.f;
                                                if (i6 >= bArr2.length) {
                                                    break;
                                                }
                                                if (Util.c(bArr2[i6]).equals(string)) {
                                                    i = i6 + 1;
                                                    break;
                                                }
                                                i6++;
                                            }
                                        } else {
                                            i11 = i8;
                                        }
                                        i4 = i;
                                        if (i11 >= i8) {
                                            a(Util.d(bArr4, 0, i8));
                                        } else {
                                            while (i11 < i8) {
                                                b4 = bArr4[i11];
                                                if (b4 == 32 && b4 != 9) {
                                                    break;
                                                } else {
                                                    i11++;
                                                }
                                            }
                                            sb.setLength(0);
                                            while (i11 < i8) {
                                                i5 = i11 + 1;
                                                b3 = bArr4[i11];
                                                if (b3 != 13) {
                                                    if (b3 != 10 && b3 != 32 && b3 != 9) {
                                                        sb.append((char) b3);
                                                    }
                                                    i11 = i5;
                                                    break;
                                                }
                                                i11 = i5;
                                            }
                                            string2 = sb.toString();
                                            if (string2.length() == 0) {
                                                a(Util.d(bArr4, 0, i8));
                                            } else {
                                                while (i11 < i8) {
                                                    b2 = bArr4[i11];
                                                    if (b2 == 32 && b2 != 9) {
                                                        break;
                                                    } else {
                                                        i11++;
                                                    }
                                                }
                                                if (i11 < i8) {
                                                    sb.setLength(0);
                                                    while (i11 < i8) {
                                                        int i14 = i11 + 1;
                                                        b = bArr4[i11];
                                                        if (b != 13) {
                                                            if (b == 10) {
                                                                break;
                                                            } else {
                                                                sb.append((char) b);
                                                            }
                                                        }
                                                        i11 = i14;
                                                    }
                                                    string3 = sb.toString();
                                                } else {
                                                    string3 = null;
                                                }
                                                vector.addElement(new HashedHostKey(str, string4, i4, Util.i(string2.getBytes(StandardCharsets.UTF_8), 0, string2.length()), string3));
                                            }
                                        }
                                    }
                                } else {
                                    sb.setLength(0);
                                    while (i11 < i8) {
                                        i7 = i11 + 1;
                                        b5 = bArr4[i11];
                                        if (b5 != 32) {
                                            sb.append((char) b5);
                                            i11 = i7;
                                        }
                                        i11 = i7;
                                        break;
                                    }
                                    string = sb.toString();
                                    i2 = 0;
                                    while (true) {
                                        bArr = HostKey.f;
                                        if (i2 < bArr.length) {
                                            i3 = -1;
                                            break;
                                        } else {
                                            if (Util.c(bArr[i2]).equals(string)) {
                                                i3 = i2 + 1;
                                                break;
                                            }
                                            i2++;
                                        }
                                    }
                                    if (i3 != -1) {
                                        i6 = 0;
                                        while (true) {
                                            bArr2 = HostKey.f;
                                            if (i6 >= bArr2.length) {
                                                break;
                                                break;
                                            } else {
                                                if (Util.c(bArr2[i6]).equals(string)) {
                                                    i = i6 + 1;
                                                    break;
                                                }
                                                i6++;
                                            }
                                        }
                                    } else {
                                        i11 = i8;
                                    }
                                    i4 = i;
                                    if (i11 >= i8) {
                                        a(Util.d(bArr4, 0, i8));
                                    } else {
                                        while (i11 < i8) {
                                            b4 = bArr4[i11];
                                            if (b4 == 32) {
                                            }
                                            i11++;
                                        }
                                        sb.setLength(0);
                                        while (i11 < i8) {
                                            i5 = i11 + 1;
                                            b3 = bArr4[i11];
                                            if (b3 != 13) {
                                                if (b3 != 10) {
                                                    sb.append((char) b3);
                                                }
                                                i11 = i5;
                                                break;
                                            }
                                            i11 = i5;
                                        }
                                        string2 = sb.toString();
                                        if (string2.length() == 0) {
                                            a(Util.d(bArr4, 0, i8));
                                        } else {
                                            while (i11 < i8) {
                                                b2 = bArr4[i11];
                                                if (b2 == 32) {
                                                }
                                                i11++;
                                            }
                                            if (i11 < i8) {
                                                sb.setLength(0);
                                                while (i11 < i8) {
                                                    int i15 = i11 + 1;
                                                    b = bArr4[i11];
                                                    if (b != 13) {
                                                        if (b == 10) {
                                                            break;
                                                            break;
                                                        }
                                                        sb.append((char) b);
                                                    }
                                                    i11 = i15;
                                                }
                                                string3 = sb.toString();
                                            } else {
                                                string3 = null;
                                            }
                                            vector.addElement(new HashedHostKey(str, string4, i4, Util.i(string2.getBytes(StandardCharsets.UTF_8), 0, string2.length()), string3));
                                        }
                                    }
                                }
                            }
                        }
                        bArr3 = bArr4;
                    }
                }
            } catch (Throwable th) {
                if (inputStream == null) {
                    throw th;
                }
                try {
                    inputStream.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Exception e2) {
            if (e2 instanceof JSchException) {
                throw ((JSchException) e2);
            }
            a6.f(e2);
        }
    }

    public final synchronized void e(String str) {
        if (str == null) {
            return;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(Util.f(str));
        try {
            b(fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public final HostKey[] getHostKey(String str, String str2) {
        HostKey[] hostKeyArr;
        synchronized (this.c) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < this.c.size(); i++) {
                    HostKey hostKey = (HostKey) this.c.elementAt(i);
                    if (hostKey.c != -1 && (str == null || (hostKey.a(str) && (str2 == null || hostKey.getType().equals(str2))))) {
                        arrayList.add(hostKey);
                    }
                }
                int size = arrayList.size();
                hostKeyArr = new HostKey[size];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    hostKeyArr[i2] = (HostKey) arrayList.get(i2);
                }
                if (str != null && str.startsWith("[") && str.indexOf("]:") > 1) {
                    HostKey[] hostKey2 = getHostKey(str.substring(1, str.indexOf("]:")), str2);
                    if (hostKey2.length > 0) {
                        HostKey[] hostKeyArr2 = new HostKey[hostKey2.length + size];
                        System.arraycopy(hostKeyArr, 0, hostKeyArr2, 0, size);
                        System.arraycopy(hostKey2, 0, hostKeyArr2, size, hostKey2.length);
                        hostKeyArr = hostKeyArr2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hostKeyArr;
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public final String getKnownHostsRepositoryID() {
        return this.b;
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public final void remove(String str, String str2, byte[] bArr) {
        boolean z;
        synchronized (this.c) {
            int i = 0;
            z = false;
            while (i < this.c.size()) {
                try {
                    HostKey hostKey = (HostKey) this.c.elementAt(i);
                    if (str == null || (hostKey.a(str) && (str2 == null || (hostKey.getType().equals(str2) && (bArr == null || Util.a(bArr, hostKey.d)))))) {
                        String strSubstring = hostKey.b;
                        if (str == null || strSubstring.equals(str) || ((hostKey instanceof HashedHostKey) && ((HashedHostKey) hostKey).g)) {
                            this.c.removeElement(hostKey);
                            i--;
                        } else {
                            int length = str.length();
                            int length2 = strSubstring.length();
                            int i2 = 0;
                            while (true) {
                                if (i2 < length2) {
                                    int iIndexOf = strSubstring.indexOf(44, i2);
                                    if (iIndexOf != -1) {
                                        if (str.equals(strSubstring.substring(i2, iIndexOf))) {
                                            strSubstring = strSubstring.substring(0, i2).concat(strSubstring.substring(iIndexOf + 1));
                                        } else {
                                            i2 = iIndexOf + 1;
                                        }
                                    }
                                    hostKey.b = strSubstring;
                                }
                                if (strSubstring.endsWith(str) && length2 - i2 == length) {
                                    strSubstring = strSubstring.substring(0, length == length2 ? 0 : (length2 - length) - 1);
                                }
                                hostKey.b = strSubstring;
                            }
                        }
                        z = true;
                    }
                    i++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            try {
                String str3 = this.b;
                if (str3 != null) {
                    e(str3);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class HashedHostKey extends HostKey {
        public boolean g;
        public byte[] h;
        public byte[] i;

        public HashedHostKey(String str, String str2, int i, byte[] bArr, String str3) throws JSchException {
            super(str, str2, i, bArr, str3);
            this.g = false;
            this.h = null;
            this.i = null;
            if (!this.b.startsWith("|1|") || this.b.substring(3).indexOf("|") <= 0) {
                return;
            }
            String strSubstring = this.b.substring(3);
            String strSubstring2 = strSubstring.substring(0, strSubstring.indexOf("|"));
            String strSubstring3 = strSubstring.substring(strSubstring.indexOf("|") + 1);
            Charset charset = StandardCharsets.UTF_8;
            this.h = Util.i(strSubstring2.getBytes(charset), 0, strSubstring2.length());
            this.i = Util.i(strSubstring3.getBytes(charset), 0, strSubstring3.length());
            int blockSize = KnownHosts.this.d.getBlockSize();
            if (this.h.length == blockSize && this.i.length == blockSize) {
                this.g = true;
            } else {
                this.h = null;
                this.i = null;
            }
        }

        @Override // com.jcraft.jsch.HostKey
        public final boolean a(String str) {
            boolean zA;
            if (!this.g) {
                return super.a(str);
            }
            try {
                synchronized (KnownHosts.this.d) {
                    KnownHosts.this.d.init(this.h);
                    byte[] bArrP = Util.p(str, StandardCharsets.UTF_8);
                    KnownHosts.this.d.update(bArrP, 0, bArrP.length);
                    byte[] bArr = new byte[KnownHosts.this.d.getBlockSize()];
                    KnownHosts.this.d.doFinal(bArr, 0);
                    zA = Util.a(this.i, bArr);
                }
                return zA;
            } catch (Exception e) {
                KnownHosts.this.a.a.a().log(3, "an error occurred while trying to check hash for host " + str, e);
                return false;
            }
        }

        public HashedHostKey(KnownHosts knownHosts, String str, int i, byte[] bArr) throws JSchException {
            this("", str, i, bArr, null);
        }

        public HashedHostKey(KnownHosts knownHosts, String str, byte[] bArr) throws JSchException {
            this(knownHosts, str, 0, bArr);
        }
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public final HostKey[] getHostKey() {
        return getHostKey(null, null);
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public final void remove(String str, String str2) {
        remove(str, str2, null);
    }
}
