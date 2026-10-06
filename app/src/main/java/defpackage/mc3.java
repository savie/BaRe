package defpackage;

import java.io.File;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mc3 {
    public static final char a;
    public static final char b;

    static {
        Character.toString('.');
        char c = File.separatorChar;
        a = c;
        char c2 = '\\';
        if (c != '/') {
            if (c != '\\') {
                c6.f(String.valueOf(c));
                return;
            }
            c2 = '/';
        }
        b = c2;
        Pattern.compile("^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$");
        Pattern.compile("^[a-zA-Z0-9][a-zA-Z0-9-]*$");
    }
}
