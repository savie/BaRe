.class public final Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lih;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser$Companion;
    }
.end annotation


# static fields
.field private static final ANDROID_ATTR_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANDROID_MANIFEST:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ATTRIBUTE_EXTENSION_HEADER_SIZE:I = 0x14

.field private static final ATTRIBUTE_SIZE:I = 0x14

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final ATTR_VERSION_CODE_MAJOR:Ljava/lang/String; = "versionCodeMajor"

.field private static final ATTR_VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static final BYTE_MASK:I = 0xff

.field private static final CHUNK_HEADER_SIZE:I = 0x8

.field private static final CHUNK_STRING_POOL:I = 0x1

.field private static final CHUNK_XML:I = 0x3

.field private static final CHUNK_XML_FIRST:I = 0x100

.field private static final CHUNK_XML_LAST:I = 0x17f

.field private static final CHUNK_XML_RESOURCE_MAP:I = 0x180

.field private static final CHUNK_XML_START_ELEMENT:I = 0x102

.field public static final Companion:Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser$Companion;

.field private static final MAX_ATTRIBUTES_PER_ELEMENT:I = 0x2710

.field private static final MAX_STRING_POOL_STRINGS:I = 0x186a0

.field private static final MAX_STRING_POOL_STYLES:I = 0x186a0

.field private static final STRING_POOL_HEADER_SIZE:I = 0x1c

.field private static final STRING_POOL_UTF8_FLAG:I = 0x100

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_META_DATA:Ljava/lang/String; = "meta-data"

.field private static final TAG_USES_STATIC_LIBRARY:Ljava/lang/String; = "uses-static-library"

.field private static final TYPE_INT_BOOLEAN:I = 0x12

.field private static final TYPE_INT_DEC:I = 0x10

.field private static final TYPE_INT_HEX:I = 0x11

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_REFERENCE:I = 0x1

.field private static final TYPE_STRING:I = 0x3

.field private static final UINT_MASK:J = 0xffffffffL

.field private static final USHORT_MASK:I = 0xffff

.field private static final UTF16_LENGTH_TWO_SHORT_FLAG:I = 0x8000

.field private static final UTF16_LENGTH_VALUE_MASK:I = 0x7fff

.field private static final UTF8_LENGTH_TWO_BYTE_FLAG:I = 0x80

.field private static final UTF8_LENGTH_VALUE_MASK:I = 0x7f

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final XML_NODE_HEADER_SIZE:I = 0x10


# instance fields
.field private final apkFile:Lq63;

.field private final logTag:Ljava/lang/String;

.field private final parsedApkInfo$delegate:Los4;

