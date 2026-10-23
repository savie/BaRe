.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ResponseBody$BomAwareReader;,
        Lokhttp3/ResponseBody$Companion;
    }
.end annotation


# static fields
.field public static final b:Lokhttp3/ResponseBody$Companion$asResponseBody$1;


# instance fields
.field public a:Lokhttp3/ResponseBody$BomAwareReader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lhy0;->d:Lhy0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lnw0;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lnw0;->D(Lhy0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lhy0;->a:[B

    .line 15
    .line 16
    array-length v0, v0

    .line 17
    int-to-long v2, v0

    .line 18
    new-instance v0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v0, v4, v2, v3, v1}, Lokhttp3/ResponseBody$Companion$asResponseBody$1;-><init>(Lokhttp3/MediaType;JLnw0;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lokhttp3/ResponseBody;->b:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->m()Lzw0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lzw0;->q0()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->h()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-gtz v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->m()Lzw0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :try_start_0
    invoke-interface {p0}, Lzw0;->t()[B

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v3

    .line 26
    :goto_0
    move-object v6, v3

    .line 27
    move-object v3, v2

    .line 28
    move-object v2, v6

    .line 29
    goto :goto_1

    .line 30
    :catchall_1
    move-exception v2

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_2
    move-exception p0

    .line 38
    invoke-static {v2, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    .line 42
    .line 43
    array-length p0, v3

    .line 44
    const-wide/16 v4, -0x1

    .line 45
    .line 46
    cmp-long v2, v0, v4

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    int-to-long v4, p0

    .line 51
    cmp-long v2, v0, v4

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    new-instance v2, Ljava/io/IOException;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "Content-Length ("

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ") and stream length ("

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p0, ") disagree"

    .line 77
    .line 78
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v2

    .line 89
    :cond_2
    :goto_2
    return-object v3

    .line 90
    :cond_3
    throw v2

    .line 91
    :cond_4
    const-string p0, "Cannot buffer entire body for content length: "

    .line 92
    .line 93
    invoke-static {v0, v1, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v3
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->m()Lzw0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g()Ljava/io/Reader;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/ResponseBody;->a:Lokhttp3/ResponseBody$BomAwareReader;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Lokhttp3/ResponseBody$BomAwareReader;

    .line 6
    .line 7
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->m()Lzw0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->j()Lokhttp3/MediaType;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Lokhttp3/MediaType;->a(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    :cond_0
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    :cond_1
    invoke-direct {v0, v1, v2}, Lokhttp3/ResponseBody$BomAwareReader;-><init>(Lzw0;Ljava/nio/charset/Charset;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lokhttp3/ResponseBody;->a:Lokhttp3/ResponseBody$BomAwareReader;

    .line 29
    .line 30
    :cond_2
    return-object v0
.end method

.method public abstract h()J
.end method

.method public abstract j()Lokhttp3/MediaType;
.end method

.method public abstract m()Lzw0;
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->m()Lzw0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->j()Lokhttp3/MediaType;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lokhttp3/MediaType;->a(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    :cond_0
    sget-object p0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    :cond_1
    invoke-static {v0, p0}, Lokhttp3/internal/_UtilJvmKt;->f(Lzw0;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v0, p0}, Lzw0;->M(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    :goto_0
    move-object v2, v1

    .line 34
    move-object v1, p0

    .line 35
    move-object p0, v2

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_2
    move-exception v0

    .line 45
    invoke-static {p0, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_3
    throw p0
.end method
