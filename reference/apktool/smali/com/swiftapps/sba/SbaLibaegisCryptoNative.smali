.class public final Lcom/swiftapps/sba/SbaLibaegisCryptoNative;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

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

.method public static a(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J
    .locals 14

    .line 1
    sget-object v0, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

    .line 2
    .line 3
    move v12, p0

    .line 4
    move-wide v2, p1

    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-wide/from16 v8, p7

    .line 14
    .line 15
    move-wide/from16 v10, p9

    .line 16
    .line 17
    move/from16 v4, p11

    .line 18
    .line 19
    move-object/from16 v13, p12

    .line 20
    .line 21
    invoke-direct/range {v0 .. v13}, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->decryptAegis128X2ChunkedEntryFdRaw(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static b(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J
    .locals 14

    .line 1
    sget-object v0, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->a:Lcom/swiftapps/sba/SbaLibaegisCryptoNative;

    .line 2
    .line 3
    move v12, p0

    .line 4
    move-wide v2, p1

    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-wide/from16 v8, p7

    .line 14
    .line 15
    move-wide/from16 v10, p9

    .line 16
    .line 17
    move/from16 v4, p11

    .line 18
    .line 19
    move-object/from16 v13, p12

    .line 20
    .line 21
    invoke-direct/range {v0 .. v13}, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->decryptAegis256ChunkedEntryFdRaw(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static c(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lqt3;)Ljava/lang/Object;
    .locals 2

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
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v0, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p2

    .line 39
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    :catchall_2
    move-exception v0

    .line 41
    :try_start_4
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 46
    :catchall_3
    move-exception p2

    .line 47
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p2
.end method

.method private final native decryptAegis128X2ChunkedEntryFdRaw(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J
.end method

.method private final native decryptAegis256ChunkedEntryFdRaw(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J
.end method


# virtual methods
.method public final native isAvailable()Z
.end method
