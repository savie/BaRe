.class public final Lx63;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsk5;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx63;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lx63;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lx63;->a:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lx63;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object p0, p0, Lx63;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final c()Lec0;
    .locals 7

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lx63;->b()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    .line 16
    .line 17
    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    :cond_0
    move-object v0, v1

    .line 34
    goto :goto_7

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_5

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    :goto_0
    :try_start_5
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-lez v5, :cond_2

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {v4, v0, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_2
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 59
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 60
    .line 61
    .line 62
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_7

    .line 69
    :goto_1
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_3
    move-exception v4

    .line 74
    :try_start_a
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 78
    :goto_3
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :catchall_4
    move-exception v3

    .line 83
    :try_start_c
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_4
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 87
    :goto_5
    if-eqz v2, :cond_3

    .line 88
    .line 89
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 90
    .line 91
    .line 92
    goto :goto_6

    .line 93
    :catchall_5
    move-exception v2

    .line 94
    :try_start_e
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_6
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 98
    :goto_7
    if-eqz v0, :cond_4

    .line 99
    .line 100
    new-instance v1, Lec0;

    .line 101
    .line 102
    iget-object p0, p0, Lx63;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v1, p0, v0}, Lec0;-><init>(Ljava/lang/String;[B)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-object v1
.end method
