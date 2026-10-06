package defpackage;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pr1 extends h23 implements or1 {
    public Pattern a;
    public MatchResult b;
    public Matcher c;
    public final p23 d;

    public pr1() {
        e(32, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)");
        this.d = new p23();
    }

    @Override // defpackage.or1
    public final void a(e23 e23Var) {
        p23 p23Var = this.d;
        if (p23Var != null) {
            e23 e23VarF = f();
            if (e23Var == null) {
                p23Var.a(e23VarF);
                return;
            }
            if (e23Var.b == null) {
                e23Var.b = e23VarF.b;
            }
            if (e23Var.c == null) {
                e23Var.c = e23VarF.c;
            }
            p23Var.a(e23Var);
        }
    }

    public final void e(int i, String str) {
        try {
            this.a = Pattern.compile(str, i);
        } catch (PatternSyntaxException unused) {
            c6.f("Unparseable regex supplied: ".concat(str));
        }
    }

    public abstract e23 f();

    public final String g(int i) {
        MatchResult matchResult = this.b;
        if (matchResult == null) {
            return null;
        }
        return matchResult.group(i);
    }

    public final boolean h(String str) {
        this.b = null;
        Matcher matcher = this.a.matcher(str);
        this.c = matcher;
        if (matcher.matches()) {
            this.b = this.c.toMatchResult();
        }
        return this.b != null;
    }

    public pr1(String str) {
        e(0, str);
        this.d = new p23();
    }
}
