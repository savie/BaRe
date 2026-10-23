.class public final Lcom/swiftapps/sba/SbaSwiftTarNative;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lcom/swiftapps/sba/SbaSwiftTarNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

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

.method public static a(JLjava/lang/String;I[Ljava/lang/String;Lvq;I)[J
    .locals 8

    .line 1
    sget-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 2
    .line 3
    move-wide v2, p0

    .line 4
    move-object v4, p2

    .line 5
    move v5, p3

    .line 6
    move-object v6, p4

    .line 7
    move-object v7, p5

    .line 8
    move v1, p6

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/swiftapps/sba/SbaSwiftTarNative;->extractTarFromFdWithStatsRaw(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static b(Ljava/io/FileDescriptor;JLjava/lang/String;I[Ljava/lang/String;Lvq;)[Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 13
    .line 14
    move-wide v2, p1

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move-object v7, p6

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/swiftapps/sba/SbaSwiftTarNative;->extractTarFromFdRaw(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    move-object p1, v0

    .line 29
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    move-object p2, v0

    .line 32
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method public static c(Ljava/io/FileDescriptor;JJLjava/lang/String;I[Ljava/lang/String;Lvq;)[Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 13
    .line 14
    move-wide v2, p1

    .line 15
    move-wide v4, p3

    .line 16
    move-object v6, p5

    .line 17
    move/from16 v7, p6

    .line 18
    .line 19
    move-object/from16 v8, p7

    .line 20
    .line 21
    move-object/from16 v9, p8

    .line 22
    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/swiftapps/sba/SbaSwiftTarNative;->extractTarZstdFromFdRaw(IJJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    move-object p1, v0

    .line 33
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    move-object p2, v0

    .line 36
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method

.method public static d(Ljava/io/FileDescriptor;J)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1, p2}, Lcom/swiftapps/sba/SbaSwiftTarNative;->listTarEntriesFromFdRaw(IJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :catchall_1
    move-exception p2

    .line 22
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw p2
.end method

.method public static e(Ljava/io/FileDescriptor;JJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 10
    .line 11
    move-wide v2, p1

    .line 12
    move-wide v4, p3

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/swiftapps/sba/SbaSwiftTarNative;->listTarEntriesZstdFromFdRaw(IJJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    move-object p1, v0

    .line 23
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :catchall_1
    move-exception v0

    .line 25
    move-object p2, v0

    .line 26
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p2
.end method

.method private final native extractTarFromFdRaw(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;
.end method

.method private final native extractTarFromFdWithStatsRaw(IJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J
.end method

.method private final native extractTarZstdFromFdRaw(IJJLjava/lang/String;I[Ljava/lang/String;Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;
.end method

.method private final native listTarEntriesFromFdRaw(IJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;
.end method

.method private final native listTarEntriesZstdFromFdRaw(IJJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;
.end method


# virtual methods
.method public final native extractAegisArchiveEntry(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;
.end method

.method public final native extractAegisArchiveEntryFused(Ljava/lang/String;JJJJLjava/lang/String;I[Ljava/lang/String;II[B[B[BJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;
.end method
