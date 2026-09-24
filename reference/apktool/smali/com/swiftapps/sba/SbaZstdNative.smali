.class public final Lcom/swiftapps/sba/SbaZstdNative;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lcom/swiftapps/sba/SbaZstdNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/swiftapps/sba/SbaZstdNative;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/swiftapps/sba/SbaZstdNative;->a:Lcom/swiftapps/sba/SbaZstdNative;

    .line 7
    .line 8
    const-string v0, "sba_archive"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static a(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lm27;)[J
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v0, Lcom/swiftapps/sba/SbaZstdNative;->a:Lcom/swiftapps/sba/SbaZstdNative;

    .line 18
    .line 19
    const-wide/16 v3, -0x1

    .line 20
    .line 21
    move-object v5, p2

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/swiftapps/sba/SbaZstdNative;->decompressZstdFdToFdRaw(IIJLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J

    .line 23
    .line 24
    .line 25
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p1, v0

    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    move-object p2, v0

    .line 38
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    :catchall_2
    move-exception v0

    .line 40
    :try_start_4
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 45
    :catchall_3
    move-exception v0

    .line 46
    move-object p2, v0

    .line 47
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p2
.end method

.method private final native decompressZstdFdToFdRaw(IIJLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J
.end method


# virtual methods
.method public final native compressZstdBytes([BI)[B
.end method

.method public final native decompressZstdBytes([B)[B
.end method
