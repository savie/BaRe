package com.jcraft.jsch;

import defpackage.xs1;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class UserAuthNone extends UserAuth {
    public String e;

    public final String a() {
        return this.e;
    }

    @Override // com.jcraft.jsch.UserAuth
    public final boolean start(Session session) throws Exception {
        super.start(session);
        this.b.a();
        this.c.putByte((byte) 5);
        Buffer buffer = this.c;
        Charset charset = StandardCharsets.UTF_8;
        buffer.putString("ssh-userauth".getBytes(charset));
        session.z(this.b);
        if (session.getLogger().isEnabled(1)) {
            session.getLogger().log(1, "SSH_MSG_SERVICE_REQUEST sent");
        }
        Buffer buffer2 = this.c;
        session.p(buffer2);
        this.c = buffer2;
        boolean z = buffer2.b[5] == 6;
        if (session.getLogger().isEnabled(1)) {
            session.getLogger().log(1, "SSH_MSG_SERVICE_ACCEPT received");
        }
        if (!z || !session.getConfig("enable_auth_none").equals("yes")) {
            return false;
        }
        byte[] bArrP = Util.p(this.d, charset);
        this.b.a();
        this.c.putByte((byte) 50);
        this.c.putString(bArrP);
        this.c.putString("ssh-connection".getBytes(charset));
        this.c.putString("none".getBytes(charset));
        session.z(this.b);
        while (true) {
            Buffer buffer3 = this.c;
            session.p(buffer3);
            this.c = buffer3;
            int i = buffer3.b[5] & 255;
            if (i == 52) {
                return true;
            }
            if (i != 53) {
                if (i != 51) {
                    throw new JSchException(xs1.h(i, "USERAUTH fail (", ")"));
                }
                buffer3.getInt();
                this.c.getByte();
                this.c.getByte();
                byte[] string = this.c.getString();
                this.c.getByte();
                this.e = new String(string, 0, string.length, StandardCharsets.UTF_8);
                return false;
            }
            buffer3.getInt();
            this.c.getByte();
            this.c.getByte();
            byte[] string2 = this.c.getString();
            this.c.getString();
            String str = new String(string2, 0, string2.length, StandardCharsets.UTF_8);
            UserInfo userInfo = this.a;
            if (userInfo != null) {
                try {
                    userInfo.showMessage(str);
                } catch (RuntimeException unused) {
                }
            }
        }
    }
}
