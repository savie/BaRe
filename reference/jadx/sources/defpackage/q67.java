package defpackage;

import java.io.Writer;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q67 extends Writer {
    public final v08 a;

    public q67(qw0 qw0Var) {
        this.a = new v08(qw0Var);
    }

    public final String a() {
        char[] cArr;
        v08 v08Var = this.a;
        String strE = v08Var.e();
        v08Var.b = -1;
        v08Var.d = 0;
        v08Var.j = null;
        if (v08Var.f) {
            v08Var.f = false;
            ((ArrayList) v08Var.h).clear();
            v08Var.c = 0;
            v08Var.d = 0;
        }
        qw0 qw0Var = (qw0) v08Var.g;
        if (qw0Var != null && (cArr = (char[]) v08Var.i) != null) {
            v08Var.i = null;
            AtomicReferenceArray atomicReferenceArray = qw0Var.b;
            char[] cArr2 = (char[]) atomicReferenceArray.get(2);
            if (cArr2 == null || cArr.length > cArr2.length) {
                atomicReferenceArray.set(2, cArr);
            }
        }
        return strE;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence, int i, int i2) {
        String string = charSequence.subSequence(i, i2).toString();
        this.a.b(0, string.length(), string);
        return this;
    }

    @Override // java.io.Writer
    public final void write(int i) {
        char c = (char) i;
        v08 v08Var = this.a;
        if (v08Var.b >= 0) {
            v08Var.i(16);
        }
        v08Var.e = null;
        v08Var.j = null;
        char[] cArr = (char[]) v08Var.i;
        if (v08Var.d >= cArr.length) {
            v08Var.f();
            cArr = (char[]) v08Var.i;
        }
        int i2 = v08Var.d;
        v08Var.d = i2 + 1;
        cArr[i2] = c;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i2) {
        append(charSequence, i, i2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(char c) {
        write(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(char c) {
        write(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence) {
        String string = charSequence.toString();
        this.a.b(0, string.length(), string);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        append(charSequence);
        return this;
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        this.a.c(cArr, i, i2);
    }

    @Override // java.io.Writer
    public final void write(String str) {
        this.a.b(0, str.length(), str);
    }

    @Override // java.io.Writer
    public final void write(String str, int i, int i2) {
        this.a.b(i, i2, str);
    }

    @Override // java.io.Writer
    public final void write(char[] cArr) {
        this.a.c(cArr, 0, cArr.length);
    }
}
