package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ProxySOCKS5 implements Proxy {
    public final String a;
    public final int b;
    public InputStream c;
    public OutputStream d;
    public Socket e;
    public String f;
    public String g;

    public ProxySOCKS5(String str) {
        int i = 1080;
        if (str.indexOf(58) != -1) {
            try {
                String strSubstring = str.substring(0, str.indexOf(58));
                try {
                    i = Integer.parseInt(str.substring(str.indexOf(58) + 1));
                } catch (Exception unused) {
                }
                str = strSubstring;
            } catch (Exception unused2) {
            }
        }
        this.a = str;
        this.b = i;
    }

    public static void a(InputStream inputStream, byte[] bArr, int i) throws IOException, JSchProxyException {
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 <= 0) {
                throw new JSchProxyException("ProxySOCKS5: stream is closed");
            }
            i2 += i3;
        }
    }

    public static int getDefaultPort() {
        return 1080;
    }

    @Override // com.jcraft.jsch.Proxy
    public final void close() {
        try {
            InputStream inputStream = this.c;
            if (inputStream != null) {
                inputStream.close();
            }
            OutputStream outputStream = this.d;
            if (outputStream != null) {
                outputStream.close();
            }
            Socket socket = this.e;
            if (socket != null) {
                socket.close();
            }
        } catch (Exception unused) {
        }
        this.c = null;
        this.d = null;
        this.e = null;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00ea  */
    @Override // com.jcraft.jsch.Proxy
    public final void connect(SocketFactory socketFactory, String str, int i, int i2) throws JSchException {
        int i3;
        boolean z;
        int i4 = this.b;
        String str2 = this.a;
        try {
            if (socketFactory == null) {
                Socket socketG = Util.g(i4, i2, str2);
                this.e = socketG;
                this.c = socketG.getInputStream();
                this.d = this.e.getOutputStream();
            } else {
                Socket socketCreateSocket = socketFactory.createSocket(str2, i4);
                this.e = socketCreateSocket;
                this.c = socketFactory.getInputStream(socketCreateSocket);
                this.d = socketFactory.getOutputStream(this.e);
            }
            if (i2 > 0) {
                this.e.setSoTimeout(i2);
            }
            this.e.setTcpNoDelay(true);
            byte[] bArr = new byte[1024];
            String str3 = this.f;
            int i5 = (str3 == null || this.g == null) ? 1 : 2;
            bArr[0] = 5;
            bArr[1] = (byte) i5;
            bArr[2] = 0;
            if (str3 == null || this.g == null) {
                i3 = 3;
            } else {
                bArr[3] = 2;
                i3 = 4;
            }
            this.d.write(bArr, 0, i3);
            a(this.c, bArr, 2);
            int i6 = bArr[1] & 255;
            String str4 = null;
            if (i6 == 0) {
                z = true;
            } else {
                if (i6 != 2) {
                    str4 = String.format(Locale.ROOT, "Unsupported SOCKS5 authentication method requested by server: %02X", Integer.valueOf(i6));
                } else {
                    String str5 = this.f;
                    if (str5 == null || this.g == null) {
                        str4 = "SOCKS5 username/password authentication requested by server with no username/password configured";
                    } else {
                        bArr[0] = 1;
                        bArr[1] = (byte) str5.length();
                        String str6 = this.f;
                        byte[] bArr2 = Util.a;
                        Charset charset = StandardCharsets.UTF_8;
                        System.arraycopy(Util.p(str6, charset), 0, bArr, 2, this.f.length());
                        int length = this.f.length();
                        int i7 = 2 + length;
                        int i8 = length + 3;
                        bArr[i7] = (byte) this.g.length();
                        System.arraycopy(Util.p(this.g, charset), 0, bArr, i8, this.g.length());
                        this.d.write(bArr, 0, i8 + this.g.length());
                        a(this.c, bArr, 2);
                        int i9 = bArr[1] & 255;
                        if (i9 == 0) {
                            z = true;
                        } else {
                            str4 = String.format(Locale.ROOT, "SOCKS5 username/password authentication failed: server status = %02X", Integer.valueOf(i9));
                        }
                    }
                }
                z = false;
            }
            if (!z) {
                try {
                    this.e.close();
                } catch (Exception unused) {
                }
                if (str4 == null) {
                    str4 = "fail in SOCKS5 proxy";
                }
                throw new JSchProxyException(str4);
            }
            bArr[0] = 5;
            bArr[1] = 1;
            bArr[2] = 0;
            byte[] bArr3 = Util.a;
            byte[] bArrP = Util.p(str, StandardCharsets.UTF_8);
            int length2 = bArrP.length;
            bArr[3] = 3;
            bArr[4] = (byte) length2;
            System.arraycopy(bArrP, 0, bArr, 5, length2);
            bArr[5 + length2] = (byte) (i >>> 8);
            bArr[length2 + 6] = (byte) (i & 255);
            this.d.write(bArr, 0, length2 + 7);
            a(this.c, bArr, 4);
            if (bArr[1] != 0) {
                try {
                    this.e.close();
                } catch (Exception unused2) {
                }
                throw new JSchProxyException("ProxySOCKS5: server returns " + ((int) bArr[1]));
            }
            int i10 = bArr[3] & 255;
            if (i10 == 1) {
                a(this.c, bArr, 6);
                return;
            }
            if (i10 == 3) {
                a(this.c, bArr, 1);
                a(this.c, bArr, (bArr[0] & 255) + 2);
            } else {
                if (i10 != 4) {
                    return;
                }
                a(this.c, bArr, 18);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            try {
                Socket socket = this.e;
                if (socket != null) {
                    socket.close();
                }
            } catch (Exception unused3) {
            }
            throw new JSchProxyException("ProxySOCKS5: " + e2.toString(), e2);
        }
    }

    @Override // com.jcraft.jsch.Proxy
    public final InputStream getInputStream() {
        return this.c;
    }

    @Override // com.jcraft.jsch.Proxy
    public final OutputStream getOutputStream() {
        return this.d;
    }

    @Override // com.jcraft.jsch.Proxy
    public final Socket getSocket() {
        return this.e;
    }

    public final void setUserPasswd(String str, String str2) {
        this.f = str;
        this.g = str2;
    }

    public ProxySOCKS5(String str, int i) {
        this.a = str;
        this.b = i;
    }
}
