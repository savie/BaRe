.class public abstract Lf24;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ll15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lf24;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lf24;->a:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public static a([B)[B
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x4

    .line 7
    sget-object v2, Lf24;->a:Ll15;

    .line 8
    .line 9
    const-string v3, "Decompressing {} bytes"

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x200

    .line 15
    .line 16
    new-array v3, v0, [B

    .line 17
    .line 18
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 24
    .line 25
    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    .line 29
    .line 30
    invoke-direct {p0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v6, 0x0

    .line 34
    :try_start_2
    invoke-virtual {p0, v3, v6, v0}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, -0x1

    .line 39
    if-eq v7, v8, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4, v3, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const-string v0, "Decompressed to {} bytes"

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v1, v2, v0, v3}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    .line 66
    .line 67
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    goto :goto_5

    .line 76
    :catchall_2
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_3
    move-exception p0

    .line 83
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 87
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catchall_4
    move-exception v0

    .line 92
    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :goto_4
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 96
    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :catchall_5
    move-exception v0

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_6
    throw p0
.end method
