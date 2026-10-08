package com.jcraft.jsch;

import defpackage.fz5;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class UserAuthKeyboardInteractive extends UserAuth {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.jcraft.jsch.UserAuth
    public final boolean start(Session session) throws Exception {
        Buffer buffer;
        UserInfo userInfo;
        String[] strArrPromptKeyboardInteractive;
        super.start(session);
        UserInfo userInfo2 = this.a;
        if (userInfo2 == null || (userInfo2 instanceof UIKeyboardInteractive)) {
            String string = this.d + "@" + session.f0;
            if (session.h0 != 22) {
                StringBuilder sbN = fz5.n(string, ":");
                sbN.append(session.h0);
                string = sbN.toString();
            }
            String str = string;
            byte[] bArr = session.j0;
            byte[] bArrP = Util.p(this.d, StandardCharsets.UTF_8);
            Object[] objArr = false;
            loop0: while (session.e0 < session.d0) {
                this.b.a();
                this.c.putByte((byte) 50);
                this.c.putString(bArrP);
                Buffer buffer2 = this.c;
                Charset charset = StandardCharsets.UTF_8;
                buffer2.putString("ssh-connection".getBytes(charset));
                this.c.putString("keyboard-interactive".getBytes(charset));
                Buffer buffer3 = this.c;
                byte[] bArr2 = Util.c;
                buffer3.putString(bArr2);
                Buffer buffer4 = this.c;
                buffer4.getClass();
                buffer4.putString(bArr2, 0, bArr2.length);
                session.z(this.b);
                boolean z = true;
                Object[] objArr2 = objArr;
                Object[] objArr3 = true;
                while (true) {
                    buffer = this.c;
                    session.p(buffer);
                    this.c = buffer;
                    boolean z2 = buffer.b[5] & 255;
                    if (z2 == 52) {
                        return z;
                    }
                    if (z2 == 53) {
                        buffer.getInt();
                        this.c.getByte();
                        this.c.getByte();
                        byte[] string2 = this.c.getString();
                        this.c.getString();
                        String str2 = new String(string2, 0, string2.length, StandardCharsets.UTF_8);
                        UserInfo userInfo3 = this.a;
                        if (userInfo3 != null) {
                            userInfo3.showMessage(str2);
                        }
                    } else {
                        if (z2 == 51) {
                            break;
                        }
                        if (z2 != 60) {
                            break loop0;
                        }
                        buffer.getInt();
                        this.c.getByte();
                        this.c.getByte();
                        byte[] string3 = this.c.getString();
                        int length = string3.length;
                        Charset charset2 = StandardCharsets.UTF_8;
                        String str3 = new String(string3, 0, length, charset2);
                        byte[] string4 = this.c.getString();
                        String str4 = new String(string4, 0, string4.length, charset2);
                        Util.c(this.c.getString());
                        int i = this.c.getInt();
                        String[] strArr = new String[i];
                        boolean[] zArr = new boolean[i];
                        int i2 = 0;
                        while (i2 < i) {
                            byte[] string5 = this.c.getString();
                            byte[] bArr3 = bArr;
                            int i3 = i2;
                            strArr[i3] = new String(string5, 0, string5.length, StandardCharsets.UTF_8);
                            zArr[i3] = this.c.getByte() != 0;
                            i2 = i3 + 1;
                            bArr = bArr3;
                        }
                        byte[] bArr4 = bArr;
                        byte[][] bArr5 = null;
                        z = true;
                        if (bArr4 != null && i == 1 && !zArr[0] && strArr[0].toLowerCase(Locale.ROOT).indexOf("password:") >= 0) {
                            byte[][] bArr6 = {bArr4};
                            bArr4 = null;
                            bArr5 = bArr6;
                        } else if ((i > 0 || str3.length() > 0 || str4.length() > 0) && (userInfo = this.a) != null && (strArrPromptKeyboardInteractive = ((UIKeyboardInteractive) userInfo).promptKeyboardInteractive(str, str3, str4, strArr, zArr)) != null) {
                            bArr5 = new byte[strArrPromptKeyboardInteractive.length][];
                            for (int i4 = 0; i4 < strArrPromptKeyboardInteractive.length; i4++) {
                                String str5 = strArrPromptKeyboardInteractive[i4];
                                bArr5[i4] = str5 != null ? str5.getBytes(StandardCharsets.UTF_8) : Util.c;
                            }
                        }
                        this.b.a();
                        this.c.putByte((byte) 61);
                        if (i <= 0 || (bArr5 != null && i == bArr5.length)) {
                            this.c.putInt(i);
                            for (int i5 = 0; i5 < i; i5++) {
                                this.c.putString(bArr5[i5]);
                            }
                        } else {
                            Buffer buffer5 = this.c;
                            if (bArr5 == null) {
                                buffer5.putInt(i);
                                for (int i6 = 0; i6 < i; i6++) {
                                    this.c.putString(Util.c);
                                }
                            } else {
                                buffer5.putInt(0);
                            }
                            if (bArr5 == null) {
                                objArr2 = true;
                            }
                        }
                        session.z(this.b);
                        objArr3 = false;
                        bArr = bArr4;
                    }
                }
                buffer.getInt();
                this.c.getByte();
                this.c.getByte();
                byte[] string6 = this.c.getString();
                if (this.c.getByte() != 0) {
                    throw new JSchPartialAuthException(new String(string6, 0, string6.length, StandardCharsets.UTF_8));
                }
                if (objArr3 == true) {
                    break;
                }
                session.e0 += z ? 1 : 0;
                if (objArr2 == true) {
                    throw new JSchAuthCancelException("keyboard-interactive");
                }
                objArr = objArr2;
            }
        }
        return false;
    }
}
