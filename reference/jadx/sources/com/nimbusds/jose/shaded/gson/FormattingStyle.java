package com.nimbusds.jose.shaded.gson;

import defpackage.c6;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FormattingStyle {
    public static final FormattingStyle COMPACT = new FormattingStyle("", "", false);
    public static final FormattingStyle PRETTY = new FormattingStyle("\n", "  ", true);
    private final String indent;
    private final String newline;
    private final boolean spaceAfterSeparators;

    private FormattingStyle(String str, String str2, boolean z) {
        Objects.requireNonNull(str, "newline == null");
        Objects.requireNonNull(str2, "indent == null");
        if (!str.matches("[\r\n]*")) {
            c6.f("Only combinations of \\n and \\r are allowed in newline.");
            throw null;
        }
        if (!str2.matches("[ \t]*")) {
            c6.f("Only combinations of spaces and tabs are allowed in indent.");
            throw null;
        }
        this.newline = str;
        this.indent = str2;
        this.spaceAfterSeparators = z;
    }

    public String getIndent() {
        return this.indent;
    }

    public String getNewline() {
        return this.newline;
    }

    public boolean usesSpaceAfterSeparators() {
        return this.spaceAfterSeparators;
    }

    public FormattingStyle withIndent(String str) {
        return new FormattingStyle(this.newline, str, this.spaceAfterSeparators);
    }

    public FormattingStyle withNewline(String str) {
        return new FormattingStyle(str, this.indent, this.spaceAfterSeparators);
    }

    public FormattingStyle withSpaceAfterSeparators(boolean z) {
        return new FormattingStyle(this.newline, this.indent, z);
    }
}
