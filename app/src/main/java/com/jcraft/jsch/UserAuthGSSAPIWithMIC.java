package com.jcraft.jsch;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class UserAuthGSSAPIWithMIC extends UserAuth {
    public static final byte[][] e = {new byte[]{6, 9, 42, -122, 72, -122, -9, 18, 1, 2, 2}};
    public static final String[] f = {"gssapi-with-mic.krb5"};

    @Override // com.jcraft.jsch.UserAuth
    public final boolean start(Session session) throws Exception {
        String str;
        super.start(session);
        String str2 = this.d;
        Charset charset = StandardCharsets.UTF_8;
        byte[] bArrP = Util.p(str2, charset);
        this.b.a();
        this.c.putByte((byte) 50);
        this.c.putString(bArrP);
        this.c.putString("ssh-connection".getBytes(charset));
        this.c.putString("gssapi-with-mic".getBytes(charset));
        this.c.putInt(1);
        Buffer buffer = this.c;
        byte[][] bArr = e;
        buffer.putString(bArr[0]);
        session.z(this.b);
        while (true) {
            Buffer buffer2 = this.c;
            session.p(buffer2);
            this.c = buffer2;
            int i = buffer2.b[5] & 255;
            if (i == 51) {
                break;
            }
            if (i != 60) {
                if (i != 53) {
                    break;
                }
                buffer2.getInt();
                this.c.getByte();
                this.c.getByte();
                byte[] string = this.c.getString();
                this.c.getString();
                String str3 = new String(string, 0, string.length, StandardCharsets.UTF_8);
                UserInfo userInfo = this.a;
                if (userInfo != null) {
                    userInfo.showMessage(str3);
                }
            } else {
                buffer2.getInt();
                this.c.getByte();
                this.c.getByte();
                byte[] string2 = this.c.getString();
                int i2 = 0;
                while (true) {
                    if (i2 >= 1) {
                        str = null;
                        break;
                    }
                    if (Util.a(string2, bArr[i2])) {
                        str = f[i2];
                        break;
                    }
                    i2++;
                }
                if (str == null) {
                    break;
                }
                try {
                    GSSContext gSSContext = (GSSContext) Class.forName(session.getConfig(str)).asSubclass(GSSContext.class).getDeclaredConstructor(null).newInstance(null);
                    gSSContext.create(this.d, session.f0);
                    byte[] bArrInit = new byte[0];
                    while (!gSSContext.isEstablished()) {
                        bArrInit = gSSContext.init(bArrInit, 0, bArrInit.length);
                        if (bArrInit != null) {
                            this.b.a();
                            this.c.putByte((byte) 61);
                            Buffer buffer3 = this.c;
                            buffer3.getClass();
                            buffer3.putString(bArrInit, 0, bArrInit.length);
                            session.z(this.b);
                        }
                        if (!gSSContext.isEstablished()) {
                            Buffer buffer4 = this.c;
                            session.p(buffer4);
                            this.c = buffer4;
                            int i3 = buffer4.b[5] & 255;
                            if (i3 == 64 || i3 == 65) {
                                session.p(buffer4);
                                this.c = buffer4;
                                byte b = buffer4.b[5];
                                i3 = b & 255;
                            }
                            if (i3 == 51) {
                                break;
                            }
                            this.c.getInt();
                            this.c.getByte();
                            this.c.getByte();
                            bArrInit = this.c.getString();
                        }
                    }
                    Buffer buffer5 = new Buffer();
                    buffer5.putString(session.e);
                    buffer5.putByte((byte) 50);
                    buffer5.putString(bArrP, 0, bArrP.length);
                    Charset charset2 = StandardCharsets.UTF_8;
                    buffer5.putString("ssh-connection".getBytes(charset2));
                    buffer5.putString("gssapi-with-mic".getBytes(charset2));
                    byte[] mic = gSSContext.getMIC(buffer5.b, 0, buffer5.getLength());
                    if (mic == null) {
                        break;
                    }
                    this.b.a();
                    this.c.putByte((byte) 66);
                    Buffer buffer6 = this.c;
                    buffer6.getClass();
                    buffer6.putString(mic, 0, mic.length);
                    session.z(this.b);
                    gSSContext.dispose();
                    Buffer buffer7 = this.c;
                    session.p(buffer7);
                    this.c = buffer7;
                    int i4 = buffer7.b[5] & 255;
                    if (i4 != 52) {
                        if (i4 != 51) {
                            break;
                        }
                        buffer7.getInt();
                        this.c.getByte();
                        this.c.getByte();
                        byte[] string3 = this.c.getString();
                        if (this.c.getByte() == 0) {
                            break;
                        }
                        throw new JSchPartialAuthException(new String(string3, 0, string3.length, charset2));
                    }
                    return true;
                } catch (JSchException | Exception unused) {
                    break;
                }
            }
        }
        return false;
    }
}
