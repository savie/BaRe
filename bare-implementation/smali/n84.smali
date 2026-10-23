.class public abstract Ln84;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsl7;->b:Lsl7;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsl7;->a:Lsl7;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static a(III)V
    .locals 1

    .line 1
    or-int v0, p0, p1

    .line 2
    .line 3
    or-int/2addr v0, p2

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    sub-int v0, p2, p1

    .line 7
    .line 8
    if-lt v0, p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "Range [%s, %<s + %s) out of bounds for length %s"

    .line 30
    .line 31
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static c(Ljava/io/InputStream;J)J
    .locals 2

    .line 1
    invoke-static {}, Ll84;->a()Ll84;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lk84;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lk84;-><init>(Ll84;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, p2, v1}, Ln84;->d(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Ll84;->close()V

    .line 18
    .line 19
    .line 20
    return-wide p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v0}, Ll84;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    throw p0
.end method

.method public static d(Ljava/io/InputStream;JLjava/util/function/Supplier;)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    :goto_0
    cmp-long v4, v2, v0

    .line 9
    .line 10
    if-lez v4, :cond_1

    .line 11
    .line 12
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, [B

    .line 17
    .line 18
    array-length v5, v4

    .line 19
    int-to-long v5, v5

    .line 20
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    long-to-int v5, v5

    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-virtual {p0, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-long v4, v4

    .line 31
    cmp-long v6, v4, v0

    .line 32
    .line 33
    if-gez v6, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    sub-long/2addr v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    sub-long/2addr p1, v2

    .line 39
    return-wide p1

    .line 40
    :cond_2
    const-string p0, "Skip count must be non-negative, actual: "

    .line 41
    .line 42
    invoke-static {p1, p2, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-wide v0
.end method

.method public static e(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lg51;->a:I

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    invoke-virtual {p2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p1, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public static f(Ljava/util/ArrayList;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1, p1, p2}, Ln84;->e(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_1
    return-void
.end method
