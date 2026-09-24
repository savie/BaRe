package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ProxyHTTP implements Proxy {
    public final String a;
    public final int b;
    public InputStream c;
    public OutputStream d;
    public Socket e;
    public String f;
    public String g;

    public ProxyHTTP(String str) {
        int i = 80;
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
        return 80;
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
        int i3;
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
            OutputStream outputStream = this.d;
            String str3 = "CONNECT " + str + ":" + i + " HTTP/1.0\r\n";
            byte[] bArr = Util.a;
            Charset charset = StandardCharsets.UTF_8;
            outputStream.write(str3.getBytes(charset));
            if (this.f != null && this.g != null) {
                byte[] bytes = (this.f + ":" + this.g).getBytes(charset);
                byte[] bArrQ = Util.q(bytes.length, true, bytes);
                this.d.write("Proxy-Authorization: Basic ".getBytes(charset));
                this.d.write(bArrQ);
                this.d.write("\r\n".getBytes(charset));
            }
            this.d.write("\r\n".getBytes(charset));
            this.d.flush();
            StringBuilder sb = new StringBuilder();
            int iIndexOf = 0;
            while (iIndexOf >= 0) {
                iIndexOf = this.c.read();
                if (iIndexOf == 13) {
                    iIndexOf = this.c.read();
                    if (iIndexOf == 10) {
                        break;
                    }
                } else {
                    sb.append((char) iIndexOf);
                }
            }
            if (iIndexOf < 0) {
                throw new IOException();
            }
            String string = sb.toString();
            String strSubstring = "Unknow reason";
            int i5 = -1;
            try {
                iIndexOf = string.indexOf(32);
                int i6 = iIndexOf + 1;
                int iIndexOf2 = string.indexOf(32, i6);
                i5 = Integer.parseInt(string.substring(i6, iIndexOf2));
                strSubstring = string.substring(iIndexOf2 + 1);
            } catch (Exception unused) {
            }
            if (i5 != 200) {
                throw new IOException("proxy error: " + strSubstring);
            }
            do {
                i3 = 0;
                while (iIndexOf >= 0) {
                    iIndexOf = this.c.read();
                    if (iIndexOf == 13) {
                        iIndexOf = this.c.read();
                        if (iIndexOf == 10) {
                            break;
                        }
                    } else {
                        i3++;
                    }
                }
                if (iIndexOf < 0) {
                    throw new IOException();
                }
            } while (i3 != 0);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            try {
                Socket socket = this.e;
                if (socket != null) {
                    socket.close();
                }
            } catch (Exception unused2) {
            }
            throw new JSchProxyException("ProxyHTTP: " + e2.toString(), e2);
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

    public ProxyHTTP(String str, int i) {
        this.a = str;
        this.b = i;
    }
}
