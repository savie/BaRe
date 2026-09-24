package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j64 extends g3 {
    public static final Pattern[][] e = {new Pattern[]{null, null}, new Pattern[]{Pattern.compile("^<(?:script|pre|style)(?:\\s|>|$)", 2), Pattern.compile("</(?:script|pre|style)>", 2)}, new Pattern[]{Pattern.compile("^<!--"), Pattern.compile("-->")}, new Pattern[]{Pattern.compile("^<[?]"), Pattern.compile("\\?>")}, new Pattern[]{Pattern.compile("^<![A-Z]"), Pattern.compile(">")}, new Pattern[]{Pattern.compile("^<!\\[CDATA\\["), Pattern.compile("\\]\\]>")}, new Pattern[]{Pattern.compile("^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)", 2), null}, new Pattern[]{Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$", 2), null}};
    public final Pattern b;
    public final h64 a = new h64();
    public boolean c = false;
    public ir0 d = new ir0(1);

    public j64(Pattern pattern) {
        this.b = pattern;
    }

    @Override // defpackage.g3
    public final void a(CharSequence charSequence) {
        ir0 ir0Var = this.d;
        StringBuilder sb = (StringBuilder) ir0Var.c;
        if (ir0Var.b != 0) {
            sb.append('\n');
        }
        sb.append(charSequence);
        ir0Var.b++;
        Pattern pattern = this.b;
        if (pattern == null || !pattern.matcher(charSequence).find()) {
            return;
        }
        this.c = true;
    }

    @Override // defpackage.g3
    public final void d() {
        this.a.f = ((StringBuilder) this.d.c).toString();
        this.d = null;
    }

    @Override // defpackage.g3
    public final ws0 e() {
        return this.a;
    }

    @Override // defpackage.g3
    public final ys0 h(un2 un2Var) {
        if (this.c) {
            return null;
        }
        if (un2Var.h && this.b == null) {
            return null;
        }
        return ys0.a(un2Var.b);
    }
}
