package com.jcraft.jsch;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.crypto.impl.AESGCM;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import defpackage.a6;
import defpackage.dj7;
import defpackage.e6;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.i70;
import defpackage.is;
import defpackage.j70;
import defpackage.u48;
import defpackage.xs1;
import defpackage.y5;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Objects;
import java.util.Properties;
import java.util.Vector;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.crypto.AEADBadTagException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Session {
    public static Random A0;
    public static final byte[] B0;
    public static final byte[] C0;
    public Buffer O;
    public final Packet P;
    public UserInfo T;
    public String U;
    public IdentityRepository X;
    public HostKeyRepository Y;
    public byte[] a;
    public byte[] c;
    public byte[] d;
    public byte[] e;
    public byte[] f;
    public String f0;
    public byte[] g;
    public final String g0;
    public byte[] h;
    public int h0;
    public byte[] i;
    public final String i0;
    public byte[] j;
    public byte[] k;
    public final JSch k0;
    public Logger l0;
    public Cipher o;
    public Cipher p;
    public MAC q;
    public MAC r;
    public byte[] s;
    public byte[] t;
    public Compression u;
    public Compression v;
    public IO w;
    public Socket x;
    public j70 x0;
    public byte[] b = ("SSH-2.0-JSCH_" + JSch.VERSION).getBytes(StandardCharsets.UTF_8);
    public int l = 0;
    public int m = 0;
    public String[] n = null;
    public int y = 0;
    public volatile boolean z = false;
    public volatile boolean A = false;
    public boolean B = true;
    public boolean C = true;
    public volatile boolean D = true;
    public volatile boolean E = false;
    public boolean F = true;
    public boolean G = false;
    public volatile boolean H = false;
    public Thread I = null;
    public final Object J = new Object();
    public boolean K = false;
    public boolean L = false;
    public InputStream M = null;
    public OutputStream N = null;
    public SocketFactory Q = null;
    public Hashtable R = null;
    public Proxy S = null;
    public int V = 0;
    public int W = 1;
    public volatile String[] Z = null;
    public volatile boolean a0 = false;
    public boolean b0 = false;
    public volatile long c0 = 0;
    public int d0 = 6;
    public int e0 = 0;
    public byte[] j0 = null;
    public ThreadFactory m0 = new i70(1);
    public boolean n0 = false;
    public final ArrayList o0 = new ArrayList();
    public final ReentrantReadWriteLock p0 = new ReentrantReadWriteLock();
    public volatile boolean q0 = false;
    public volatile boolean r0 = false;
    public volatile String[] s0 = null;
    public final int[] t0 = new int[1];
    public final int[] u0 = new int[1];
    public int v0 = 8;
    public int w0 = 8;
    public final GlobalRequestReply y0 = new GlobalRequestReply();
    public HostKey z0 = null;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Forwarding {
        public String a = null;
        public int b = -1;
        public String c = null;
        public int d = -1;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class GlobalRequestReply {
        public Thread a;
        public int b;
        public int c;

        private GlobalRequestReply() {
            this.a = null;
            this.b = -1;
            this.c = 0;
        }
    }

    static {
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        B0 = Util.p("keepalive@jcraft.com", charset);
        C0 = Util.p("no-more-sessions@openssh.com", charset);
    }

    public Session(JSch jSch, String str, String str2, int i) throws Throwable {
        String property;
        String user;
        this.U = null;
        this.X = null;
        this.Y = null;
        this.f0 = "127.0.0.1";
        this.g0 = "127.0.0.1";
        this.h0 = 22;
        this.i0 = null;
        this.k0 = jSch;
        Buffer buffer = new Buffer();
        this.O = buffer;
        this.P = new Packet(buffer);
        this.i0 = str;
        this.f0 = str2;
        this.g0 = str2;
        this.h0 = i;
        ConfigRepository configRepository = jSch.e;
        if (configRepository != null) {
            ConfigRepository.Config config = configRepository.getConfig(str2);
            if (this.i0 == null && (user = config.getUser()) != null) {
                this.i0 = user;
            }
            String hostname = config.getHostname();
            if (hostname != null) {
                this.f0 = hostname;
            }
            int port = config.getPort();
            if (port != -1) {
                this.h0 = port;
            }
            d(config, "kex");
            d(config, "server_host_key");
            d(config, "prefer_known_host_key_types");
            d(config, "enable_server_sig_algs");
            d(config, "enable_ext_info_in_auth");
            d(config, "enable_strict_kex");
            d(config, "require_strict_kex");
            d(config, "enable_pubkey_auth_query");
            d(config, "try_additional_pubkey_algorithms");
            d(config, "enable_auth_none");
            d(config, "use_sftp_write_flush_workaround");
            d(config, "cipher.c2s");
            d(config, "cipher.s2c");
            d(config, "mac.c2s");
            d(config, "mac.s2c");
            d(config, "compression.c2s");
            d(config, "compression.s2c");
            d(config, "compression_level");
            d(config, "StrictHostKeyChecking");
            d(config, "HashKnownHosts");
            d(config, "PreferredAuthentications");
            d(config, "PubkeyAcceptedAlgorithms");
            d(config, "FingerprintHash");
            d(config, "MaxAuthTries");
            d(config, "ClearAllForwardings");
            String value = config.getValue("HostKeyAlias");
            if (value != null) {
                this.U = value;
            }
            String value2 = config.getValue("UserKnownHostsFile");
            if (value2 != null) {
                KnownHosts knownHosts = new KnownHosts(jSch);
                try {
                    knownHosts.b = value2;
                    knownHosts.d(new FileInputStream(Util.f(value2)));
                } catch (FileNotFoundException unused) {
                }
                this.Y = knownHosts;
            }
            String[] values = config.getValues("IdentityFile");
            if (values != null) {
                String[] values2 = configRepository.getConfig("").getValues("IdentityFile");
                if (values2 != null) {
                    for (String str3 : values2) {
                        jSch.addIdentity(str3, (byte[]) null);
                    }
                } else {
                    values2 = new String[0];
                }
                if (values.length - values2.length > 0) {
                    IdentityRepositoryWrapper identityRepositoryWrapper = new IdentityRepositoryWrapper(jSch.getIdentityRepository(), true);
                    for (String str4 : values) {
                        for (String str5 : values2) {
                            if (str4.equals(str5)) {
                                str4 = null;
                                break;
                            }
                        }
                        if (str4 != null) {
                            identityRepositoryWrapper.a(IdentityFile.a(jSch.a, str4, null));
                        }
                    }
                    this.X = identityRepositoryWrapper;
                }
            }
            String value3 = config.getValue("ServerAliveInterval");
            if (value3 != null) {
                try {
                    setServerAliveInterval(Integer.parseInt(value3));
                } catch (NumberFormatException unused2) {
                }
            }
            String value4 = config.getValue("ConnectTimeout");
            if (value4 != null) {
                try {
                    setTimeout(Integer.parseInt(value4));
                } catch (NumberFormatException unused3) {
                }
            }
            String value5 = config.getValue("MaxAuthTries");
            if (value5 != null) {
                setConfig("MaxAuthTries", value5);
            }
            String value6 = config.getValue("ClearAllForwardings");
            if (value6 != null) {
                setConfig("ClearAllForwardings", value6);
            }
        }
        if (this.i0 == null) {
            try {
                property = System.getProperty("user.name");
            } catch (SecurityException unused4) {
                property = null;
            }
            this.i0 = property;
        }
        if (this.i0 != null) {
            return;
        }
        e6.h("username is not given.");
        throw null;
    }

    public static boolean c(String str) {
        try {
            Cipher cipher = (Cipher) Class.forName(str).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
            cipher.init(0, new byte[cipher.getBlockSize()], new byte[cipher.getIVSize()]);
            return true;
        } catch (Exception | LinkageError unused) {
            return false;
        }
    }

    public static byte[] j(Buffer buffer, byte[] bArr, byte[] bArr2, byte[] bArr3, HASH hash, int i) throws Exception {
        int blockSize = hash.getBlockSize();
        while (bArr3.length < i) {
            buffer.reset();
            buffer.putByte(bArr);
            buffer.putByte(bArr2);
            buffer.putByte(bArr3, 0, bArr3.length);
            hash.update(buffer.b, 0, buffer.c);
            byte[] bArr4 = new byte[bArr3.length + blockSize];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            System.arraycopy(hash.digest(), 0, bArr4, bArr3.length, blockSize);
            Util.e(bArr3);
            bArr3 = bArr4;
        }
        return bArr3;
    }

    public static Forwarding o(String str) throws JSchException {
        String[] strArrSplit = str.split(TokenAuthenticationScheme.SCHEME_DELIMITER);
        if (strArrSplit.length > 1) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < strArrSplit.length; i++) {
                if (strArrSplit[i].length() != 0) {
                    arrayList.add(strArrSplit[i].trim());
                }
            }
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            while (i2 < arrayList.size()) {
                sb.append((String) arrayList.get(i2));
                i2++;
                if (i2 < arrayList.size()) {
                    sb.append(":");
                }
            }
            str = sb.toString();
        }
        Forwarding forwarding = new Forwarding();
        try {
            if (str.lastIndexOf(":") == -1) {
                throw new JSchException("parseForwarding: " + str);
            }
            try {
                forwarding.d = Integer.parseInt(str.substring(str.lastIndexOf(":") + 1));
                String strSubstring = str.substring(0, str.lastIndexOf(":"));
                try {
                    if (strSubstring.lastIndexOf(":") == -1) {
                        throw new JSchException("parseForwarding: " + str);
                    }
                    forwarding.c = strSubstring.substring(strSubstring.lastIndexOf(":") + 1);
                    String strSubstring2 = strSubstring.substring(0, strSubstring.lastIndexOf(":"));
                    String str2 = "127.0.0.1";
                    if (strSubstring2.lastIndexOf(":") != -1) {
                        forwarding.b = Integer.parseInt(strSubstring2.substring(strSubstring2.lastIndexOf(":") + 1));
                        String strSubstring3 = strSubstring2.substring(0, strSubstring2.lastIndexOf(":"));
                        if (strSubstring3.length() == 0 || strSubstring3.equals("*")) {
                            strSubstring3 = "0.0.0.0";
                        }
                        if (!strSubstring3.equals("localhost")) {
                            str2 = strSubstring3;
                        }
                        forwarding.a = str2;
                    } else {
                        forwarding.b = Integer.parseInt(strSubstring2);
                        forwarding.a = "127.0.0.1";
                    }
                    return forwarding;
                } catch (NumberFormatException unused) {
                    str = strSubstring;
                    str.substring(str.lastIndexOf(":") + 1);
                    strSubstring = str;
                }
            } catch (NumberFormatException unused2) {
            }
        } catch (NumberFormatException e) {
            throw new JSchException("parseForwarding: " + e.toString(), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0067, code lost:
    
        if (r19.m != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006d, code lost:
    
        if (r19.isConnected() == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006f, code lost:
    
        monitor-enter(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0070, code lost:
    
        r10 = 0;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0075, code lost:
    
        if (r19.g <= 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0077, code lost:
    
        r13 = r19.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007b, code lost:
    
        if (r13 <= r11) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007d, code lost:
    
        r13 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0080, code lost:
    
        if (r13 == r11) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0082, code lost:
    
        r6 = (int) r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0085, code lost:
    
        if (r17.p == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0087, code lost:
    
        r11 = r17.w0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x008d, code lost:
    
        r11 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008f, code lost:
    
        r12 = r17.r;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0091, code lost:
    
        if (r12 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0093, code lost:
    
        r12 = r12.getBlockSize();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0098, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0099, code lost:
    
        r15 = r18.a;
        r20 = 5;
        r7 = r6 + 14;
        r9 = (-r7) & (r11 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a4, code lost:
    
        if (r9 >= r11) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a6, code lost:
    
        r9 = r9 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a7, code lost:
    
        r9 = ((r9 + r7) + r12) + 32;
        r11 = r15.b;
        r12 = r11.length;
        r16 = 14;
        r8 = ((r15.c + r9) - 14) - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b6, code lost:
    
        if (r12 >= r8) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b8, code lost:
    
        r8 = new byte[r8];
        java.lang.System.arraycopy(r11, 0, r8, 0, r11.length);
        r15.b = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c0, code lost:
    
        r8 = r15.b;
        java.lang.System.arraycopy(r8, r7, r8, r9, (r15.c - 14) - r6);
        r15.c = 10;
        r15.putInt(r6);
        r15.c = r7;
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d5, code lost:
    
        r20 = 5;
        r16 = 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d9, code lost:
    
        r6 = r18.a.b[r20];
        r7 = r19.b;
        r5 = r5 - ((int) r13);
        r19.g -= r13;
        r9 = r10;
        r10 = r6;
        r6 = r9;
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ed, code lost:
    
        r20 = 5;
        r16 = 14;
        r7 = -1;
        r6 = 0;
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00f4, code lost:
    
        monitor-exit(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f5, code lost:
    
        if (r9 == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f7, code lost:
    
        b(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00fa, code lost:
    
        if (r5 != 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fc, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00fd, code lost:
    
        r8 = r18.a;
        r9 = r8.b;
        java.lang.System.arraycopy(r9, r6, r9, r16, r5);
        r8.b[r20] = r10;
        r8.c = 6;
        r8.putInt(r7);
        r8.putInt(r5);
        r8.c = r5 + 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0117, code lost:
    
        monitor-enter(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x011a, code lost:
    
        if (r17.q0 == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x011c, code lost:
    
        monitor-exit(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x011f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0121, code lost:
    
        r8 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0126, code lost:
    
        if (r19.g < r8) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0128, code lost:
    
        r19.g -= r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x012d, code lost:
    
        monitor-exit(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0132, code lost:
    
        monitor-exit(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0136, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0138, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0139, code lost:
    
        defpackage.y5.m("channel is broken");
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x013e, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A(com.jcraft.jsch.Packet r18, com.jcraft.jsch.Channel r19, int r20) throws java.io.IOException, com.jcraft.jsch.JSchException {
        /*
            Method dump skipped, instruction units count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jsch.Session.A(com.jcraft.jsch.Packet, com.jcraft.jsch.Channel, int):void");
    }

    public final int a(int i, String str) {
        int i2;
        synchronized (this.y0) {
            Buffer buffer = new Buffer(200);
            Packet packet = new Packet(buffer);
            String strP = ChannelForwardedTCPIP.p(str);
            GlobalRequestReply globalRequestReply = this.y0;
            globalRequestReply.a = Thread.currentThread();
            globalRequestReply.b = -1;
            this.y0.c = i;
            try {
                packet.a();
                buffer.putByte((byte) 80);
                Charset charset = StandardCharsets.UTF_8;
                buffer.putString("tcpip-forward".getBytes(charset));
                buffer.putByte((byte) 1);
                buffer.putString(strP.getBytes(charset));
                buffer.putInt(i);
                z(packet);
                int i3 = this.y0.b;
                int i4 = 0;
                while (i4 < 10 && i3 == -1) {
                    try {
                        Thread.sleep(1000L);
                    } catch (Exception unused) {
                    }
                    i4++;
                    i3 = this.y0.b;
                }
                GlobalRequestReply globalRequestReply2 = this.y0;
                globalRequestReply2.a = null;
                globalRequestReply2.b = -1;
                if (i3 != 1) {
                    throw new JSchException("remote port forwarding failed for listen port " + i);
                }
                i2 = globalRequestReply2.c;
            } catch (Exception e) {
                GlobalRequestReply globalRequestReply3 = this.y0;
                globalRequestReply3.a = null;
                globalRequestReply3.b = -1;
                throw new JSchException(e.toString(), e);
            }
        }
        return i2;
    }

    public final void b(Packet packet) {
        boolean z = this.D;
        boolean z2 = this.E;
        boolean z3 = this.F;
        boolean z4 = this.G;
        boolean z5 = packet.a.b[5] == 21 && z2;
        synchronized (this.J) {
            try {
                i(packet);
                IO io = this.w;
                if (io != null) {
                    OutputStream outputStream = io.b;
                    Buffer buffer = packet.a;
                    outputStream.write(buffer.b, 0, buffer.c);
                    io.b.flush();
                    int i = this.m + 1;
                    this.m = i;
                    if (i == 0 && ((z3 || z4) && z)) {
                        throw new JSchStrictKexException("outgoing sequence number wrapped during initial KEX");
                    }
                    if (z5) {
                        this.m = 0;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z5 && this.w != null && getLogger().isEnabled(1)) {
            getLogger().log(1, "Reset outgoing sequence number after sending SSH_MSG_NEWKEYS for strict KEX");
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0157  */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0565, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0566, code lost:
    
        r16.q0 = false;
        r16.r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x056b, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void connect(int r17) throws com.jcraft.jsch.JSchException {
        /*
            Method dump skipped, instruction units count: 1625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jsch.Session.connect(int):void");
    }

    public final void d(ConfigRepository.Config config, String str) {
        String value = config.getValue(str);
        if (value == null && str.equals("PubkeyAcceptedAlgorithms")) {
            value = config.getValue("PubkeyAcceptedKeyTypes");
        }
        if (value != null) {
            setConfig(str, value);
        }
    }

    public final void delPortForwardingL(String str, int i) throws JSchException {
        String strC = PortWatcher.c(str);
        PortWatcher portWatcherB = PortWatcher.b(this, strC, i);
        if (portWatcherB == null) {
            throw new JSchException(u48.m("PortForwardingL: local port ", strC, ":", i, " is not registered."));
        }
        portWatcherB.f = null;
        try {
            ServerSocket serverSocket = portWatcherB.g;
            if (serverSocket != null) {
                serverSocket.close();
            }
            portWatcherB.g = null;
        } catch (Exception unused) {
        }
        PortWatcher.j.removeElement(portWatcherB);
    }

    public final void delPortForwardingR(int i) throws JSchException {
        ChannelForwardedTCPIP.n(this, null, i);
    }

    public final void disconnect() {
        int[] iArr;
        int i;
        if (this.z) {
            if (getLogger().isEnabled(1)) {
                getLogger().log(1, "Disconnecting from " + this.f0 + " port " + this.h0);
            }
            Lock lockWriteLock = this.p0.writeLock();
            lockWriteLock.lock();
            try {
                this.n0 = true;
                ArrayList<Channel> arrayList = new ArrayList(this.o0);
                lockWriteLock.unlock();
                for (Channel channel : arrayList) {
                    try {
                        channel.disconnect();
                    } catch (Exception e) {
                        if (getLogger().isEnabled(0)) {
                            getLogger().log(0, "Exception disconnecting channel of type " + Util.c(channel.c) + ": " + e.getMessage(), e);
                        }
                    }
                }
                this.z = false;
                Vector vector = PortWatcher.j;
                synchronized (vector) {
                    try {
                        PortWatcher[] portWatcherArr = new PortWatcher[vector.size()];
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            Vector vector2 = PortWatcher.j;
                            if (i2 >= vector2.size()) {
                                break;
                            }
                            PortWatcher portWatcher = (PortWatcher) vector2.elementAt(i2);
                            if (portWatcher.a == this) {
                                portWatcher.f = null;
                                try {
                                    ServerSocket serverSocket = portWatcher.g;
                                    if (serverSocket != null) {
                                        serverSocket.close();
                                    }
                                    portWatcher.g = null;
                                } catch (Exception unused) {
                                }
                                int i4 = i3 + 1;
                                portWatcherArr[i3] = portWatcher;
                                i3 = i4;
                            }
                            i2++;
                        }
                        for (int i5 = 0; i5 < i3; i5++) {
                            PortWatcher.j.removeElement(portWatcherArr[i5]);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Vector vector3 = ChannelForwardedTCPIP.y;
                synchronized (vector3) {
                    try {
                        iArr = new int[vector3.size()];
                        int i6 = 0;
                        i = 0;
                        while (true) {
                            Vector vector4 = ChannelForwardedTCPIP.y;
                            if (i6 >= vector4.size()) {
                                break;
                            }
                            ChannelForwardedTCPIP.Config config = (ChannelForwardedTCPIP.Config) vector4.elementAt(i6);
                            if (config.a == this) {
                                iArr[i] = config.b;
                                i++;
                            }
                            i6++;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                for (int i7 = 0; i7 < i; i7++) {
                    ChannelForwardedTCPIP.n(this, null, iArr[i7]);
                }
                ChannelX11.m(this);
                synchronized (this.J) {
                    try {
                        if (this.I != null) {
                            Thread.yield();
                            this.I.interrupt();
                            this.I = null;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                this.x0 = null;
                try {
                    IO io = this.w;
                    if (io != null) {
                        InputStream inputStream = io.a;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        OutputStream outputStream = this.w.b;
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        OutputStream outputStream2 = this.w.c;
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                    }
                    Proxy proxy = this.S;
                    if (proxy == null) {
                        Socket socket = this.x;
                        if (socket != null) {
                            socket.close();
                        }
                    } else {
                        synchronized (proxy) {
                            this.S.close();
                        }
                        this.S = null;
                    }
                } catch (Exception unused2) {
                }
                this.w = null;
                this.x = null;
                lockWriteLock.lock();
                try {
                    this.n0 = false;
                    this.o0.clear();
                    lockWriteLock.unlock();
                    this.l = 0;
                    this.m = 0;
                    this.D = true;
                    this.E = false;
                    this.A = false;
                    this.Z = null;
                    this.k0.b(this);
                } catch (Throwable th4) {
                    lockWriteLock.unlock();
                    throw th4;
                }
            } catch (Throwable th5) {
                lockWriteLock.unlock();
                throw th5;
            }
        }
    }

    public final void e(String str, int i, KeyExchange keyExchange) throws JSchException {
        String str2;
        JSchRevokedHostKeyException jSchRevokedHostKeyException;
        String str3 = this.U;
        if (str3 != null) {
            str2 = str3;
        } else {
            if (i != 22) {
                str = "[" + str + "]:" + i;
            }
            str2 = str;
        }
        OpenSshCertificate openSshCertificate = keyExchange.f;
        if (openSshCertificate == null) {
            h(str2, keyExchange.getKeyType(), keyExchange.getFingerPrint(), keyExchange.h, keyExchange.e);
            return;
        }
        try {
            try {
                OpenSshCertificateHostKeyVerifier.a(this, openSshCertificate);
                try {
                    if (getLogger().isEnabled(1)) {
                        getLogger().log(1, "Host '" + str2 + "' is known and matches the " + keyExchange.getKeyType() + " host certificate");
                    }
                } catch (JSchRevokedHostKeyException e) {
                    jSchRevokedHostKeyException = e;
                    UserInfo userInfo = this.T;
                    if (userInfo != null) {
                        userInfo.showMessage("WARNING: REVOKED HOST KEY DETECTED!\nA key associated with the host certificate for " + str2 + " is marked as revoked.\nThis could mean that a stolen key is being used to impersonate this host.");
                    }
                    if (!getLogger().isEnabled(1)) {
                        throw jSchRevokedHostKeyException;
                    }
                    getLogger().log(1, "Host '" + str2 + "' has provided a certificate with a revoked key.");
                    throw jSchRevokedHostKeyException;
                }
            } catch (JSchException e2) {
                if (getConfig("host_certificate_to_key_fallback").equals("no")) {
                    throw e2;
                }
                if (getLogger().isEnabled(1)) {
                    getLogger().log(1, "Host certificate validation failed, falling back to public key verification. This bypasses CA trust validation. Reason: " + e2.getMessage(), e2);
                }
                byte[] bArr = openSshCertificate.b;
                byte[] bArr2 = bArr == null ? null : (byte[]) bArr.clone();
                if (bArr2 == null) {
                    throw new JSchException(dj7.n(new StringBuilder("Invalid certificate '"), openSshCertificate.d, "': missing public key"));
                }
                h(str2, keyExchange.getKeyType(), keyExchange.getFingerPrint(), keyExchange.h, bArr2);
            }
        } catch (JSchRevokedHostKeyException e3) {
            jSchRevokedHostKeyException = e3;
        }
    }

    public final Channel f(String str) {
        ChannelDirectStreamLocal channelDirectStreamLocal;
        ChannelSession channelSession = str.equals("session") ? new ChannelSession() : null;
        if (str.equals("shell")) {
            channelSession = new ChannelShell();
        }
        ChannelSession channelExec = channelSession;
        if (str.equals("exec")) {
            channelExec = new ChannelExec();
        }
        Channel channelX11 = channelExec;
        if (str.equals("x11")) {
            channelX11 = new ChannelX11();
        }
        Channel channelAgentForwarding = channelX11;
        if (str.equals("auth-agent@openssh.com")) {
            channelAgentForwarding = new ChannelAgentForwarding();
        }
        Channel channelDirectTCPIP = channelAgentForwarding;
        if (str.equals("direct-tcpip")) {
            channelDirectTCPIP = new ChannelDirectTCPIP();
        }
        Channel channelForwardedTCPIP = channelDirectTCPIP;
        if (str.equals("forwarded-tcpip")) {
            channelForwardedTCPIP = new ChannelForwardedTCPIP();
        }
        Channel channel = channelForwardedTCPIP;
        if (str.equals("sftp")) {
            ChannelSftp channelSftp = new ChannelSftp();
            channelSftp.Y = getConfig("use_sftp_write_flush_workaround").equals("yes");
            channel = channelSftp;
        }
        Channel channelSubsystem = channel;
        if (str.equals("subsystem")) {
            channelSubsystem = new ChannelSubsystem();
        }
        Channel channel2 = channelSubsystem;
        if (str.equals("direct-streamlocal@openssh.com")) {
            channelDirectStreamLocal = new ChannelDirectStreamLocal();
        }
        if (channel2 == null) {
            channel2 = channelDirectStreamLocal;
            return null;
        }
        channel2 = channelDirectStreamLocal;
        Lock lockWriteLock = this.p0.writeLock();
        lockWriteLock.lock();
        try {
            if (this.n0 || !this.z) {
                return null;
            }
            channel2.s = this;
            this.o0.add(channel2);
            return channel2;
        } finally {
            lockWriteLock.unlock();
        }
    }

    public final void g(Channel channel) {
        Lock lockWriteLock = this.p0.writeLock();
        lockWriteLock.lock();
        try {
            this.o0.remove(channel);
        } finally {
            lockWriteLock.unlock();
        }
    }

    public final String getClientVersion() {
        return Util.c(this.b);
    }

    public final String getConfig(String str) {
        if (str.equals("PubkeyAcceptedKeyTypes")) {
            str = "PubkeyAcceptedAlgorithms";
        }
        Hashtable hashtable = this.R;
        if (hashtable != null) {
            Object obj = hashtable.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        String config = JSch.getConfig(str);
        if (config != null) {
            return config;
        }
        return null;
    }

    public final String getHost() {
        return this.f0;
    }

    public final HostKey getHostKey() {
        return this.z0;
    }

    public final String getHostKeyAlias() {
        return this.U;
    }

    public final HostKeyRepository getHostKeyRepository() {
        HostKeyRepository hostKeyRepository = this.Y;
        return hostKeyRepository == null ? this.k0.getHostKeyRepository() : hostKeyRepository;
    }

    public final Logger getLogger() {
        Logger logger = this.l0;
        return logger != null ? logger : this.k0.a.a();
    }

    public final int getPort() {
        return this.h0;
    }

    public final String[] getPortForwardingL() throws JSchException {
        int i;
        Vector vector = PortWatcher.j;
        Vector vector2 = new Vector();
        synchronized (PortWatcher.j) {
            int i2 = 0;
            while (true) {
                try {
                    Vector vector3 = PortWatcher.j;
                    if (i2 >= vector3.size()) {
                        break;
                    }
                    PortWatcher portWatcher = (PortWatcher) vector3.elementAt(i2);
                    if (portWatcher.a == this) {
                        vector2.addElement(portWatcher.b + ":" + portWatcher.d + ":" + portWatcher.c);
                    }
                    i2++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String[] strArr = new String[vector2.size()];
        for (i = 0; i < vector2.size(); i++) {
            strArr[i] = (String) vector2.elementAt(i);
        }
        return strArr;
    }

    public final String[] getPortForwardingR() throws JSchException {
        int i;
        Vector vector = ChannelForwardedTCPIP.y;
        Vector vector2 = new Vector();
        synchronized (ChannelForwardedTCPIP.y) {
            int i2 = 0;
            while (true) {
                try {
                    Vector vector3 = ChannelForwardedTCPIP.y;
                    if (i2 >= vector3.size()) {
                        break;
                    }
                    ChannelForwardedTCPIP.Config config = (ChannelForwardedTCPIP.Config) vector3.elementAt(i2);
                    if (config.a == this) {
                        if (config instanceof ChannelForwardedTCPIP.ConfigDaemon) {
                            vector2.addElement(config.c + ":" + config.e + ":");
                        } else {
                            vector2.addElement(config.c + ":" + config.e + ":" + ((ChannelForwardedTCPIP.ConfigLHost) config).f);
                        }
                    }
                    i2++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String[] strArr = new String[vector2.size()];
        for (i = 0; i < vector2.size(); i++) {
            strArr[i] = (String) vector2.elementAt(i);
        }
        return strArr;
    }

    public final int getServerAliveCountMax() {
        return this.W;
    }

    public final int getServerAliveInterval() {
        return this.V;
    }

    public final String getServerVersion() {
        return Util.c(this.a);
    }

    public final Channel getStreamForwarder(String str, int i) throws JSchException {
        ChannelDirectTCPIP channelDirectTCPIP = (ChannelDirectTCPIP) openChannel("direct-tcpip");
        if (channelDirectTCPIP != null) {
            channelDirectTCPIP.v = str;
            channelDirectTCPIP.w = i;
            return channelDirectTCPIP;
        }
        String strM = u48.m("Failed to add DirectTCPIP channel to ", str, ":", i, " - session may be disconnecting");
        if (getLogger().isEnabled(0)) {
            getLogger().log(0, strM);
        }
        e6.h(strM);
        return null;
    }

    public final ThreadFactory getThreadFactory() {
        return this.m0;
    }

    public final int getTimeout() {
        return this.y;
    }

    public final String[] getUnavailableSignatures() {
        return this.s0;
    }

    public final UserInfo getUserInfo() {
        return this.T;
    }

    public final String getUserName() {
        return this.i0;
    }

    public final void h(String str, String str2, String str3, String str4, byte[] bArr) throws JSchChangedHostKeyException, JSchUnknownHostKeyException, JSchRevokedHostKeyException {
        int iCheck;
        String knownHostsRepositoryID;
        boolean zPromptYesNo;
        boolean z;
        Charset charset;
        String config = getConfig("StrictHostKeyChecking");
        HostKeyRepository hostKeyRepository = getHostKeyRepository();
        if (getConfig("HashKnownHosts").equals("yes") && (hostKeyRepository instanceof KnownHosts)) {
            KnownHosts knownHosts = (KnownHosts) hostKeyRepository;
            KnownHosts.HashedHostKey hashedHostKey = new KnownHosts.HashedHostKey(knownHosts, str, 0, bArr);
            if (!hashedHostKey.g) {
                if (hashedHostKey.h == null) {
                    Random random = A0;
                    synchronized (random) {
                        int blockSize = knownHosts.d.getBlockSize();
                        byte[] bArr2 = new byte[blockSize];
                        hashedHostKey.h = bArr2;
                        random.fill(bArr2, 0, blockSize);
                    }
                }
                try {
                    synchronized (knownHosts.d) {
                        try {
                            knownHosts.d.init(hashedHostKey.h);
                            String str5 = hashedHostKey.b;
                            charset = StandardCharsets.UTF_8;
                            byte[] bArrP = Util.p(str5, charset);
                            knownHosts.d.update(bArrP, 0, bArrP.length);
                            byte[] bArr3 = new byte[knownHosts.d.getBlockSize()];
                            hashedHostKey.i = bArr3;
                            knownHosts.d.doFinal(bArr3, 0);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    StringBuilder sb = new StringBuilder("|1|");
                    byte[] bArr4 = hashedHostKey.h;
                    byte[] bArrQ = Util.q(bArr4.length, true, bArr4);
                    sb.append(new String(bArrQ, 0, bArrQ.length, charset));
                    sb.append("|");
                    byte[] bArr5 = hashedHostKey.i;
                    byte[] bArrQ2 = Util.q(bArr5.length, true, bArr5);
                    sb.append(new String(bArrQ2, 0, bArrQ2.length, charset));
                    hashedHostKey.b = sb.toString();
                    hashedHostKey.g = true;
                } catch (Exception e) {
                    KnownHosts.this.a.a.a().log(3, "an error occurred while trying to calculate the hash for host " + hashedHostKey.b, e);
                    hashedHostKey.h = null;
                    hashedHostKey.i = null;
                }
            }
            this.z0 = hashedHostKey;
        } else {
            this.z0 = new HostKey(str, bArr);
        }
        synchronized (hostKeyRepository) {
            iCheck = hostKeyRepository.check(str, bArr);
        }
        if ((config.equals("ask") || config.equals("yes")) && iCheck == 2) {
            synchronized (hostKeyRepository) {
                knownHostsRepositoryID = hostKeyRepository.getKnownHostsRepositoryID();
            }
            if (knownHostsRepositoryID == null) {
                knownHostsRepositoryID = "known_hosts";
            }
            if (this.T != null) {
                StringBuilder sbP = u48.p("WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the ", str2, " host key has just been changed.\nThe fingerprint for the ", str2, " key sent by the remote host ");
                xs1.t(sbP, str, " is\n", str3, ".\nPlease contact your system administrator.\nAdd correct host key in ");
                String strN = dj7.n(sbP, knownHostsRepositoryID, " to get rid of this message.");
                boolean zEquals = config.equals("ask");
                UserInfo userInfo = this.T;
                if (zEquals) {
                    zPromptYesNo = userInfo.promptYesNo(strN.concat("\nDo you want to delete the old key and insert the new key?"));
                } else {
                    userInfo.showMessage(strN);
                    zPromptYesNo = false;
                }
            } else {
                zPromptYesNo = false;
            }
            if (!zPromptYesNo) {
                throw new JSchChangedHostKeyException(xs1.j("HostKey has been changed: ", str));
            }
            synchronized (hostKeyRepository) {
                hostKeyRepository.remove(str, str4, null);
            }
            z = true;
        } else {
            z = false;
        }
        if ((config.equals("ask") || config.equals("yes")) && iCheck != 0 && !z) {
            if (config.equals("yes")) {
                throw new JSchUnknownHostKeyException(xs1.j("reject HostKey: ", str));
            }
            UserInfo userInfo2 = this.T;
            if (userInfo2 == null) {
                if (iCheck != 1) {
                    throw new JSchChangedHostKeyException(xs1.j("HostKey has been changed: ", str));
                }
                StringBuilder sbP2 = u48.p("UnknownHostKey: ", str, ". ", str2, " key fingerprint is ");
                sbP2.append(str3);
                throw new JSchUnknownHostKeyException(sbP2.toString());
            }
            StringBuilder sbP3 = u48.p("The authenticity of host '", str, "' can't be established.\n", str2, " key fingerprint is ");
            sbP3.append(str3);
            sbP3.append(".\nAre you sure you want to continue connecting?");
            if (!userInfo2.promptYesNo(sbP3.toString())) {
                throw new JSchUnknownHostKeyException(xs1.j("reject HostKey: ", str));
            }
            z = true;
        }
        if (config.equals("no") && 1 == iCheck) {
            z = true;
        }
        if (iCheck == 0) {
            HostKey[] hostKey = hostKeyRepository.getHostKey(str, str4);
            byte[] bArrQ3 = Util.q(bArr.length, true, bArr);
            String str6 = new String(bArrQ3, 0, bArrQ3.length, StandardCharsets.UTF_8);
            for (int i = 0; i < hostKey.length; i++) {
                if (hostKey[i].getKey().equals(str6) && hostKey[i].a.equals("@revoked")) {
                    UserInfo userInfo3 = this.T;
                    if (userInfo3 != null) {
                        userInfo3.showMessage(eq3.l("The ", str2, " host key for ", str, " is marked as revoked.\nThis could mean that a stolen key is being used to impersonate this host."));
                    }
                    if (getLogger().isEnabled(1)) {
                        getLogger().log(1, "Host '" + str + "' has provided revoked key.");
                    }
                    throw new JSchRevokedHostKeyException(xs1.j("revoked HostKey: ", str));
                }
            }
        }
        if (iCheck == 0 && getLogger().isEnabled(1)) {
            getLogger().log(1, eq3.l("Host '", str, "' is known and matches the ", str2, " host key"));
        }
        if (z && getLogger().isEnabled(2)) {
            getLogger().log(2, eq3.l("Permanently added '", str, "' (", str2, ") to the list of known hosts."));
        }
        if (z) {
            synchronized (hostKeyRepository) {
                hostKeyRepository.add(this.z0, this.T);
            }
        }
    }

    public final void i(Packet packet) throws Exception {
        MAC mac;
        Compression compression = this.u;
        if (compression != null) {
            int[] iArr = this.u0;
            Buffer buffer = packet.a;
            iArr[0] = buffer.c;
            buffer.b = compression.compress(buffer.b, 5, iArr);
            packet.a.c = this.u0[0];
        }
        Cipher cipher = this.p;
        int i = cipher != null ? this.w0 : 8;
        boolean z = cipher != null && cipher.isChaCha20();
        Cipher cipher2 = this.p;
        boolean z2 = cipher2 != null && cipher2.isAEAD();
        boolean z3 = (z || z2 || this.p == null || (mac = this.r) == null || !mac.isEtM()) ? false : true;
        boolean z4 = (z || z2 || z3) ? false : true;
        Buffer buffer2 = packet.a;
        int i2 = buffer2.c;
        if (!z4) {
            i2 -= 4;
        }
        int i3 = (-i2) & (i - 1);
        if (i3 < i) {
            i3 += i;
        }
        int i4 = i2 + i3;
        if (z4) {
            i4 -= 4;
        }
        byte[] bArr = packet.b;
        bArr[0] = (byte) (i4 >>> 24);
        bArr[1] = (byte) (i4 >>> 16);
        bArr[2] = (byte) (i4 >>> 8);
        bArr[3] = (byte) i4;
        System.arraycopy(bArr, 0, buffer2.b, 0, 4);
        packet.a.b[4] = (byte) i3;
        synchronized (Packet.c) {
            Random random = Packet.c;
            Buffer buffer3 = packet.a;
            random.fill(buffer3.b, buffer3.c, i3);
        }
        packet.a.h(i3);
        Buffer buffer4 = packet.a;
        byte[] bArr2 = buffer4.b;
        if (z) {
            this.p.update(this.m);
            this.p.update(bArr2, 0, 4, bArr2, 0);
            this.p.doFinal(bArr2, 0, packet.a.c, bArr2, 0);
            packet.a.h(this.p.getTagSize());
            return;
        }
        if (z2) {
            this.p.updateAAD(bArr2, 0, 4);
            this.p.doFinal(bArr2, 4, packet.a.c - 4, bArr2, 4);
            packet.a.h(this.p.getTagSize());
            return;
        }
        if (z3) {
            this.p.update(bArr2, 4, buffer4.c - 4, bArr2, 4);
            this.r.update(this.m);
            MAC mac2 = this.r;
            Buffer buffer5 = packet.a;
            mac2.update(buffer5.b, 0, buffer5.c);
            MAC mac3 = this.r;
            Buffer buffer6 = packet.a;
            mac3.doFinal(buffer6.b, buffer6.c);
            packet.a.h(this.r.getBlockSize());
            return;
        }
        MAC mac4 = this.r;
        if (mac4 != null) {
            mac4.update(this.m);
            MAC mac5 = this.r;
            Buffer buffer7 = packet.a;
            mac5.update(buffer7.b, 0, buffer7.c);
            MAC mac6 = this.r;
            Buffer buffer8 = packet.a;
            mac6.doFinal(buffer8.b, buffer8.c);
        }
        Cipher cipher3 = this.p;
        if (cipher3 != null) {
            cipher3.update(bArr2, 0, packet.a.c, bArr2, 0);
        }
        MAC mac7 = this.r;
        if (mac7 != null) {
            packet.a.h(mac7.getBlockSize());
        }
    }

    public final boolean isConnected() {
        return this.z;
    }

    public final int k() {
        Cipher cipher = this.p;
        MAC mac = this.r;
        int blockSize = 20;
        if (cipher == null || !(cipher.isChaCha20() || cipher.isAEAD())) {
            if (mac != null && mac.getBlockSize() > 20) {
                blockSize = mac.getBlockSize();
            }
        } else if (cipher.getTagSize() > 20) {
            blockSize = cipher.getTagSize();
        }
        return 64 + blockSize;
    }

    public final Channel l(int i) {
        Lock lock = this.p0.readLock();
        lock.lock();
        try {
            for (Channel channel : this.o0) {
                if (channel.a == i) {
                    return channel;
                }
            }
            return null;
        } finally {
            lock.unlock();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(java.lang.String r5) {
        /*
            r4 = this;
            com.jcraft.jsch.Compression r0 = r4.u
            java.lang.String r1 = "none"
            boolean r1 = r5.equals(r1)
            r2 = 0
            if (r1 == 0) goto L13
            r4.u = r2
            if (r0 == 0) goto L6e
            r0.end()
            return
        L13:
            java.lang.String r1 = r4.getConfig(r5)
            if (r1 == 0) goto L6e
            java.lang.String r3 = "zlib"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L2d
            boolean r3 = r4.H
            if (r3 == 0) goto L6e
            java.lang.String r3 = "zlib@openssh.com"
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L6e
        L2d:
            java.lang.Class r5 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            java.lang.Class<com.jcraft.jsch.Compression> r1 = com.jcraft.jsch.Compression.class
            java.lang.Class r5 = r5.asSubclass(r1)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            java.lang.reflect.Constructor r5 = r5.getDeclaredConstructor(r2)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            java.lang.Object r5 = r5.newInstance(r2)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            com.jcraft.jsch.Compression r5 = (com.jcraft.jsch.Compression) r5     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            r4.u = r5     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            java.lang.String r5 = "compression_level"
            java.lang.String r5 = r4.getConfig(r5)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            goto L51
        L4e:
            r4 = move-exception
            goto L68
        L50:
            r5 = 6
        L51:
            com.jcraft.jsch.Compression r1 = r4.u     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            r2 = 1
            r1.init(r2, r5, r4)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L5d
            if (r0 == 0) goto L6e
            r0.end()
            goto L6e
        L5d:
            r4 = move-exception
            com.jcraft.jsch.JSchException r5 = new com.jcraft.jsch.JSchException     // Catch: java.lang.Throwable -> L4e
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Throwable -> L4e
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L4e
            throw r5     // Catch: java.lang.Throwable -> L4e
        L68:
            if (r0 == 0) goto L6d
            r0.end()
        L6d:
            throw r4
        L6e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jsch.Session.m(java.lang.String):void");
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x004d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(java.lang.String r5) {
        /*
            r4 = this;
            com.jcraft.jsch.Compression r0 = r4.v
            java.lang.String r1 = "none"
            boolean r1 = r5.equals(r1)
            r2 = 0
            if (r1 == 0) goto L13
            r4.v = r2
            if (r0 == 0) goto L60
            r0.end()
            return
        L13:
            java.lang.String r1 = r4.getConfig(r5)
            if (r1 == 0) goto L60
            java.lang.String r3 = "zlib"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L2d
            boolean r3 = r4.H
            if (r3 == 0) goto L60
            java.lang.String r3 = "zlib@openssh.com"
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L60
        L2d:
            java.lang.Class r5 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.Class<com.jcraft.jsch.Compression> r1 = com.jcraft.jsch.Compression.class
            java.lang.Class r5 = r5.asSubclass(r1)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.reflect.Constructor r5 = r5.getDeclaredConstructor(r2)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.Object r5 = r5.newInstance(r2)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            com.jcraft.jsch.Compression r5 = (com.jcraft.jsch.Compression) r5     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r4.v = r5     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r1 = 0
            r5.init(r1, r1, r4)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r0 == 0) goto L60
            r0.end()
            return
        L4d:
            r4 = move-exception
            goto L5a
        L4f:
            r4 = move-exception
            com.jcraft.jsch.JSchException r5 = new com.jcraft.jsch.JSchException     // Catch: java.lang.Throwable -> L4d
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Throwable -> L4d
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L4d
            throw r5     // Catch: java.lang.Throwable -> L4d
        L5a:
            if (r0 == 0) goto L5f
            r0.end()
        L5f:
            throw r4
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jsch.Session.n(java.lang.String):void");
    }

    public final void noMoreSessionChannels() throws Exception {
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 80);
        buffer.putString(C0);
        buffer.putByte((byte) 0);
        z(packet);
    }

    public final Channel openChannel(String str) throws JSchException {
        if (!this.z) {
            e6.h("session is down");
            return null;
        }
        try {
            Channel channelF = f(str);
            if (channelF == null) {
                if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "Failed to open channel of type " + str + " - type unsupported or session may be disconnecting");
                }
                return null;
            }
            channelF.g();
            if (channelF instanceof ChannelSession) {
                ChannelSession channelSession = (ChannelSession) channelF;
                ConfigRepository configRepository = this.k0.e;
                if (configRepository != null) {
                    ConfigRepository.Config config = configRepository.getConfig(this.g0);
                    String value = config.getValue("ForwardAgent");
                    if (value != null) {
                        channelSession.setAgentForwarding(value.equals("yes"));
                    }
                    String value2 = config.getValue("RequestTTY");
                    if (value2 != null) {
                        channelSession.setPty(value2.equals("yes"));
                        return channelF;
                    }
                }
            }
            return channelF;
        } catch (Exception e) {
            if (getLogger().isEnabled(0)) {
                Logger logger = getLogger();
                StringBuilder sbU = dj7.u("Exception creating channel of type ", str, ": ");
                sbU.append(e.getMessage());
                logger.log(0, sbU.toString(), e);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:137:0x038b  */
    /* JADX WARN: Code duplicated, block: B:142:0x0395  */
    /* JADX WARN: Code duplicated, block: B:145:0x039b  */
    /* JADX WARN: Code duplicated, block: B:147:0x039e  */
    /* JADX WARN: Code duplicated, block: B:149:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:150:0x03cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:151:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:152:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:154:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:156:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:157:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:159:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:161:0x0406  */
    /* JADX WARN: Code duplicated, block: B:163:0x0411  */
    /* JADX WARN: Code duplicated, block: B:164:0x041b  */
    /* JADX WARN: Code duplicated, block: B:166:0x0420  */
    /* JADX WARN: Code duplicated, block: B:168:0x042a  */
    /* JADX WARN: Code duplicated, block: B:169:0x0434  */
    /* JADX WARN: Code duplicated, block: B:171:0x0438  */
    /* JADX WARN: Code duplicated, block: B:173:0x0442  */
    /* JADX WARN: Code duplicated, block: B:174:0x044c  */
    /* JADX WARN: Code duplicated, block: B:176:0x0456  */
    /* JADX WARN: Code duplicated, block: B:181:0x046a  */
    /* JADX WARN: Code duplicated, block: B:183:0x0474  */
    /* JADX WARN: Code duplicated, block: B:185:0x0484  */
    /* JADX WARN: Code duplicated, block: B:187:0x0495  */
    /* JADX WARN: Code duplicated, block: B:190:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:192:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:194:0x04c1  */
    /* JADX WARN: Code duplicated, block: B:197:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:203:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:205:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:235:0x0506 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:237:0x04e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:238:0x04e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x04e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x04e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x04de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x04de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x01da  */
    /* JADX WARN: Instruction removed from duplicated block: B:149:0x03b5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:187:0x0495, please report this as an issue */
    public final void p(Buffer buffer) throws Exception {
        char c;
        int i;
        char c2;
        int i2;
        int i3;
        boolean z;
        long uInt;
        long j;
        byte[] string;
        byte[] string2;
        int length;
        Charset charset;
        String str;
        String strConcat;
        Channel channelL;
        int i4;
        MAC mac;
        Buffer buffer2 = buffer;
        Cipher cipher = this.o;
        char c3 = 1;
        boolean z2 = cipher != null && cipher.isChaCha20();
        Cipher cipher2 = this.o;
        boolean z3 = cipher2 != null && cipher2.isAEAD();
        boolean z4 = (z2 || z3 || this.o == null || (mac = this.q) == null || !mac.isEtM()) ? false : true;
        while (true) {
            buffer2.reset();
            if (z2) {
                c2 = 2;
                this.w.c(buffer2.b, buffer2.c, 4);
                buffer2.c += 4;
                this.o.update(this.l);
                byte[] bArr = new byte[4];
                this.o.update(buffer2.b, 0, 4, bArr, 0);
                int i5 = ((bArr[0] << 24) & (-16777216)) | ((bArr[c3] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & 255);
                if (i5 < 5 || i5 > 262144) {
                    break;
                }
                int tagSize = this.o.getTagSize() + i5;
                int i6 = buffer2.c;
                c = c3;
                int i7 = i6 + tagSize;
                i = 3;
                byte[] bArr2 = buffer2.b;
                if (i7 > bArr2.length) {
                    byte[] bArr3 = new byte[i7];
                    System.arraycopy(bArr2, 0, bArr3, 0, i6);
                    buffer2.b = bArr3;
                }
                if (tagSize % this.v0 != 0) {
                    String strJ = fz5.j(tagSize, "Bad packet length ");
                    if (getLogger().isEnabled(4)) {
                        getLogger().log(4, strJ);
                    }
                    x(buffer2, this.o, this.q, 0, 262144 - this.v0);
                    throw null;
                }
                this.w.c(buffer2.b, buffer2.c, tagSize);
                int tagSize2 = tagSize - this.o.getTagSize();
                buffer2.c += tagSize2;
                try {
                    Cipher cipher3 = this.o;
                    byte[] bArr4 = buffer2.b;
                    cipher3.doFinal(bArr4, 0, tagSize2 + 4, bArr4, 0);
                    System.arraycopy(bArr, 0, buffer2.b, 0, 4);
                } catch (AEADBadTagException e) {
                    throw new JSchException("Packet corrupt", e);
                }
            } else {
                c = c3;
                i = 3;
                c2 = 2;
                if (z3 || z4) {
                    this.w.c(buffer2.b, buffer2.c, 4);
                    buffer2.c += 4;
                    byte[] bArr5 = buffer2.b;
                    int tagSize3 = (bArr5[3] & 255) | ((bArr5[0] << 24) & (-16777216)) | ((bArr5[c] << 16) & 16711680) | ((bArr5[2] << 8) & 65280);
                    if (tagSize3 < 5 || tagSize3 > 262144) {
                        x(buffer2, this.o, this.q, 0, 262144);
                        throw null;
                    }
                    if (z3) {
                        tagSize3 += this.o.getTagSize();
                    }
                    int i8 = buffer2.c;
                    int i9 = i8 + tagSize3;
                    byte[] bArr6 = buffer2.b;
                    if (i9 > bArr6.length) {
                        byte[] bArr7 = new byte[i9];
                        System.arraycopy(bArr6, 0, bArr7, 0, i8);
                        buffer2.b = bArr7;
                    }
                    if (tagSize3 % this.v0 != 0) {
                        String strJ2 = fz5.j(tagSize3, "Bad packet length ");
                        if (getLogger().isEnabled(4)) {
                            getLogger().log(4, strJ2);
                        }
                        x(buffer2, this.o, this.q, 0, 262144 - this.v0);
                        throw null;
                    }
                    this.w.c(buffer2.b, buffer2.c, tagSize3);
                    buffer2.c += tagSize3;
                    if (z3) {
                        try {
                            this.o.updateAAD(buffer2.b, 0, 4);
                            Cipher cipher4 = this.o;
                            byte[] bArr8 = buffer2.b;
                            cipher4.doFinal(bArr8, 4, tagSize3, bArr8, 4);
                            buffer2.c -= this.o.getTagSize();
                        } catch (AEADBadTagException e2) {
                            throw new JSchException("Packet corrupt", e2);
                        }
                    } else {
                        int i10 = tagSize3;
                        this.q.update(this.l);
                        this.q.update(buffer2.b, 0, buffer2.c);
                        this.q.doFinal(this.s, 0);
                        IO io = this.w;
                        byte[] bArr9 = this.t;
                        io.c(bArr9, 0, bArr9.length);
                        if (!Util.b(this.s, this.t)) {
                            e6.h("Packet corrupt");
                            return;
                        } else {
                            Cipher cipher5 = this.o;
                            byte[] bArr10 = buffer2.b;
                            cipher5.update(bArr10, 4, i10, bArr10, 4);
                        }
                    }
                } else {
                    this.w.c(buffer2.b, buffer2.c, this.v0);
                    int i11 = buffer2.c;
                    int i12 = this.v0;
                    buffer2.c = i11 + i12;
                    Cipher cipher6 = this.o;
                    if (cipher6 != null) {
                        byte[] bArr11 = buffer2.b;
                        cipher6.update(bArr11, 0, i12, bArr11, 0);
                    }
                    byte[] bArr12 = buffer2.b;
                    int i13 = ((bArr12[0] << 24) & (-16777216)) | ((bArr12[c] << 16) & 16711680) | ((bArr12[2] << 8) & 65280) | (bArr12[3] & 255);
                    if (i13 < 5 || i13 > 262144) {
                        x(buffer, this.o, this.q, 0, 262144);
                        throw null;
                    }
                    int i14 = (i13 + 4) - this.v0;
                    int i15 = buffer2.c;
                    int i16 = i15 + i14;
                    if (i16 > bArr12.length) {
                        byte[] bArr13 = new byte[i16];
                        System.arraycopy(bArr12, 0, bArr13, 0, i15);
                        buffer2.b = bArr13;
                    }
                    if (i14 % this.v0 != 0) {
                        String strJ3 = fz5.j(i14, "Bad packet length ");
                        if (getLogger().isEnabled(4)) {
                            getLogger().log(4, strJ3);
                        }
                        x(buffer2, this.o, this.q, 0, 262144 - this.v0);
                        throw null;
                    }
                    if (i14 > 0) {
                        this.w.c(buffer2.b, buffer2.c, i14);
                        buffer2.c += i14;
                        Cipher cipher7 = this.o;
                        if (cipher7 != null) {
                            byte[] bArr14 = buffer2.b;
                            int i17 = this.v0;
                            i2 = i14;
                            cipher7.update(bArr14, i17, i2, bArr14, i17);
                        } else {
                            i2 = i14;
                        }
                    } else {
                        i2 = i14;
                    }
                    MAC mac2 = this.q;
                    if (mac2 != null) {
                        mac2.update(this.l);
                        this.q.update(buffer2.b, 0, buffer2.c);
                        this.q.doFinal(this.s, 0);
                        IO io2 = this.w;
                        byte[] bArr15 = this.t;
                        io2.c(bArr15, 0, bArr15.length);
                        if (!Util.b(this.s, this.t)) {
                            int i18 = this.v0;
                            if (i2 + i18 > 262144) {
                                y5.m("MAC Error");
                                return;
                            } else {
                                x(buffer2, this.o, this.q, buffer2.c, (262144 - i2) - i18);
                                throw null;
                            }
                        }
                    }
                    buffer2 = buffer;
                }
            }
            int i19 = this.l + 1;
            this.l = i19;
            if (i19 == 0 && ((this.F || this.G) && this.D)) {
                throw new JSchStrictKexException("incoming sequence number wrapped during initial KEX");
            }
            Compression compression = this.v;
            if (compression != null) {
                try {
                    byte[] bArr16 = buffer2.b;
                    byte b = bArr16[4];
                    int[] iArr = this.t0;
                    iArr[0] = (buffer2.c - 5) - b;
                    byte[] bArrUncompress = compression.uncompress(bArr16, 5, iArr);
                    if (bArrUncompress != null) {
                        buffer2.b = bArrUncompress;
                        buffer2.c = this.t0[0] + 5;
                        i3 = buffer2.b[5] & 255;
                        if (i3 != c) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                            int i20 = buffer2.getInt();
                            byte[] string3 = buffer2.getString();
                            byte[] string4 = buffer2.getString();
                            int length2 = string3.length;
                            Charset charset2 = StandardCharsets.UTF_8;
                            String str2 = new String(string3, 0, length2, charset2);
                            String str3 = new String(string4, 0, string4.length, charset2);
                            throw new JSchSessionDisconnectException("SSH_MSG_DISCONNECT: " + i20 + TokenAuthenticationScheme.SCHEME_DELIMITER + str2 + TokenAuthenticationScheme.SCHEME_DELIMITER + str3, i20, str2, str3);
                        }
                        if (this.D || !this.E) {
                            if (i3 != c2) {
                                if (i3 == 3) {
                                    buffer2.d = 0;
                                    buffer2.getInt();
                                    buffer2.f();
                                    i4 = buffer2.getInt();
                                    if (getLogger().isEnabled(1)) {
                                        getLogger().log(1, "Received SSH_MSG_UNIMPLEMENTED for " + i4);
                                    }
                                } else if (i3 == 4) {
                                    buffer2.d = 0;
                                    buffer2.getInt();
                                    buffer2.f();
                                } else if (i3 == 93) {
                                    buffer2.d = 0;
                                    buffer2.getInt();
                                    buffer2.f();
                                    channelL = l(buffer2.getInt());
                                    if (channelL != null) {
                                        channelL.a(buffer2.getUInt());
                                    }
                                } else if (i3 == 7) {
                                    buffer2.d = 0;
                                    buffer2.getInt();
                                    buffer2.f();
                                    if (this.B) {
                                        z = true;
                                        if (this.H) {
                                            if (getLogger().isEnabled(1)) {
                                                getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO received after SSH_MSG_USERAUTH_SUCCESS");
                                            }
                                        } else if (!this.q0) {
                                            if (getLogger().isEnabled(1)) {
                                                getLogger().log(1, "SSH_MSG_EXT_INFO received");
                                            }
                                            z = false;
                                        } else if (getLogger().isEnabled(1)) {
                                            getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO received before SSH_MSG_NEWKEYS");
                                        }
                                    } else {
                                        z = true;
                                        if (getLogger().isEnabled(1)) {
                                            getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO while enable_server_sig_algs != yes");
                                        }
                                    }
                                    uInt = buffer2.getUInt();
                                    for (j = 0; j < uInt; j++) {
                                        string = buffer2.getString();
                                        string2 = buffer2.getString();
                                        if (!z) {
                                            length = string.length;
                                            charset = StandardCharsets.UTF_8;
                                            if (new String(string, 0, length, charset).equals("server-sig-algs")) {
                                                str = new String(string2, 0, string2.length, charset);
                                                if (getLogger().isEnabled(1)) {
                                                    getLogger().log(1, "server-sig-algs=<" + str + ">");
                                                }
                                                if (this.a0) {
                                                    if (str.isEmpty()) {
                                                        strConcat = "rsa-sha2-256,rsa-sha2-512";
                                                    } else {
                                                        strConcat = str.concat(",rsa-sha2-256,rsa-sha2-512");
                                                    }
                                                    str = strConcat;
                                                    if (getLogger().isEnabled(1)) {
                                                        getLogger().log(1, "OpenSSH 7.4 detected: adding rsa-sha2-256 & rsa-sha2-512 to server-sig-algs");
                                                    }
                                                }
                                                this.Z = Util.o(str);
                                            }
                                        }
                                    }
                                } else if (i3 == 52) {
                                    this.H = true;
                                    if (this.v == null && this.u == null) {
                                        m(this.n[6]);
                                        n(this.n[7]);
                                    }
                                }
                            }
                            c3 = 1;
                        }
                    } else {
                        int i21 = i;
                        if (getLogger().isEnabled(i21)) {
                            getLogger().log(i21, "fail in inflater");
                        }
                    }
                } catch (Compression.InflaterException e3) {
                    throw new JSchException(e3.getMessage(), e3);
                }
            } else {
                i3 = buffer2.b[5] & 255;
                if (i3 != c) {
                    buffer2.d = 0;
                    buffer2.getInt();
                    buffer2.f();
                    int i22 = buffer2.getInt();
                    byte[] string5 = buffer2.getString();
                    byte[] string6 = buffer2.getString();
                    int length3 = string5.length;
                    Charset charset3 = StandardCharsets.UTF_8;
                    String str4 = new String(string5, 0, length3, charset3);
                    String str5 = new String(string6, 0, string6.length, charset3);
                    throw new JSchSessionDisconnectException("SSH_MSG_DISCONNECT: " + i22 + TokenAuthenticationScheme.SCHEME_DELIMITER + str4 + TokenAuthenticationScheme.SCHEME_DELIMITER + str5, i22, str4, str5);
                }
                if (this.D) {
                    if (i3 != c2) {
                        if (i3 == 3) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                            i4 = buffer2.getInt();
                            if (getLogger().isEnabled(1)) {
                                getLogger().log(1, "Received SSH_MSG_UNIMPLEMENTED for " + i4);
                            }
                        } else if (i3 == 4) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                        } else if (i3 == 93) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                            channelL = l(buffer2.getInt());
                            if (channelL != null) {
                                channelL.a(buffer2.getUInt());
                            }
                        } else if (i3 == 7) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                            if (this.B) {
                                z = true;
                                if (getLogger().isEnabled(1)) {
                                    getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO while enable_server_sig_algs != yes");
                                }
                            } else {
                                z = true;
                                if (this.H) {
                                    if (getLogger().isEnabled(1)) {
                                        getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO received after SSH_MSG_USERAUTH_SUCCESS");
                                    }
                                } else if (!this.q0) {
                                    if (getLogger().isEnabled(1)) {
                                        getLogger().log(1, "SSH_MSG_EXT_INFO received");
                                    }
                                    z = false;
                                } else if (getLogger().isEnabled(1)) {
                                    getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO received before SSH_MSG_NEWKEYS");
                                }
                            }
                            uInt = buffer2.getUInt();
                            while (j < uInt) {
                                string = buffer2.getString();
                                string2 = buffer2.getString();
                                if (!z) {
                                    length = string.length;
                                    charset = StandardCharsets.UTF_8;
                                    if (new String(string, 0, length, charset).equals("server-sig-algs")) {
                                        str = new String(string2, 0, string2.length, charset);
                                        if (getLogger().isEnabled(1)) {
                                            getLogger().log(1, "server-sig-algs=<" + str + ">");
                                        }
                                        if (this.a0) {
                                            if (str.isEmpty()) {
                                                strConcat = str.concat(",rsa-sha2-256,rsa-sha2-512");
                                            } else {
                                                strConcat = "rsa-sha2-256,rsa-sha2-512";
                                            }
                                            str = strConcat;
                                            if (getLogger().isEnabled(1)) {
                                                getLogger().log(1, "OpenSSH 7.4 detected: adding rsa-sha2-256 & rsa-sha2-512 to server-sig-algs");
                                            }
                                        }
                                        this.Z = Util.o(str);
                                    }
                                }
                            }
                        } else if (i3 == 52) {
                            this.H = true;
                            if (this.v == null) {
                                m(this.n[6]);
                                n(this.n[7]);
                            }
                        }
                    }
                    c3 = 1;
                } else {
                    if (i3 != c2) {
                        if (i3 == 3) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                            i4 = buffer2.getInt();
                            if (getLogger().isEnabled(1)) {
                                getLogger().log(1, "Received SSH_MSG_UNIMPLEMENTED for " + i4);
                            }
                        } else if (i3 == 4) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                        } else if (i3 == 93) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                            channelL = l(buffer2.getInt());
                            if (channelL != null) {
                                channelL.a(buffer2.getUInt());
                            }
                        } else if (i3 == 7) {
                            buffer2.d = 0;
                            buffer2.getInt();
                            buffer2.f();
                            if (this.B) {
                                z = true;
                                if (getLogger().isEnabled(1)) {
                                    getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO while enable_server_sig_algs != yes");
                                }
                            } else {
                                z = true;
                                if (this.H) {
                                    if (getLogger().isEnabled(1)) {
                                        getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO received after SSH_MSG_USERAUTH_SUCCESS");
                                    }
                                } else if (!this.q0) {
                                    if (getLogger().isEnabled(1)) {
                                        getLogger().log(1, "SSH_MSG_EXT_INFO received");
                                    }
                                    z = false;
                                } else if (getLogger().isEnabled(1)) {
                                    getLogger().log(1, "Ignoring SSH_MSG_EXT_INFO received before SSH_MSG_NEWKEYS");
                                }
                            }
                            uInt = buffer2.getUInt();
                            while (j < uInt) {
                                string = buffer2.getString();
                                string2 = buffer2.getString();
                                if (!z) {
                                    length = string.length;
                                    charset = StandardCharsets.UTF_8;
                                    if (new String(string, 0, length, charset).equals("server-sig-algs")) {
                                        str = new String(string2, 0, string2.length, charset);
                                        if (getLogger().isEnabled(1)) {
                                            getLogger().log(1, "server-sig-algs=<" + str + ">");
                                        }
                                        if (this.a0) {
                                            if (str.isEmpty()) {
                                                strConcat = str.concat(",rsa-sha2-256,rsa-sha2-512");
                                            } else {
                                                strConcat = "rsa-sha2-256,rsa-sha2-512";
                                            }
                                            str = strConcat;
                                            if (getLogger().isEnabled(1)) {
                                                getLogger().log(1, "OpenSSH 7.4 detected: adding rsa-sha2-256 & rsa-sha2-512 to server-sig-algs");
                                            }
                                        }
                                        this.Z = Util.o(str);
                                    }
                                }
                            }
                        } else if (i3 == 52) {
                            this.H = true;
                            if (this.v == null) {
                                m(this.n[6]);
                                n(this.n[7]);
                            }
                        }
                    }
                    c3 = 1;
                }
            }
            buffer2.d = 0;
            return;
        }
        x(buffer2, this.o, this.q, 0, 262144);
        throw null;
    }

    public final KeyExchange q(Buffer buffer) throws Exception {
        char c;
        boolean z;
        boolean z2;
        int i = buffer.getInt();
        char c2 = 5;
        if (i != buffer.getLength()) {
            buffer.getByte();
            this.d = new byte[buffer.c - 5];
        } else {
            this.d = new byte[(i - 1) - buffer.getByte()];
        }
        byte[] bArr = buffer.b;
        int i2 = buffer.d;
        byte[] bArr2 = this.d;
        int i3 = 0;
        System.arraycopy(bArr, i2, bArr2, 0, bArr2.length);
        if (this.D) {
            if (this.F || this.G) {
                Buffer buffer2 = new Buffer(this.d);
                buffer2.d = 17;
                byte[] string = buffer2.getString();
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    if (i4 >= string.length) {
                        z = false;
                        break;
                    }
                    while (i4 < string.length && string[i4] != 44) {
                        i4++;
                    }
                    if (i5 != i4 && "kex-strict-s-v00@openssh.com".equals(Util.d(string, i5, i4 - i5))) {
                        z = true;
                        break;
                    }
                    i5 = i4 + 1;
                    i4 = i5;
                }
                this.E = z;
                if (this.E) {
                    if (getLogger().isEnabled(1)) {
                        getLogger().log(1, "Doing strict KEX");
                    }
                    if (this.l != 1) {
                        throw new JSchStrictKexException("KEXINIT not first packet from server");
                    }
                } else if (this.G) {
                    throw new JSchStrictKexException("Strict KEX not supported by server");
                }
            }
            if (this.B) {
                Buffer buffer3 = new Buffer(this.d);
                buffer3.d = 17;
                byte[] string2 = buffer3.getString();
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    if (i6 >= string2.length) {
                        z2 = false;
                        break;
                    }
                    while (i6 < string2.length && string2[i6] != 44) {
                        i6++;
                    }
                    if (i7 != i6 && "ext-info-s".equals(Util.d(string2, i7, i6 - i7))) {
                        z2 = true;
                        break;
                    }
                    i7 = i6 + 1;
                    i6 = i7;
                }
                this.A = z2;
                if (this.A && getLogger().isEnabled(1)) {
                    getLogger().log(1, "ext-info messaging supported by server");
                }
            }
        }
        if (!this.q0) {
            v();
        }
        byte[] bArr3 = this.d;
        byte[] bArr4 = this.c;
        String[] strArr = KeyExchange.i;
        int i8 = 10;
        String[] strArr2 = new String[10];
        Buffer buffer4 = new Buffer(bArr3);
        buffer4.d = 17;
        Buffer buffer5 = new Buffer(bArr4);
        buffer5.d = 17;
        if (getLogger().isEnabled(1)) {
            int i9 = 0;
            while (i9 < i8) {
                char c3 = c2;
                Logger logger = getLogger();
                StringBuilder sb = new StringBuilder("server proposal: ");
                sb.append(strArr[i9]);
                sb.append(": ");
                byte[] string3 = buffer4.getString();
                sb.append(new String(string3, 0, string3.length, StandardCharsets.UTF_8));
                logger.log(1, sb.toString());
                i9++;
                c2 = c3;
                i8 = 10;
            }
            c = c2;
            int i10 = 0;
            for (int i11 = i8; i10 < i11; i11 = 10) {
                Logger logger2 = getLogger();
                StringBuilder sb2 = new StringBuilder("client proposal: ");
                sb2.append(strArr[i10]);
                sb2.append(": ");
                byte[] string4 = buffer5.getString();
                sb2.append(new String(string4, 0, string4.length, StandardCharsets.UTF_8));
                logger2.log(1, sb2.toString());
                i10++;
            }
            buffer4.d = 17;
            buffer5.d = 17;
        } else {
            c = 5;
        }
        int i12 = 0;
        while (i12 < 10) {
            byte[] string5 = buffer4.getString();
            byte[] string6 = buffer5.getString();
            int i13 = i3;
            int i14 = i13;
            while (i13 < string6.length) {
                while (i13 < string6.length && string6[i13] != 44) {
                    i13++;
                }
                if (i14 == i13) {
                    int i15 = i3;
                    int length = string6.length;
                    Charset charset = StandardCharsets.UTF_8;
                    throw new JSchAlgoNegoFailException(i12, new String(string6, i15, length, charset), new String(string5, i15, string5.length, charset));
                }
                String strD = Util.d(string6, i14, i13 - i14);
                int i16 = i3;
                int i17 = i16;
                while (i16 < string5.length) {
                    while (i16 < string5.length && string5[i16] != 44) {
                        i16++;
                    }
                    if (i17 == i16) {
                        int length2 = string6.length;
                        Charset charset2 = StandardCharsets.UTF_8;
                        throw new JSchAlgoNegoFailException(i12, new String(string6, 0, length2, charset2), new String(string5, 0, string5.length, charset2));
                    }
                    if (strD.equals(Util.d(string5, i17, i16 - i17))) {
                        strArr2[i12] = strD;
                        break;
                    }
                    i17 = i16 + 1;
                    i16 = i17;
                    i3 = 0;
                }
                i14 = i13 + 1;
                i3 = i3;
                i13 = i14;
            }
            if (i13 == 0) {
                strArr2[i12] = "";
            } else if (strArr2[i12] == null) {
                int length3 = string6.length;
                Charset charset3 = StandardCharsets.UTF_8;
                throw new JSchAlgoNegoFailException(i12, new String(string6, 0, length3, charset3), new String(string5, 0, string5.length, charset3));
            }
            i12++;
            i3 = 0;
        }
        try {
            boolean zIsAEAD = ((Cipher) Class.forName(getConfig(strArr2[3])).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null)).isAEAD();
            if (zIsAEAD) {
                strArr2[c] = null;
            }
            boolean zIsAEAD2 = ((Cipher) Class.forName(getConfig(strArr2[2])).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null)).isAEAD();
            if (zIsAEAD2) {
                strArr2[4] = null;
            }
            if (getLogger().isEnabled(1)) {
                getLogger().log(1, "kex: algorithm: " + strArr2[0]);
                getLogger().log(1, "kex: host key algorithm: " + strArr2[1]);
                Logger logger3 = getLogger();
                StringBuilder sb3 = new StringBuilder("kex: server->client cipher: ");
                sb3.append(strArr2[3]);
                sb3.append(" MAC: ");
                sb3.append(zIsAEAD ? "<implicit>" : strArr2[c]);
                sb3.append(" compression: ");
                sb3.append(strArr2[7]);
                logger3.log(1, sb3.toString());
                Logger logger4 = getLogger();
                StringBuilder sb4 = new StringBuilder("kex: client->server cipher: ");
                sb4.append(strArr2[2]);
                sb4.append(" MAC: ");
                sb4.append(zIsAEAD2 ? "<implicit>" : strArr2[4]);
                sb4.append(" compression: ");
                sb4.append(strArr2[6]);
                logger4.log(1, sb4.toString());
            }
            this.n = strArr2;
            if (strArr2[0].equals("ext-info-c") || this.n[0].equals("ext-info-s") || this.n[0].equals("kex-strict-c-v00@openssh.com") || this.n[0].equals("kex-strict-s-v00@openssh.com")) {
                throw new JSchException("Invalid Kex negotiated: " + this.n[0]);
            }
            if (!this.H && (this.n[2].equals("none") || this.n[3].equals("none"))) {
                e6.h("NONE Cipher should not be chosen before authentification is successed.");
                return null;
            }
            try {
                KeyExchange keyExchange = (KeyExchange) Class.forName(getConfig(this.n[0])).asSubclass(KeyExchange.class).getDeclaredConstructor(null).newInstance(null);
                byte[] bArr5 = this.a;
                byte[] bArr6 = this.b;
                byte[] bArr7 = this.d;
                byte[] bArr8 = this.c;
                keyExchange.a = this;
                keyExchange.init(this, bArr5, bArr6, bArr7, bArr8);
                return keyExchange;
            } catch (Exception | LinkageError e) {
                throw new JSchException(e.toString(), e);
            }
        } catch (Exception | LinkageError e2) {
            throw new JSchException(e2.toString(), e2);
        }
    }

    public final void r(KeyExchange keyExchange) {
        try {
            y(keyExchange);
            Util.e(keyExchange.c);
            keyExchange.c = null;
            this.q0 = false;
            if (this.E) {
                this.l = 0;
                if (getLogger().isEnabled(1)) {
                    getLogger().log(1, "Reset incoming sequence number after receiving SSH_MSG_NEWKEYS for strict KEX");
                }
            }
        } catch (Throwable th) {
            Util.e(keyExchange.c);
            keyExchange.c = null;
            throw th;
        }
    }

    public final void rekey() throws Exception {
        v();
    }

    public final void s() throws JSchException {
        ConfigRepository configRepository;
        if (getConfig("ClearAllForwardings").equals("yes") || (configRepository = this.k0.e) == null) {
            return;
        }
        ConfigRepository.Config config = configRepository.getConfig(this.g0);
        String[] values = config.getValues("LocalForward");
        if (values != null) {
            for (String str : values) {
                setPortForwardingL(str);
            }
        }
        String[] values2 = config.getValues("RemoteForward");
        if (values2 != null) {
            for (String str2 : values2) {
                setPortForwardingR(str2);
            }
        }
    }

    public final void sendIgnore() throws Exception {
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 2);
        z(packet);
    }

    public final void sendKeepAliveMsg() throws Exception {
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 80);
        buffer.putString(B0);
        buffer.putByte((byte) 1);
        z(packet);
    }

    public final void setClientVersion(String str) {
        byte[] bArr = Util.a;
        this.b = Util.p(str, StandardCharsets.UTF_8);
    }

    public final void setConfig(Hashtable<String, String> hashtable) {
        synchronized (this.J) {
            try {
                if (this.R == null) {
                    this.R = new Hashtable();
                }
                Enumeration<String> enumerationKeys = hashtable.keys();
                while (enumerationKeys.hasMoreElements()) {
                    String strNextElement = enumerationKeys.nextElement();
                    this.R.put(strNextElement.equals("PubkeyAcceptedKeyTypes") ? "PubkeyAcceptedAlgorithms" : strNextElement, hashtable.get(strNextElement));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setDaemonThread(boolean z) {
        this.b0 = z;
    }

    public final void setHost(String str) {
        this.f0 = str;
    }

    public final void setHostKeyAlias(String str) {
        this.U = str;
    }

    public final void setHostKeyRepository(HostKeyRepository hostKeyRepository) {
        this.Y = hostKeyRepository;
    }

    public final void setIdentityRepository(IdentityRepository identityRepository) {
        this.X = identityRepository;
    }

    public final void setInputStream(InputStream inputStream) {
        this.M = inputStream;
    }

    public final void setLogger(Logger logger) {
        this.l0 = logger;
    }

    public final void setOutputStream(OutputStream outputStream) {
        this.N = outputStream;
    }

    @Deprecated
    public final void setPassword(String str) {
        if (str != null) {
            byte[] bArr = Util.a;
            this.j0 = Util.p(str, StandardCharsets.UTF_8);
        }
    }

    public final void setPort(int i) {
        this.h0 = i;
    }

    public final int setPortForwardingL(String str, int i, String str2, int i2, ServerSocketFactory serverSocketFactory, int i3) throws JSchException {
        String strC = PortWatcher.c(str);
        if (PortWatcher.b(this, strC, i) != null) {
            throw new JSchException(u48.m("PortForwardingL: local port ", strC, ":", i, " is already registered."));
        }
        PortWatcher portWatcher = new PortWatcher(this, strC, i, str2, i2, serverSocketFactory);
        PortWatcher.j.addElement(portWatcher);
        portWatcher.h = i3;
        Thread threadNewThread = this.m0.newThread(new m(portWatcher));
        threadNewThread.setName("PortWatcher Thread for " + str2);
        boolean z = this.b0;
        if (z) {
            threadNewThread.setDaemon(z);
        }
        threadNewThread.start();
        return portWatcher.b;
    }

    public final void setPortForwardingR(String str, int i, String str2, Object[] objArr) throws JSchException {
        a(i, str);
        String strP = ChannelForwardedTCPIP.p(str);
        Vector vector = ChannelForwardedTCPIP.y;
        synchronized (vector) {
            try {
                if (ChannelForwardedTCPIP.o(this, strP, i) != null) {
                    throw new JSchException("PortForwardingR: remote port " + i + " is already registered.");
                }
                ChannelForwardedTCPIP.ConfigDaemon configDaemon = new ChannelForwardedTCPIP.ConfigDaemon();
                configDaemon.a = this;
                configDaemon.b = i;
                configDaemon.c = i;
                configDaemon.e = str2;
                configDaemon.f = objArr;
                configDaemon.d = strP;
                vector.addElement(configDaemon);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setProxy(Proxy proxy) {
        this.S = proxy;
    }

    public final void setServerAliveCountMax(int i) {
        this.W = i;
    }

    public final void setServerAliveInterval(int i) throws JSchException {
        setTimeout(i);
        this.V = i;
    }

    public final void setSocketFactory(SocketFactory socketFactory) {
        this.Q = socketFactory;
    }

    public final int setSocketForwardingL(String str, int i, String str2, ServerSocketFactory serverSocketFactory, int i2) throws JSchException {
        PortWatcher portWatcherAddSocket = PortWatcher.addSocket(this, str, i, str2, serverSocketFactory);
        portWatcherAddSocket.h = i2;
        Thread threadNewThread = this.m0.newThread(new m(portWatcherAddSocket));
        threadNewThread.setName("PortWatcher Thread for " + this.f0);
        boolean z = this.b0;
        if (z) {
            threadNewThread.setDaemon(z);
        }
        threadNewThread.start();
        return portWatcherAddSocket.b;
    }

    public final void setThreadFactory(ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory);
        this.m0 = threadFactory;
    }

    public final void setTimeout(int i) throws JSchException {
        Socket socket = this.x;
        if (socket == null) {
            if (i >= 0) {
                this.y = i;
                return;
            } else {
                e6.h("invalid timeout value");
                return;
            }
        }
        try {
            socket.setSoTimeout(i);
            this.y = i;
        } catch (Exception e) {
            a6.f(e);
        }
    }

    public final void setUserInfo(UserInfo userInfo) {
        this.T = userInfo;
    }

    public final void setX11Cookie(String str) {
        String str2 = ChannelX11.y;
        byte[] bArr = Util.a;
        ChannelX11.B = Util.p(str, StandardCharsets.UTF_8);
        ChannelX11.A = new byte[16];
        for (int i = 0; i < 16; i++) {
            byte[] bArr2 = ChannelX11.A;
            int i2 = i * 2;
            byte b = ChannelX11.B[i2];
            int i3 = 0;
            while (true) {
                byte[] bArr3 = ChannelX11.E;
                if (i3 >= bArr3.length) {
                    i3 = 0;
                    break;
                } else if (bArr3[i3] == b) {
                    break;
                } else {
                    i3++;
                }
            }
            int i4 = (i3 << 4) & 240;
            byte b2 = ChannelX11.B[i2 + 1];
            int i5 = 0;
            while (true) {
                byte[] bArr4 = ChannelX11.E;
                if (i5 >= bArr4.length) {
                    i5 = 0;
                    break;
                } else if (bArr4[i5] == b2) {
                    break;
                } else {
                    i5++;
                }
            }
            bArr2[i] = (byte) (i4 | (i5 & 15));
        }
    }

    public final void setX11Host(String str) {
        ChannelX11.y = str;
    }

    public final void setX11Port(int i) {
        ChannelX11.z = i;
    }

    public final void t() {
        byte b;
        int i = 5;
        this.x0 = new j70(this, i);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        KeyExchange keyExchangeQ = null;
        while (true) {
            int i2 = 0;
            while (true) {
                try {
                    if (this.z && this.x0 != null) {
                        try {
                            p(buffer);
                            int i3 = buffer.b[i] & 255;
                            if (keyExchangeQ == null || keyExchangeQ.getState() != i3) {
                                if (i3 == 20) {
                                    keyExchangeQ = q(buffer);
                                } else if (i3 != 21) {
                                    switch (i3) {
                                        case 80:
                                            buffer.getInt();
                                            buffer.f();
                                            buffer.getString();
                                            if (buffer.getByte() != 0) {
                                                packet.a();
                                                buffer.putByte((byte) 82);
                                                z(packet);
                                            }
                                            break;
                                        case 81:
                                        case 82:
                                            GlobalRequestReply globalRequestReply = this.y0;
                                            Thread thread = globalRequestReply.a;
                                            if (thread != null) {
                                                globalRequestReply.b = i3 == 81 ? 1 : 0;
                                                if (i3 == 81 && globalRequestReply.c == 0) {
                                                    buffer.getInt();
                                                    buffer.f();
                                                    this.y0.c = buffer.getInt();
                                                }
                                                thread.interrupt();
                                            }
                                            break;
                                        default:
                                            switch (i3) {
                                                case 90:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    byte[] string = buffer.getString();
                                                    String str = new String(string, 0, string.length, StandardCharsets.UTF_8);
                                                    if ("forwarded-tcpip".equals(str) || (("x11".equals(str) && this.K) || ("auth-agent@openssh.com".equals(str) && this.L))) {
                                                        Channel channelOpenChannel = openChannel(str);
                                                        if (channelOpenChannel == null) {
                                                            if (getLogger().isEnabled(0)) {
                                                                getLogger().log(0, "Failed to add channel of type " + str + " - session may be disconnecting");
                                                            }
                                                            packet.a();
                                                            buffer.putByte((byte) 92);
                                                            buffer.putInt(buffer.getInt());
                                                            buffer.putInt(4);
                                                            byte[] bArr = Util.c;
                                                            buffer.putString(bArr);
                                                            buffer.putString(bArr, 0, bArr.length);
                                                            z(packet);
                                                        } else {
                                                            channelOpenChannel.f(buffer);
                                                            Thread threadNewThread = this.m0.newThread(new is(channelOpenChannel, 9));
                                                            threadNewThread.setName("Channel " + str + TokenAuthenticationScheme.SCHEME_DELIMITER + this.f0);
                                                            boolean z = this.b0;
                                                            if (z) {
                                                                threadNewThread.setDaemon(z);
                                                            }
                                                            threadNewThread.start();
                                                        }
                                                    } else {
                                                        if (getLogger().isEnabled(0)) {
                                                            getLogger().log(0, "Failed to add channel of type " + str + " - type either unsupported or prohibited");
                                                        }
                                                        packet.a();
                                                        buffer.putByte((byte) 92);
                                                        buffer.putInt(buffer.getInt());
                                                        buffer.putInt(1);
                                                        byte[] bArr2 = Util.c;
                                                        buffer.putString(bArr2);
                                                        buffer.putString(bArr2, 0, bArr2.length);
                                                        z(packet);
                                                    }
                                                    break;
                                                case 91:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL = l(buffer.getInt());
                                                    int i4 = buffer.getInt();
                                                    long uInt = buffer.getUInt();
                                                    int i5 = buffer.getInt();
                                                    if (channelL != null) {
                                                        synchronized (channelL) {
                                                            channelL.g = uInt;
                                                        }
                                                        channelL.h = i5;
                                                        channelL.o = true;
                                                        channelL.k(i4);
                                                    }
                                                    break;
                                                case 92:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL2 = l(buffer.getInt());
                                                    if (channelL2 != null) {
                                                        channelL2.p = buffer.getInt();
                                                        channelL2.m = true;
                                                        channelL2.l = true;
                                                        channelL2.k(0);
                                                    }
                                                    break;
                                                case 93:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL3 = l(buffer.getInt());
                                                    if (channelL3 != null) {
                                                        channelL3.a(buffer.getUInt());
                                                    }
                                                    break;
                                                case 94:
                                                    buffer.getInt();
                                                    buffer.getByte();
                                                    buffer.getByte();
                                                    Channel channelL4 = l(buffer.getInt());
                                                    int i6 = buffer.getInt();
                                                    iArr[0] = buffer.getByte(i6);
                                                    iArr2[0] = i6;
                                                    byte[] bArr3 = buffer.b;
                                                    if (channelL4 != null && i6 != 0) {
                                                        try {
                                                            try {
                                                                channelL4.l(bArr3, iArr[0], i6);
                                                                channelL4.e -= iArr2[0];
                                                                if (channelL4.e < channelL4.d / 2) {
                                                                    packet.a();
                                                                    buffer.putByte((byte) 93);
                                                                    buffer.putInt(channelL4.b);
                                                                    buffer.putInt(channelL4.d - channelL4.e);
                                                                    synchronized (channelL4) {
                                                                        try {
                                                                            if (!channelL4.m) {
                                                                                z(packet);
                                                                            }
                                                                        } catch (Throwable th) {
                                                                            throw th;
                                                                        }
                                                                    }
                                                                    channelL4.e = channelL4.d;
                                                                }
                                                            } catch (Exception unused) {
                                                            }
                                                        } catch (Exception unused2) {
                                                            channelL4.disconnect();
                                                        }
                                                    }
                                                    break;
                                                case 95:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL5 = l(buffer.getInt());
                                                    buffer.getInt();
                                                    int i7 = buffer.getInt();
                                                    iArr[0] = buffer.getByte(i7);
                                                    iArr2[0] = i7;
                                                    byte[] bArr4 = buffer.b;
                                                    if (channelL5 != null && i7 != 0) {
                                                        int i8 = iArr[0];
                                                        try {
                                                            IO io = channelL5.i;
                                                            io.c.write(bArr4, i8, i7);
                                                            io.c.flush();
                                                            break;
                                                        } catch (NullPointerException unused3) {
                                                        }
                                                        channelL5.e -= iArr2[0];
                                                        if (channelL5.e < channelL5.d / 2) {
                                                            packet.a();
                                                            buffer.putByte((byte) 93);
                                                            buffer.putInt(channelL5.b);
                                                            buffer.putInt(channelL5.d - channelL5.e);
                                                            synchronized (channelL5) {
                                                                try {
                                                                    if (!channelL5.m) {
                                                                        z(packet);
                                                                    }
                                                                } catch (Throwable th2) {
                                                                    throw th2;
                                                                }
                                                            }
                                                            channelL5.e = channelL5.d;
                                                        }
                                                    }
                                                    break;
                                                case AESGCM.IV_BIT_LENGTH /* 96 */:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL6 = l(buffer.getInt());
                                                    if (channelL6 != null) {
                                                        channelL6.d();
                                                    }
                                                    break;
                                                case 97:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL7 = l(buffer.getInt());
                                                    if (channelL7 != null) {
                                                        channelL7.disconnect();
                                                    }
                                                    break;
                                                case 98:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    int i9 = buffer.getInt();
                                                    byte[] string2 = buffer.getString();
                                                    boolean z2 = buffer.getByte() != 0;
                                                    Channel channelL8 = l(i9);
                                                    if (channelL8 != null) {
                                                        if (new String(string2, 0, string2.length, StandardCharsets.UTF_8).equals("exit-status")) {
                                                            channelL8.p = buffer.getInt();
                                                            b = 99;
                                                        } else {
                                                            b = 100;
                                                        }
                                                        if (z2) {
                                                            packet.a();
                                                            buffer.putByte(b);
                                                            buffer.putInt(channelL8.b);
                                                            z(packet);
                                                        }
                                                    }
                                                    break;
                                                case SbaTarEntryInfo.TYPE_OTHER /* 99 */:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL9 = l(buffer.getInt());
                                                    if (channelL9 != null) {
                                                        channelL9.q = 1;
                                                    }
                                                    break;
                                                case 100:
                                                    buffer.getInt();
                                                    buffer.f();
                                                    Channel channelL10 = l(buffer.getInt());
                                                    if (channelL10 != null) {
                                                        channelL10.q = 0;
                                                    }
                                                    break;
                                                default:
                                                    throw new IOException("Unknown SSH message type " + i3);
                                            }
                                            break;
                                    }
                                } else {
                                    w();
                                    r(keyExchangeQ);
                                    keyExchangeQ = null;
                                }
                                i2 = 0;
                                i = 5;
                            } else {
                                this.c0 = System.currentTimeMillis();
                                boolean next = keyExchangeQ.next(buffer);
                                if (!next) {
                                    throw new JSchException("verify: " + next);
                                }
                            }
                        } catch (InterruptedIOException e) {
                            if (!this.q0 && i2 < this.W) {
                                sendKeepAliveMsg();
                            } else if (!this.q0 || i2 >= this.W) {
                                throw e;
                            }
                            i2++;
                        }
                    }
                } catch (Exception e2) {
                    this.q0 = false;
                    if (getLogger().isEnabled(1)) {
                        getLogger().log(1, "Caught an exception, leaving main loop due to " + e2.getMessage(), e2);
                    }
                }
            }
        }
        try {
            disconnect();
        } catch (NullPointerException | Exception unused4) {
        }
        this.z = false;
    }

    public final void u() {
        Packet packet = this.P;
        packet.a();
        this.O.putByte((byte) 7);
        this.O.putInt(1);
        Buffer buffer = this.O;
        Charset charset = StandardCharsets.UTF_8;
        buffer.putString(Util.p("ext-info-in-auth@openssh.com", charset));
        this.O.putString(Util.p("0", charset));
        z(packet);
        if (getLogger().isEnabled(1)) {
            getLogger().log(1, "SSH_MSG_EXT_INFO sent");
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x0320  */
    /* JADX WARN: Code duplicated, block: B:132:0x033b  */
    /* JADX WARN: Code duplicated, block: B:134:0x0345  */
    /* JADX WARN: Code duplicated, block: B:135:0x0353  */
    /* JADX WARN: Code duplicated, block: B:166:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:179:0x042a  */
    /* JADX WARN: Code duplicated, block: B:182:0x0445  */
    /* JADX WARN: Code duplicated, block: B:184:0x044f  */
    /* JADX WARN: Code duplicated, block: B:188:0x0461  */
    /* JADX WARN: Code duplicated, block: B:190:0x0469  */
    /* JADX WARN: Code duplicated, block: B:193:0x047d  */
    /* JADX WARN: Code duplicated, block: B:195:0x0481  */
    /* JADX WARN: Code duplicated, block: B:196:0x0484  */
    /* JADX WARN: Code duplicated, block: B:198:0x048b  */
    /* JADX WARN: Code duplicated, block: B:199:0x048f  */
    /* JADX WARN: Code duplicated, block: B:202:0x0498  */
    /* JADX WARN: Code duplicated, block: B:203:0x049c  */
    /* JADX WARN: Code duplicated, block: B:206:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:207:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:210:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:211:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:214:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:215:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:218:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:219:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:222:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:223:0x04d3  */
    /* JADX WARN: Code duplicated, block: B:226:0x04dc  */
    /* JADX WARN: Code duplicated, block: B:227:0x04de  */
    /* JADX WARN: Code duplicated, block: B:230:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:231:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:234:0x04f2  */
    /* JADX WARN: Code duplicated, block: B:237:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:238:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:239:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:240:0x0500  */
    /* JADX WARN: Code duplicated, block: B:241:0x0503  */
    /* JADX WARN: Code duplicated, block: B:242:0x0506  */
    /* JADX WARN: Code duplicated, block: B:243:0x0509  */
    /* JADX WARN: Code duplicated, block: B:244:0x050c  */
    /* JADX WARN: Code duplicated, block: B:245:0x050f  */
    /* JADX WARN: Code duplicated, block: B:247:0x0513  */
    /* JADX WARN: Code duplicated, block: B:251:0x0520  */
    /* JADX WARN: Code duplicated, block: B:253:0x0535  */
    /* JADX WARN: Code duplicated, block: B:255:0x0538 A[LOOP:8: B:254:0x0536->B:255:0x0538, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:258:0x056a  */
    /* JADX WARN: Code duplicated, block: B:260:0x0574  */
    /* JADX WARN: Code duplicated, block: B:261:0x0582  */
    /* JADX WARN: Code duplicated, block: B:263:0x0588  */
    /* JADX WARN: Code duplicated, block: B:267:0x059c  */
    /* JADX WARN: Code duplicated, block: B:269:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:272:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:279:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:282:0x0603  */
    /* JADX WARN: Code duplicated, block: B:287:0x0616  */
    /* JADX WARN: Code duplicated, block: B:300:0x0647  */
    /* JADX WARN: Code duplicated, block: B:303:0x064d  */
    /* JADX WARN: Code duplicated, block: B:306:0x0660 A[LOOP:10: B:302:0x064b->B:306:0x0660, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:309:0x0669  */
    /* JADX WARN: Code duplicated, block: B:312:0x067c  */
    /* JADX WARN: Code duplicated, block: B:319:0x074a  */
    /* JADX WARN: Code duplicated, block: B:329:0x06ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:355:0x0516 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:358:0x0659 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:367:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:368:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:369:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:370:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:371:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:372:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x01ac  */
    /* JADX WARN: Instruction removed from duplicated block: B:129:0x0320, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:179:0x042a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:255:0x0538, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:269:0x05a6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:312:0x067c, please report this as an issue */
    public final void v() throws JSchException {
        String[] strArr;
        String[] strArr2;
        byte b;
        String[] strArr3;
        String config;
        String config2;
        String[] strArr4;
        Buffer buffer;
        String string;
        String str;
        HostKey[] hostKey;
        ArrayList arrayList;
        ArrayList arrayList2;
        Iterator it;
        String str2;
        String strA;
        int i;
        ArrayList arrayList3;
        int i2;
        int size;
        String[] strArr5;
        int i3;
        String str3;
        String str4;
        if (this.q0) {
            return;
        }
        String config3 = getConfig("cipher.c2s");
        String config4 = getConfig("cipher.s2c");
        String config5 = getConfig("CheckCiphers");
        int i4 = -1;
        Class<?>[] clsArr = null;
        if (config5 == null || config5.length() == 0) {
            strArr = null;
        } else {
            if (getLogger().isEnabled(1)) {
                getLogger().log(1, "CheckCiphers: ".concat(config5));
            }
            String config6 = getConfig("cipher.c2s");
            String config7 = getConfig("cipher.s2c");
            ArrayList arrayList4 = new ArrayList();
            for (String str5 : Util.o(config5)) {
                if ((config7.indexOf(str5) != -1 || config6.indexOf(str5) != -1) && !c(getConfig(str5))) {
                    arrayList4.add(str5);
                }
            }
            if (arrayList4.size() == 0) {
                strArr = null;
            } else {
                strArr = (String[]) arrayList4.toArray(new String[0]);
                if (getLogger().isEnabled(1)) {
                    for (String str6 : strArr) {
                        getLogger().log(1, str6 + " is not available.");
                    }
                }
            }
        }
        if (strArr != null && strArr.length > 0) {
            if (getLogger().isEnabled(0)) {
                getLogger().log(0, "cipher.c2s proposal before removing unavailable algos is: " + config3);
                getLogger().log(0, "cipher.s2c proposal before removing unavailable algos is: " + config4);
            }
            config3 = Util.h(config3, strArr);
            config4 = Util.h(config4, strArr);
            if (config3 == null || config4 == null) {
                e6.h("There are not any available ciphers.");
                return;
            } else if (getLogger().isEnabled(0)) {
                getLogger().log(0, "cipher.c2s proposal after removing unavailable algos is: ".concat(config3));
                getLogger().log(0, "cipher.s2c proposal after removing unavailable algos is: ".concat(config4));
            }
        }
        String str7 = config3;
        String str8 = config4;
        String config8 = getConfig("mac.c2s");
        String config9 = getConfig("mac.s2c");
        String config10 = getConfig("CheckMacs");
        if (config10 == null || config10.length() == 0) {
            strArr2 = null;
        } else {
            if (getLogger().isEnabled(1)) {
                getLogger().log(1, "CheckMacs: ".concat(config10));
            }
            String config11 = getConfig("mac.c2s");
            String config12 = getConfig("mac.s2c");
            ArrayList arrayList5 = new ArrayList();
            String[] strArrO = Util.o(config10);
            int i5 = 0;
            while (i5 < strArrO.length) {
                String str9 = strArrO[i5];
                if (config12.indexOf(str9) != i4 || config11.indexOf(str9) != i4) {
                    try {
                        MAC mac = (MAC) Class.forName(getConfig(str9)).asSubclass(MAC.class).getDeclaredConstructor(null).newInstance(null);
                        mac.init(new byte[mac.getBlockSize()]);
                    } catch (Exception | LinkageError unused) {
                        arrayList5.add(str9);
                    }
                }
                i5++;
                i4 = -1;
            }
            if (arrayList5.size() == 0) {
                strArr2 = null;
            } else {
                strArr2 = (String[]) arrayList5.toArray(new String[0]);
                if (getLogger().isEnabled(1)) {
                    for (String str10 : strArr2) {
                        getLogger().log(1, str10 + " is not available.");
                    }
                }
            }
        }
        if (strArr2 != null && strArr2.length > 0) {
            if (getLogger().isEnabled(0)) {
                getLogger().log(0, "mac.c2s proposal before removing unavailable algos is: " + config8);
                getLogger().log(0, "mac.s2c proposal before removing unavailable algos is: " + config9);
            }
            String strH = Util.h(config8, strArr2);
            String strH2 = Util.h(config9, strArr2);
            if (strH == null || strH2 == null) {
                e6.h("There are not any available macs.");
                return;
            } else if (getLogger().isEnabled(0)) {
                getLogger().log(0, "mac.c2s proposal after removing unavailable algos is: ".concat(strH));
                getLogger().log(0, "mac.s2c proposal after removing unavailable algos is: ".concat(strH2));
            }
        }
        String config13 = getConfig("kex");
        String config14 = getConfig("CheckKexes");
        if (config14 != null && config14.length() != 0) {
            if (getLogger().isEnabled(1)) {
                getLogger().log(1, "CheckKexes: ".concat(config14));
            }
            String config15 = getConfig("kex");
            ArrayList arrayList6 = new ArrayList();
            String[] strArrO2 = Util.o(config14);
            int i6 = 0;
            while (i6 < strArrO2.length) {
                String str11 = strArrO2[i6];
                if (config15.indexOf(str11) != -1) {
                    try {
                        KeyExchange keyExchange = (KeyExchange) Class.forName(getConfig(str11)).asSubclass(KeyExchange.class).getDeclaredConstructor(clsArr).newInstance(clsArr);
                        keyExchange.a = this;
                        str4 = str11;
                        try {
                            keyExchange.init(this, null, null, null, null);
                        } catch (Exception | LinkageError unused2) {
                            arrayList6.add(str4);
                        }
                    } catch (Exception | LinkageError unused3) {
                        str4 = str11;
                    }
                }
                i6++;
                clsArr = null;
            }
            b = -1;
            if (arrayList6.size() != 0) {
                strArr3 = (String[]) arrayList6.toArray(new String[0]);
                if (getLogger().isEnabled(1)) {
                    for (String str12 : strArr3) {
                        getLogger().log(1, str12 + " is not available.");
                    }
                }
            }
            if (strArr3 != null && strArr3.length > 0) {
                if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "kex proposal before removing unavailable algos is: " + config13);
                }
                config13 = Util.h(config13, strArr3);
                if (config13 != null) {
                    e6.h("There are not any available kexes.");
                    return;
                } else if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "kex proposal after removing unavailable algos is: ".concat(config13));
                }
            }
            if (this.B && !this.H) {
                config13 = eq3.j(config13, ",ext-info-c");
            }
            if ((!this.F || this.G) && this.D) {
            }
            config = getConfig("server_host_key");
            config2 = getConfig("CheckSignatures");
            if (config2 != null || config2.length() == 0) {
                strArr4 = null;
            } else {
                if (getLogger().isEnabled(1)) {
                    getLogger().log(1, "CheckSignatures: ".concat(config2));
                }
                ArrayList arrayList7 = new ArrayList();
                String[] strArrO3 = Util.o(config2);
                for (int i7 = 0; i7 < strArrO3.length; i7++) {
                    try {
                        ((Signature) Class.forName(JSch.getConfig(OpenSshCertificateKeyTypes.a(strArrO3[i7]))).asSubclass(Signature.class).getDeclaredConstructor(null).newInstance(null)).init();
                    } catch (Exception | LinkageError unused4) {
                        arrayList7.add(strArrO3[i7]);
                    }
                }
                if (arrayList7.size() == 0) {
                    strArr4 = null;
                } else {
                    strArr4 = (String[]) arrayList7.toArray(new String[0]);
                    if (getLogger().isEnabled(1)) {
                        for (String str13 : strArr4) {
                            getLogger().log(1, str13 + " is not available.");
                        }
                    }
                }
            }
            this.s0 = strArr4;
            if (strArr4 != null && strArr4.length > 0) {
                if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "server_host_key proposal before removing unavailable algos is: " + config);
                }
                config = Util.h(config, strArr4);
                if (config != null) {
                    e6.h("There are not any available sig algorithm.");
                    return;
                }
                if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "server_host_key proposal after removing unavailable algos is: ".concat(config));
                }
                if (strArr4.length != 0) {
                    if (JSch.i.isEnabled(0)) {
                        JSch.i.log(0, "server_host_key proposal before removing unavailable cert types is: ".concat(config));
                    }
                    arrayList3 = new ArrayList();
                    for (String str14 : strArr4) {
                        if (str14 == null) {
                            switch (str14) {
                                case "ssh-dss":
                                    str3 = "ssh-dss-cert-v01@openssh.com";
                                    break;
                                case "ssh-rsa":
                                    str3 = "ssh-rsa-cert-v01@openssh.com";
                                    break;
                                case "ssh-ed25519":
                                    str3 = "ssh-ed25519-cert-v01@openssh.com";
                                    break;
                                case "rsa-sha2-256":
                                    str3 = "rsa-sha2-256-cert-v01@openssh.com";
                                    break;
                                case "rsa-sha2-512":
                                    str3 = "rsa-sha2-512-cert-v01@openssh.com";
                                    break;
                                case "ssh-ed448":
                                    str3 = "ssh-ed448-cert-v01@openssh.com";
                                    break;
                                case "ecdsa-sha2-nistp256":
                                    str3 = "ecdsa-sha2-nistp256-cert-v01@openssh.com";
                                    break;
                                case "ecdsa-sha2-nistp384":
                                    str3 = "ecdsa-sha2-nistp384-cert-v01@openssh.com";
                                    break;
                                case "ecdsa-sha2-nistp521":
                                    str3 = "ecdsa-sha2-nistp521-cert-v01@openssh.com";
                                    break;
                                default:
                                    str3 = null;
                                    break;
                            }
                        } else {
                            str3 = null;
                        }
                        if (str3 != null) {
                            arrayList3.add(str3);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        size = arrayList3.size();
                        strArr5 = new String[size];
                        arrayList3.toArray(strArr5);
                        config = Util.h(config, strArr5);
                        if (JSch.i.isEnabled(0)) {
                            for (i3 = 0; i3 < size; i3++) {
                                JSch.i.log(0, "Removing " + strArr5[i3] + " (base algorithm unavailable)");
                            }
                            JSch.i.log(0, "server_host_key proposal after removing unavailable cert types is: " + config);
                        }
                    }
                }
                if (config != null) {
                    e6.h("There are not any available signature algorithms.");
                    return;
                } else if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "server_host_key proposal after removing unavailable cert algos is: ".concat(config));
                }
            }
            if (getConfig("prefer_known_host_key_types").equals("yes")) {
                if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "server_host_key proposal before known_host reordering is: " + config);
                }
                HostKeyRepository hostKeyRepository = getHostKeyRepository();
                string = this.f0;
                str = this.U;
                if (str != null) {
                    string = str;
                }
                if (str == null && this.h0 != 22) {
                    StringBuilder sbU = dj7.u("[", string, "]:");
                    sbU.append(this.h0);
                    string = sbU.toString();
                }
                hostKey = hostKeyRepository.getHostKey(string, null);
                if (hostKey.length > 0) {
                    arrayList = new ArrayList();
                    arrayList2 = new ArrayList(Arrays.asList(Util.o(config)));
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                        str2 = (String) it.next();
                        strA = OpenSshCertificateKeyTypes.a(str2);
                        if (strA != null || strA.equals(str2)) {
                            strA = str2;
                        }
                        if (strA.equals("rsa-sha2-256") || strA.equals("rsa-sha2-512") || strA.equals("ssh-rsa-sha224@ssh.com") || strA.equals("ssh-rsa-sha256@ssh.com") || strA.equals("ssh-rsa-sha384@ssh.com") || strA.equals("ssh-rsa-sha512@ssh.com")) {
                            strA = "ssh-rsa";
                        }
                        for (HostKey hostKey2 : hostKey) {
                            if (hostKey2.getType().equals(strA)) {
                                arrayList.add(str2);
                                it.remove();
                                break;
                            }
                        }
                    }
                    if (arrayList.size() > 0) {
                        arrayList.addAll(arrayList2);
                        config = String.join(",", arrayList);
                    }
                }
                if (getLogger().isEnabled(0)) {
                    getLogger().log(0, "server_host_key proposal after known_host reordering is: " + config);
                }
            }
            this.c0 = System.currentTimeMillis();
            this.q0 = true;
            buffer = new Buffer();
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.putByte((byte) 20);
            synchronized (A0) {
                A0.fill(buffer.b, buffer.c, 16);
                buffer.h(16);
            }
            Charset charset = StandardCharsets.UTF_8;
            buffer.putString(Util.p(config13, charset));
            buffer.putString(Util.p(config, charset));
            buffer.putString(Util.p(str7, charset));
            buffer.putString(Util.p(str8, charset));
            buffer.putString(Util.p(getConfig("mac.c2s"), charset));
            buffer.putString(Util.p(getConfig("mac.s2c"), charset));
            buffer.putString(Util.p(getConfig("compression.c2s"), charset));
            buffer.putString(Util.p(getConfig("compression.s2c"), charset));
            buffer.putString(Util.p(getConfig("lang.c2s"), charset));
            buffer.putString(Util.p(getConfig("lang.s2c"), charset));
            buffer.putByte((byte) 0);
            buffer.putInt(0);
            buffer.d = 5;
            int length = buffer.getLength();
            byte[] bArr = new byte[length];
            this.c = bArr;
            buffer.c(bArr, 0, length);
            z(packet);
            if (getLogger().isEnabled(1)) {
                getLogger().log(1, "SSH_MSG_KEXINIT sent");
            }
        }
        b = -1;
        strArr3 = null;
        if (strArr3 != null) {
            if (getLogger().isEnabled(0)) {
                getLogger().log(0, "kex proposal before removing unavailable algos is: " + config13);
            }
            config13 = Util.h(config13, strArr3);
            if (config13 != null) {
                e6.h("There are not any available kexes.");
                return;
            } else if (getLogger().isEnabled(0)) {
                getLogger().log(0, "kex proposal after removing unavailable algos is: ".concat(config13));
            }
        }
        if (this.B) {
            config13 = eq3.j(config13, ",ext-info-c");
        }
        config13 = !this.F ? eq3.j(config13, ",kex-strict-c-v00@openssh.com") : eq3.j(config13, ",kex-strict-c-v00@openssh.com");
        config = getConfig("server_host_key");
        config2 = getConfig("CheckSignatures");
        if (config2 != null) {
            strArr4 = null;
        } else {
            strArr4 = null;
        }
        this.s0 = strArr4;
        if (strArr4 != null) {
            if (getLogger().isEnabled(0)) {
                getLogger().log(0, "server_host_key proposal before removing unavailable algos is: " + config);
            }
            config = Util.h(config, strArr4);
            if (config != null) {
                e6.h("There are not any available sig algorithm.");
                return;
            }
            if (getLogger().isEnabled(0)) {
                getLogger().log(0, "server_host_key proposal after removing unavailable algos is: ".concat(config));
            }
            if (strArr4.length != 0) {
                if (JSch.i.isEnabled(0)) {
                    JSch.i.log(0, "server_host_key proposal before removing unavailable cert types is: ".concat(config));
                }
                arrayList3 = new ArrayList();
                while (i2 < r4) {
                    if (str14 == null) {
                        switch (str14) {
                            case -1921420161:
                                if (!str14.equals("ssh-dss")) {
                                }
                                break;
                            case -1921406725:
                                if (!str14.equals("ssh-rsa")) {
                                }
                                break;
                            case -1435528202:
                                if (!str14.equals("ssh-ed25519")) {
                                }
                                break;
                            case -1078039047:
                                if (!str14.equals("rsa-sha2-256")) {
                                }
                                break;
                            case -1078036292:
                                if (!str14.equals("rsa-sha2-512")) {
                                }
                                break;
                            case 351580340:
                                if (!str14.equals("ssh-ed448")) {
                                }
                                break;
                            case 1437975149:
                                if (!str14.equals("ecdsa-sha2-nistp256")) {
                                }
                                break;
                            case 1437976201:
                                if (!str14.equals("ecdsa-sha2-nistp384")) {
                                }
                                break;
                            case 1437977934:
                                if (!str14.equals("ecdsa-sha2-nistp521")) {
                                }
                                break;
                            default:
                                break;
                        }
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Switch insn not found in header
                            	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                            */
                        /*
                            Method dump skipped, instruction units count: 1940
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jsch.Session.v():void");
                    }

                    public final void w() {
                        Packet packet = this.P;
                        packet.a();
                        this.O.putByte((byte) 21);
                        z(packet);
                        if (getLogger().isEnabled(1)) {
                            getLogger().log(1, "SSH_MSG_NEWKEYS sent");
                        }
                    }

                    public final void x(Buffer buffer, Cipher cipher, MAC mac, int i, int i2) throws JSchException {
                        IOException e;
                        if (!cipher.isCBC() || (mac != null && mac.isEtM())) {
                            throw new JSchException("Packet corrupt");
                        }
                        if (mac != null) {
                            mac.update(this.l);
                            mac.update(buffer.b, 0, i);
                        }
                        while (i2 > 0) {
                            try {
                                buffer.reset();
                                byte[] bArr = buffer.b;
                                int length = i2 > bArr.length ? bArr.length : i2;
                                this.w.c(bArr, 0, length);
                                if (mac != null) {
                                    mac.update(buffer.b, 0, length);
                                }
                                i2 -= length;
                            } catch (IOException e2) {
                                e = e2;
                                if (getLogger().isEnabled(3)) {
                                    getLogger().log(3, "start_discard finished early due to " + e.getMessage(), e);
                                }
                            }
                        }
                        e = null;
                        if (mac != null) {
                            mac.doFinal(buffer.b, 0);
                        }
                        JSchException jSchException = new JSchException("Packet corrupt");
                        if (e == null) {
                            throw jSchException;
                        }
                        jSchException.addSuppressed(e);
                        throw jSchException;
                    }

                    /* JADX WARN: Code duplicated, block: B:36:0x0241  */
                    /* JADX WARN: Code duplicated, block: B:37:0x0242  */
                    public final void y(KeyExchange keyExchange) throws Exception {
                        Throwable th;
                        byte[] bArr;
                        byte[] bArr2;
                        byte[] bArr3 = keyExchange.c;
                        byte[] bArr4 = keyExchange.d;
                        HASH hash = keyExchange.b;
                        if (this.e == null) {
                            byte[] bArr5 = new byte[bArr4.length];
                            this.e = bArr5;
                            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
                        }
                        this.O.reset();
                        this.O.putByte(bArr3);
                        this.O.putByte(bArr4);
                        this.O.putByte((byte) 65);
                        this.O.putByte(this.e);
                        Buffer buffer = this.O;
                        hash.update(buffer.b, 0, buffer.c);
                        this.f = hash.digest();
                        Buffer buffer2 = this.O;
                        int i = buffer2.c;
                        int length = (i - this.e.length) - 1;
                        byte[] bArr6 = buffer2.b;
                        bArr6[length] = (byte) (bArr6[length] + 1);
                        hash.update(bArr6, 0, i);
                        this.g = hash.digest();
                        Buffer buffer3 = this.O;
                        byte[] bArr7 = buffer3.b;
                        bArr7[length] = (byte) (bArr7[length] + 1);
                        hash.update(bArr7, 0, buffer3.c);
                        this.h = hash.digest();
                        Buffer buffer4 = this.O;
                        byte[] bArr8 = buffer4.b;
                        bArr8[length] = (byte) (bArr8[length] + 1);
                        hash.update(bArr8, 0, buffer4.c);
                        this.i = hash.digest();
                        Buffer buffer5 = this.O;
                        byte[] bArr9 = buffer5.b;
                        bArr9[length] = (byte) (bArr9[length] + 1);
                        hash.update(bArr9, 0, buffer5.c);
                        this.j = hash.digest();
                        Buffer buffer6 = this.O;
                        byte[] bArr10 = buffer6.b;
                        bArr10[length] = (byte) (bArr10[length] + 1);
                        hash.update(bArr10, 0, buffer6.c);
                        this.k = hash.digest();
                        try {
                            this.o = (Cipher) Class.forName(getConfig(this.n[3])).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
                            while (true) {
                                int blockSize = this.o.getBlockSize();
                                bArr = this.i;
                                if (blockSize <= bArr.length) {
                                    break;
                                }
                                this.O.reset();
                                Buffer buffer7 = this.O;
                                try {
                                    buffer7.getClass();
                                    buffer7.putByte(bArr3, 0, bArr3.length);
                                    Buffer buffer8 = this.O;
                                    buffer8.getClass();
                                    buffer8.putByte(bArr4, 0, bArr4.length);
                                    this.O.putByte(this.i);
                                    Buffer buffer9 = this.O;
                                    hash.update(buffer9.b, 0, buffer9.c);
                                    byte[] bArrDigest = hash.digest();
                                    byte[] bArr11 = this.i;
                                    byte[] bArr12 = new byte[bArr11.length + bArrDigest.length];
                                    System.arraycopy(bArr11, 0, bArr12, 0, bArr11.length);
                                    System.arraycopy(bArrDigest, 0, bArr12, this.i.length, bArrDigest.length);
                                    this.i = bArr12;
                                } catch (LinkageError e) {
                                    e = e;
                                }
                                e = e;
                                th = e;
                                if (th instanceof JSchException) {
                                    throw new JSchException(th.toString(), th);
                                }
                                throw th;
                            }
                            this.o.init(1, bArr, this.g);
                            this.v0 = this.o.getIVSize();
                            if (!this.o.isAEAD()) {
                                MAC mac = (MAC) Class.forName(getConfig(this.n[5])).asSubclass(MAC.class).getDeclaredConstructor(null).newInstance(null);
                                this.q = mac;
                                byte[] bArrJ = j(this.O, bArr3, bArr4, this.k, hash, mac.getBlockSize());
                                this.k = bArrJ;
                                this.q.init(bArrJ);
                                this.s = new byte[this.q.getBlockSize()];
                                this.t = new byte[this.q.getBlockSize()];
                            }
                            this.p = (Cipher) Class.forName(getConfig(this.n[2])).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
                            while (true) {
                                int blockSize2 = this.p.getBlockSize();
                                bArr2 = this.h;
                                if (blockSize2 <= bArr2.length) {
                                    break;
                                }
                                this.O.reset();
                                Buffer buffer10 = this.O;
                                buffer10.getClass();
                                buffer10.putByte(bArr3, 0, bArr3.length);
                                Buffer buffer11 = this.O;
                                buffer11.getClass();
                                buffer11.putByte(bArr4, 0, bArr4.length);
                                this.O.putByte(this.h);
                                Buffer buffer12 = this.O;
                                hash.update(buffer12.b, 0, buffer12.c);
                                byte[] bArrDigest2 = hash.digest();
                                byte[] bArr13 = this.h;
                                byte[] bArr14 = new byte[bArr13.length + bArrDigest2.length];
                                System.arraycopy(bArr13, 0, bArr14, 0, bArr13.length);
                                System.arraycopy(bArrDigest2, 0, bArr14, this.h.length, bArrDigest2.length);
                                this.h = bArr14;
                                th = e;
                                if (th instanceof JSchException) {
                                    throw new JSchException(th.toString(), th);
                                }
                                throw th;
                            }
                            this.p.init(0, bArr2, this.f);
                            this.w0 = this.p.getIVSize();
                            if (!this.p.isAEAD()) {
                                MAC mac2 = (MAC) Class.forName(getConfig(this.n[4])).asSubclass(MAC.class).getDeclaredConstructor(null).newInstance(null);
                                this.r = mac2;
                                byte[] bArrJ2 = j(this.O, bArr3, bArr4, this.j, hash, mac2.getBlockSize());
                                this.j = bArrJ2;
                                this.r.init(bArrJ2);
                            }
                            m(this.n[6]);
                            n(this.n[7]);
                        } catch (Exception | LinkageError e2) {
                            e = e2;
                        }
                    }

                    public final void z(Packet packet) {
                        long j = this.y;
                        while (this.q0) {
                            if (j > 0 && System.currentTimeMillis() - this.c0 > j && !this.r0) {
                                e6.h("timeout in waiting for rekeying process.");
                                return;
                            }
                            byte b = packet.a.b[5];
                            if (b == 20 || b == 21 || b == 30 || b == 31 || b == 31 || b == 32 || b == 33 || b == 34 || b == 1) {
                                break;
                            } else {
                                try {
                                    Thread.sleep(10L);
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                        b(packet);
                    }

                    public final void delPortForwardingR(String str, int i) throws JSchException {
                        ChannelForwardedTCPIP.n(this, str, i);
                    }

                    public final void setPassword(byte[] bArr) {
                        if (bArr != null) {
                            byte[] bArr2 = new byte[bArr.length];
                            this.j0 = bArr2;
                            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                        }
                    }

                    public final void delPortForwardingL(int i) throws JSchException {
                        delPortForwardingL("127.0.0.1", i);
                    }

                    public final void setConfig(Properties properties) {
                        Hashtable<String, String> hashtable = new Hashtable<>();
                        for (String str : properties.stringPropertyNames()) {
                            hashtable.put(str, properties.getProperty(str));
                        }
                        setConfig(hashtable);
                    }

                    public final void setConfig(String str, String str2) {
                        synchronized (this.J) {
                            try {
                                if (this.R == null) {
                                    this.R = new Hashtable();
                                }
                                boolean zEquals = str.equals("PubkeyAcceptedKeyTypes");
                                Hashtable hashtable = this.R;
                                if (zEquals) {
                                    hashtable.put("PubkeyAcceptedAlgorithms", str2);
                                } else {
                                    hashtable.put(str, str2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }

                    public final void setPortForwardingR(String str, int i, String str2, int i2) throws JSchException {
                        setPortForwardingR(str, i, str2, i2, null);
                    }

                    public final void setPortForwardingR(int i, String str, int i2, SocketFactory socketFactory) throws JSchException {
                        setPortForwardingR(null, i, str, i2, socketFactory);
                    }

                    public final void setPortForwardingR(String str, int i, String str2, int i2, SocketFactory socketFactory) throws JSchException {
                        ChannelForwardedTCPIP.m(this, str, i, a(i, str), str2, i2, socketFactory);
                    }

                    public final void setPortForwardingR(int i, String str) throws JSchException {
                        setPortForwardingR((String) null, i, str, (Object[]) null);
                    }

                    public final void setPortForwardingR(int i, String str, Object[] objArr) throws JSchException {
                        setPortForwardingR((String) null, i, str, objArr);
                    }

                    public final void setPortForwardingR(int i, String str, int i2) throws JSchException {
                        setPortForwardingR(null, i, str, i2, null);
                    }

                    public final int setPortForwardingR(String str) throws JSchException {
                        Forwarding forwardingO = o(str);
                        int iA = a(forwardingO.b, forwardingO.a);
                        ChannelForwardedTCPIP.m(this, forwardingO.a, forwardingO.b, iA, forwardingO.c, forwardingO.d, null);
                        return iA;
                    }

                    public final int setPortForwardingL(int i, String str, int i2) throws JSchException {
                        return setPortForwardingL("127.0.0.1", i, str, i2, null, 0);
                    }

                    public final int setPortForwardingL(String str, int i, String str2, int i2) throws JSchException {
                        return setPortForwardingL(str, i, str2, i2, null, 0);
                    }

                    public final int setPortForwardingL(String str, int i, String str2, int i2, ServerSocketFactory serverSocketFactory) throws JSchException {
                        return setPortForwardingL(str, i, str2, i2, serverSocketFactory, 0);
                    }

                    public final int setPortForwardingL(String str) throws JSchException {
                        Forwarding forwardingO = o(str);
                        return setPortForwardingL(forwardingO.a, forwardingO.b, forwardingO.c, forwardingO.d, null, 0);
                    }

                    public final void connect() throws JSchException {
                        connect(this.y);
                    }
                }