.field private final parsedManifestInfo$delegate:Los4;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->Companion:Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser$Companion;

    .line 7
    .line 8
    const-string v0, "UTF-16LE"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->UTF_16_LE:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    const v0, 0x1010003

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lpw5;

    .line 24
    .line 25
    const-string v2, "name"

    .line 26
    .line 27
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x101021b

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Lpw5;

    .line 38
    .line 39
    const-string v3, "versionCode"

    .line 40
    .line 41
    invoke-direct {v2, v0, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const v0, 0x101021c

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v3, Lpw5;

    .line 52
    .line 53
    const-string v4, "versionName"

    .line 54
    .line 55
    invoke-direct {v3, v0, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const v0, 0x1010576

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v4, Lpw5;

    .line 66
    .line 67
    const-string v5, "versionCodeMajor"

    .line 68
    .line 69
    invoke-direct {v4, v0, v5}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    filled-new-array {v1, v2, v3, v4}, [Lpw5;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->ANDROID_ATTR_IDS:Ljava/util/Map;

    .line 81
    .line 82
    return-void
.end method

.method public constructor <init>(Lq63;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->apkFile:Lq63;

    .line 8
    .line 9
    const-string p1, "ApkManifestParser"

    .line 10
    .line 11
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->logTag:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Lah;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, p0, v0}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lgv7;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lgv7;-><init>(Lbt3;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->parsedManifestInfo$delegate:Los4;

    .line 25
    .line 26
    new-instance p1, Lbh;

    .line 27
    .line 28
    invoke-direct {p1, p0, v0}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lgv7;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->parsedApkInfo$delegate:Los4;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lhh;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->parsedManifestInfo_delegate$lambda$0(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lhh;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getANDROID_ATTR_IDS$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->ANDROID_ATTR_IDS:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUTF_16_LE$cp()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->UTF_16_LE:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lpg;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->parsedApkInfo_delegate$lambda$0(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lpg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getParsedApkInfo()Lrg;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->parsedApkInfo$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lrg;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getParsedManifestInfo()Lhh;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->parsedManifestInfo$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhh;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final hasApplicationClass(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->Companion:Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser$Companion;->hasApplicationClass(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final parsedApkInfo_delegate$lambda$0(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lpg;
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->getParsedManifestInfo()Lhh;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lpg;

    .line 8
    .line 9
    iget-object v1, p0, Lhh;->c:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "null"

    .line 14
    .line 15
    :cond_0
    iget-wide v2, p0, Lhh;->b:J

    .line 16
    .line 17
    const/16 v4, 0x20

    .line 18
    .line 19
    shl-long/2addr v2, v4

    .line 20
    iget-wide v4, p0, Lhh;->a:J

    .line 21
    .line 22
    const-wide v6, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v4, v6

    .line 28
    or-long/2addr v2, v4

    .line 29
    iget-boolean v4, p0, Lhh;->e:Z

    .line 30
    .line 31
    iget-boolean v5, p0, Lhh;->f:Z

    .line 32
    .line 33
    invoke-direct/range {v0 .. v5}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method private static final parsedManifestInfo_delegate$lambda$0(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;)Lhh;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->readManifestBytes()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v2, Lgh;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v2, Lgh;->a:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object v1, Lfh;->g:Lfh;

    .line 27
    .line 28
    iput-object v1, v2, Lgh;->b:Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [I

    .line 32
    .line 33
    iput-object v1, v2, Lgh;->c:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v2}, Lgh;->j()Lhh;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->logTag:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "getVersionInfo"

    .line 44
    .line 45
    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private final readManifestBytes()[B
    .locals 5

    .line 1
    new-instance v0, Llh6;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    .line 8
    .line 9
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->apkFile:Lq63;

    .line 10
    .line 11
    sget-boolean v4, Lq63;->d:Z

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    :goto_0
    const-string v4, "AndroidManifest.xml"

    .line 35
    .line 36
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-static {v2}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iput-object v3, v0, Llh6;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception v2

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :catchall_1
    move-exception v4

    .line 56
    :try_start_4
    invoke-static {v2, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_2
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->logTag:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "readManifestBytes: zip stream"

    .line 63
    .line 64
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :goto_3
    iget-object v2, v0, Llh6;->a:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, [B

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_2
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->apkFile:Lq63;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lq63;->l(I)Lc73;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    :try_start_5
    iget-object v2, v1, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 83
    .line 84
    invoke-static {p0, v0, v2}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->readManifestBytes$lambda$2(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;Llh6;Ljava/nio/channels/FileChannel;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lc73;->close()V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catchall_2
    move-exception p0

    .line 92
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 93
    :catchall_3
    move-exception v0

    .line 94
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_3
    :goto_4
    iget-object p0, v0, Llh6;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, [B

    .line 101
    .line 102
    return-object p0
.end method

.method private static final readManifestBytes$lambda$2(Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;Llh6;Ljava/nio/channels/FileChannel;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lhz8;->L:[B

    .line 5
    .line 6
    new-instance v0, Ldz8;

    .line 7
    .line 8
    invoke-direct {v0}, Ll5;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Ldz8;->x:Z

    .line 13
    .line 14
    sget-object v1, Ldz8;->y:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    iget-object v2, v0, Ll5;->p:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    sget v3, Lg51;->a:I

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v1

    .line 24
    :goto_0
    iput-object v2, v0, Ll5;->n:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    iput-object v1, v0, Ll5;->p:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    iput-object p2, v0, Ldz8;->t:Ljava/nio/channels/FileChannel;

    .line 29
    .line 30
    invoke-virtual {v0}, Ldz8;->K()Lhz8;

    .line 31
    .line 32
    .line 33
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    const-string v0, "AndroidManifest.xml"

    .line 35
    .line 36
    iget-object v1, p2, Lhz8;->b:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/LinkedList;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lez8;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lhz8;->a(Lez8;)Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-static {v0}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p1, Llh6;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_3

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 74
    :catchall_2
    move-exception v1

    .line 75
    :try_start_5
    invoke-static {v0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {p2}, Lhz8;->close()V

    .line 80
    .line 81
    .line 82
    sget-object p0, Lbe8;->a:Lbe8;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 83
    .line 84
    return-object p0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_4

    .line 87
    :goto_3
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 88
    :catchall_3
    move-exception v0

    .line 89
    :try_start_8
    invoke-static {p2, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 93
    :goto_4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->logTag:Ljava/lang/String;

    .line 94
    .line 95
    const-string p2, "readManifestBytes: zip channel"

    .line 96
    .line 97
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method


# virtual methods
.method public getApkInfo()Lrg;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->getParsedApkInfo()Lrg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getApplicationClassName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->getParsedManifestInfo()Lhh;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lhh;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method
