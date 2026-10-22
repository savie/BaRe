package defpackage;

import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z13 extends yi7 {
    public static final String t = StandardCharsets.ISO_8859_1.name();
    public int k;
    public ArrayList l;
    public boolean m;
    public String n;
    public String o;
    public ba6 p;
    public boolean q;
    public BufferedReader r;
    public BufferedWriter s;

    public final int g(InetAddress inetAddress, int i) {
        String hostAddress = inetAddress.getHostAddress();
        int iIndexOf = hostAddress.indexOf(37);
        if (iIndexOf > 0) {
            hostAddress = hostAddress.substring(0, iIndexOf);
        }
        StringBuilder sb = new StringBuilder("|");
        if (inetAddress instanceof Inet4Address) {
            sb.append("1");
        } else if (inetAddress instanceof Inet6Address) {
            sb.append("2");
        }
        sb.append("|");
        sb.append(hostAddress);
        sb.append("|");
        sb.append(i);
        sb.append("|");
        return m("EPRT", sb.toString());
    }

    public final int h(boolean z) {
        boolean z2 = this.q;
        this.m = true;
        ArrayList arrayList = this.l;
        arrayList.clear();
        String line = this.r.readLine();
        if (line == null) {
            throw new f23("Connection closed without indication.");
        }
        int length = line.length();
        int i = 3;
        if (length < 3) {
            throw new il2("Truncated server reply: ".concat(line));
        }
        try {
            this.k = Integer.parseInt(line.substring(0, 3));
            arrayList.add(line);
            if (length > 3) {
                char cCharAt = line.charAt(3);
                if (cCharAt == '-') {
                    while (true) {
                        String line2 = this.r.readLine();
                        if (line2 == null) {
                            throw new f23("Connection closed without indication.");
                        }
                        arrayList.add(line2);
                        if (line2.length() > 3 && line2.charAt(3) != '-' && Character.isDigit(line2.charAt(0))) {
                            break;
                        }
                    }
                } else if (z2 && cCharAt != ' ') {
                    throw new il2(eq3.k("Invalid server reply: '", line, "'"));
                }
            } else if (z2) {
                throw new il2(eq3.k("Truncated server reply: '", line, "'"));
            }
            if (z) {
                int i2 = this.k;
                String strI = i();
                ba6 ba6Var = this.p;
                vy4 vy4Var = ba6Var.b;
                if (vy4Var.a.size() != 0) {
                    vy4Var.forEach(new kl0(new y96(ba6Var.a, i2, strI), i));
                }
            }
            int i3 = this.k;
            if (i3 != 421) {
                return i3;
            }
            throw new f23("FTP response 421 received. Server closed connection.");
        } catch (NumberFormatException unused) {
            throw new il2("Could not parse response code.\nServer Reply: ".concat(line));
        }
    }

    public final String i() {
        if (!this.m) {
            return this.n;
        }
        this.m = false;
        String strJoin = String.join("\r\n", this.l);
        this.n = strJoin;
        return strJoin;
    }

    public final int j(InetAddress inetAddress, int i) {
        StringBuilder sb = new StringBuilder(24);
        sb.append(inetAddress.getHostAddress().replace('.', ','));
        sb.append(',');
        sb.append(i >>> 8);
        sb.append(',');
        sb.append(i & 255);
        return m("PORT", sb.toString());
    }

    public final void k(String str) throws IOException {
        try {
            this.s.write(str);
            this.s.flush();
        } catch (SocketException e) {
            Socket socket = this.b;
            if (!(socket == null ? false : socket.isConnected())) {
                throw new f23("Connection unexpectedly closed.");
            }
            throw e;
        }
    }

    public final int l(int i) {
        String str;
        switch (i) {
            case 1:
                str = "ABOR";
                break;
            case 2:
                str = "ACCT";
                break;
            case 3:
                str = "ALLO";
                break;
            case 4:
                str = "APPE";
                break;
            case 5:
                str = "CDUP";
                break;
            case 6:
                str = "CWD";
                break;
            case 7:
                str = "DELE";
                break;
            case 8:
                str = "EPRT";
                break;
            case XmlPullParser.COMMENT /* 9 */:
                str = "EPSV";
                break;
            case 10:
                str = "FEAT";
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                str = "HELP";
                break;
            case 12:
                str = "LIST";
                break;
            case 13:
                str = "MDTM";
                break;
            case 14:
                str = "MFMT";
                break;
            case 15:
                str = "MKD";
                break;
            case Argon2.V10 /* 16 */:
                str = "MLSD";
                break;
            case 17:
                str = "MLST";
                break;
            case 18:
                str = "MODE";
                break;
            case Argon2.V13 /* 19 */:
                str = "NLST";
                break;
            case 20:
                str = "NOOP";
                break;
            case 21:
                str = "OPTS";
                break;
            case 22:
                str = "PASS";
                break;
            case 23:
                str = "PASV";
                break;
            case 24:
                str = "PORT";
                break;
            case 25:
                str = "PWD";
                break;
            case 26:
                str = "QUIT";
                break;
            case 27:
                str = "REIN";
                break;
            case 28:
                str = "REST";
                break;
            case 29:
                str = "RETR";
                break;
            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                str = "RMD";
                break;
            case 31:
                str = "RNFR";
                break;
            case 32:
                str = "RNTO";
                break;
            case 33:
                str = "SITE";
                break;
            case 34:
                str = "SIZE";
                break;
            case 35:
                str = "SMNT";
                break;
            case 36:
                str = "STAT";
                break;
            case 37:
                str = "STOR";
                break;
            case 38:
                str = "STOU";
                break;
            case 39:
                str = "STRU";
                break;
            case 40:
                str = "SYST";
                break;
            case 41:
                str = CredentialProviderBaseController.TYPE_TAG;
                break;
            case 42:
                str = "USER";
                break;
            default:
                throw null;
        }
        return m(str, null);
    }

    public int m(String str, String str2) {
        if (this.s == null) {
            y5.m("Connection is not open");
            return 0;
        }
        StringBuilder sb = new StringBuilder(str);
        if (str2 != null) {
            sb.append(' ');
            sb.append(str2);
        }
        sb.append("\r\n");
        String string = sb.toString();
        k(string);
        ba6 ba6Var = this.p;
        vy4 vy4Var = ba6Var.b;
        if (vy4Var.a.size() != 0) {
            new y96(ba6Var.a, str, string);
            vy4Var.forEach(new aa6());
        }
        return h(true);
    }
}
