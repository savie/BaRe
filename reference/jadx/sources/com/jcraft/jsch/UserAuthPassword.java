package com.jcraft.jsch;

import defpackage.fz5;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class UserAuthPassword extends UserAuth {
    @Override // com.jcraft.jsch.UserAuth
    public final boolean start(Session session) throws Exception {
        Buffer buffer;
        int i;
        super.start(session);
        byte[] bytes = session.j0;
        String string = this.d + "@" + session.f0;
        if (session.h0 != 22) {
            StringBuilder sbN = fz5.n(string, ":");
            sbN.append(session.h0);
            string = sbN.toString();
        }
        String str = string;
        while (session.e0 < session.d0) {
            try {
                if (bytes == null) {
                    UserInfo userInfo = this.a;
                    if (userInfo == null) {
                        if (bytes != null) {
                            Util.e(bytes);
                        }
                        return false;
                    }
                    if (!userInfo.promptPassword("Password for " + str)) {
                        throw new JSchAuthCancelException("password");
                    }
                    String password = this.a.getPassword();
                    if (password == null) {
                        throw new JSchAuthCancelException("password");
                    }
                    bytes = password.getBytes(StandardCharsets.UTF_8);
                }
                String str2 = this.d;
                Charset charset = StandardCharsets.UTF_8;
                byte[] bArrP = Util.p(str2, charset);
                this.b.a();
                this.c.putByte((byte) 50);
                this.c.putString(bArrP);
                this.c.putString("ssh-connection".getBytes(charset));
                this.c.putString("password".getBytes(charset));
                this.c.putByte((byte) 0);
                this.c.putString(bytes);
                session.z(this.b);
                while (true) {
                    buffer = this.c;
                    session.p(buffer);
                    this.c = buffer;
                    i = buffer.b[5] & 255;
                    if (i == 52) {
                        Util.e(bytes);
                        return true;
                    }
                    if (i == 53) {
                        buffer.getInt();
                        this.c.getByte();
                        this.c.getByte();
                        byte[] string2 = this.c.getString();
                        this.c.getString();
                        String str3 = new String(string2, 0, string2.length, StandardCharsets.UTF_8);
                        UserInfo userInfo2 = this.a;
                        if (userInfo2 != null) {
                            userInfo2.showMessage(str3);
                        }
                    } else if (i == 60) {
                        buffer.getInt();
                        this.c.getByte();
                        this.c.getByte();
                        byte[] string3 = this.c.getString();
                        this.c.getString();
                        UserInfo userInfo3 = this.a;
                        if (userInfo3 != null && (userInfo3 instanceof UIKeyboardInteractive)) {
                            int length = string3.length;
                            Charset charset2 = StandardCharsets.UTF_8;
                            String[] strArrPromptKeyboardInteractive = ((UIKeyboardInteractive) userInfo3).promptKeyboardInteractive(str, "Password Change Required", new String(string3, 0, length, charset2), new String[]{"New Password: "}, new boolean[]{false});
                            if (strArrPromptKeyboardInteractive == null) {
                                throw new JSchAuthCancelException("password");
                            }
                            String str4 = strArrPromptKeyboardInteractive[0];
                            byte[] bytes2 = str4 != null ? str4.getBytes(charset2) : Util.c;
                            this.b.a();
                            this.c.putByte((byte) 50);
                            Buffer buffer2 = this.c;
                            buffer2.getClass();
                            buffer2.putString(bArrP, 0, bArrP.length);
                            this.c.putString("ssh-connection".getBytes(charset2));
                            this.c.putString("password".getBytes(charset2));
                            this.c.putByte((byte) 1);
                            Buffer buffer3 = this.c;
                            buffer3.getClass();
                            buffer3.putString(bytes, 0, bytes.length);
                            this.c.putString(bytes2);
                            Util.e(bytes2);
                            session.z(this.b);
                        }
                        if (userInfo3 != null) {
                            userInfo3.showMessage("Password must be changed.");
                        }
                        Util.e(bytes);
                        return false;
                    }
                }
                if (i != 51) {
                    Util.e(bytes);
                    return false;
                }
                buffer.getInt();
                this.c.getByte();
                this.c.getByte();
                byte[] string4 = this.c.getString();
                if (this.c.getByte() != 0) {
                    throw new JSchPartialAuthException(new String(string4, 0, string4.length, StandardCharsets.UTF_8));
                }
                session.e0++;
                Util.e(bytes);
                bytes = null;
            } catch (Throwable th) {
                if (bytes != null) {
                    Util.e(bytes);
                }
                throw th;
            }
        }
        if (bytes != null) {
            Util.e(bytes);
            return false;
        }
        return false;
    }
}
