package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ProxySOCKS4 implements Proxy {
    public final String a;
    public final int b;
    public InputStream c;
    public OutputStream d;
    public Socket e;
    public String f;

    public ProxySOCKS4(String str) {
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

    @Override // com.jcraft.jsch.Proxy
    public final void connect(SocketFactory socketFactory, String str, int i, int i2) throws JSchException {
        int i3 = this.b;
        String str2 = this.a;
        try {
            if (socketFactory == null) {
                Socket socketG = Util.g(i3, i2, str2);
                this.e = socketG;
                this.c = socketG.getInputStream();
                this.d = this.e.getOutputStream();
            } else {
                Socket socketCreateSocket = socketFactory.createSocket(str2, i3);
                this.e = socketCreateSocket;
                this.c = socketFactory.getInputStream(socketCreateSocket);
                this.d = socketFactory.getOutputStream(this.e);
            }
            if (i2 > 0) {
                this.e.setSoTimeout(i2);
            }
            this.e.setTcpNoDelay(true);
            byte[] bArr = new byte[1024];
            int length = 4;
            bArr[0] = 4;
            bArr[1] = 1;
            bArr[2] = (byte) (i >>> 8);
            bArr[3] = (byte) (i & 255);
            try {
                byte[] address = InetAddress.getByName(str).getAddress();
                int i4 = 0;
                while (i4 < address.length) {
                    int i5 = length + 1;
                    bArr[length] = address[i4];
                    i4++;
                    length = i5;
                }
                String str3 = this.f;
                if (str3 != null) {
                    byte[] bArr2 = Util.a;
                    System.arraycopy(Util.p(str3, StandardCharsets.UTF_8), 0, bArr, length, this.f.length());
                    length += this.f.length();
                }
                bArr[length] = 0;
                this.d.write(bArr, 0, length + 1);
                int i6 = 0;
                while (i6 < 8) {
                    int i7 = this.c.read(bArr, i6, 8 - i6);
                    if (i7 <= 0) {
                        throw new JSchProxyException("ProxySOCKS4: stream is closed");
                    }
                    i6 += i7;
                }
                if (bArr[0] != 0) {
                    throw new JSchProxyException("ProxySOCKS4: server returns VN " + ((int) bArr[0]));
                }
                if (bArr[1] == 90) {
                    return;
                }
                try {
                    this.e.close();
                } catch (Exception unused) {
                }
                throw new JSchProxyException("ProxySOCKS4: server returns CD " + ((int) bArr[1]));
            } catch (UnknownHostException e) {
                throw new JSchProxyException("ProxySOCKS4: " + e.toString(), e);
            }
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            try {
                Socket socket = this.e;
                if (socket != null) {
                    socket.close();
                }
            } catch (Exception unused2) {
            }
            throw new JSchProxyException("ProxySOCKS4: " + e3.toString(), e3);
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
    }

    public ProxySOCKS4(String str, int i) {
        this.a = str;
        this.b = i;
    }
}
