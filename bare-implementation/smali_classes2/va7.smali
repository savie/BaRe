.class public final Lva7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic l:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lv45;

.field public final d:Landroid/util/ArrayMap;

.field public final e:Landroid/util/ArrayMap;

.field public final f:Landroid/util/ArrayMap;

.field public final g:I

.field public final h:Ljava/io/File;

.field public i:I

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;ILandroid/os/Looper;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lva7;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lva7;->d:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance p1, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lva7;->e:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Lta7;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v1, p0

    .line 32
    invoke-direct/range {v0 .. v5}, Lua7;-><init>(Lva7;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, -0x1

    .line 36
    iput p0, v1, Lva7;->i:I

    .line 37
    .line 38
    iput-object p2, v1, Lva7;->b:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object p3, v1, Lva7;->h:Ljava/io/File;

    .line 41
    .line 42
    new-instance p0, Lv45;

    .line 43
    .line 44
    invoke-direct {p0, v1, p5}, Lv45;-><init>(Lva7;Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    iput-object p0, v1, Lva7;->c:Lv45;

    .line 48
    .line 49
    const/16 p0, 0x4e20

    .line 50
    .line 51
    if-ne p4, p0, :cond_0

    .line 52
    .line 53
    iput p4, v1, Lva7;->g:I

    .line 54
    .line 55
    new-instance p0, Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p0, v1, Lva7;->f:Landroid/util/ArrayMap;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iput p4, v1, Lva7;->g:I

    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    iput-object p0, v1, Lva7;->f:Landroid/util/ArrayMap;

    .line 67
    .line 68
    :goto_0
    monitor-enter p2

    .line 69
    :try_start_0
    invoke-static {p3}, Lpe4;->x(Ljava/io/File;)Luc8;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v1, p0}, Lva7;->f(Luc8;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    monitor-exit p2

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object p0, v0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p4, "Parsing failed for file="

    .line 86
    .line 87
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x20

    .line 17
    .line 18
    if-lt v2, v3, :cond_0

    .line 19
    .line 20
    const v3, 0xd7ff

    .line 21
    .line 22
    .line 23
    if-le v2, v3, :cond_1

    .line 24
    .line 25
    :cond_0
    const v3, 0xe000

    .line 26
    .line 27
    .line 28
    if-lt v2, v3, :cond_2

    .line 29
    .line 30
    const v3, 0xfffd

    .line 31
    .line 32
    .line 33
    if-gt v2, v3, :cond_2

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_3
    return v0
.end method

.method public static e(I)I
    .locals 1

    .line 1
    const/high16 v0, 0x30000000

    .line 2
    .line 3
    or-int/2addr p0, v0

    .line 4
    return p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;ILbr0;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v0, 0x79

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lt p2, v0, :cond_3

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p4}, Lva7;->d(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 p2, 0x2

    .line 20
    mul-int/2addr p0, p2

    .line 21
    new-array p0, p0, [B

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    move v2, v0

    .line 25
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v0, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/lit8 v4, v2, 0x1

    .line 36
    .line 37
    shr-int/lit8 v5, v3, 0x8

    .line 38
    .line 39
    int-to-byte v5, v5

    .line 40
    aput-byte v5, p0, v2

    .line 41
    .line 42
    add-int/2addr v2, p2

    .line 43
    int-to-byte v3, v3

    .line 44
    aput-byte v3, p0, v4

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p3, v1, p1, p0}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p3, v1, p0, p4}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    if-nez p4, :cond_4

    .line 62
    .line 63
    const-string p1, "null"

    .line 64
    .line 65
    invoke-virtual {p3, v1, p0, p1}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    invoke-virtual {p3, v1, p0, p4}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static h(ILbr0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-static {p2}, Lva7;->d(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    if-eqz p3, :cond_3

    .line 10
    .line 11
    invoke-static {p3}, Lva7;->d(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    if-eqz p6, :cond_3

    .line 18
    .line 19
    invoke-static {p6}, Lva7;->d(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    const-string v1, "setting"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lbr0;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    .line 31
    .line 32
    const-string v2, "id"

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2, p2}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    .line 36
    .line 37
    const-string p2, "name"

    .line 38
    .line 39
    invoke-virtual {p1, v0, p2, p3}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    .line 41
    .line 42
    const-string p2, "value"

    .line 43
    .line 44
    const-string p3, "valueBase64"

    .line 45
    .line 46
    invoke-static {p2, p3, p0, p1, p4}, Lva7;->g(Ljava/lang/String;Ljava/lang/String;ILbr0;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "package"

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2, p6}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    .line 53
    .line 54
    if-eqz p5, :cond_1

    .line 55
    .line 56
    const-string p2, "defaultValue"

    .line 57
    .line 58
    const-string p3, "defaultValueBase64"

    .line 59
    .line 60
    invoke-static {p2, p3, p0, p1, p5}, Lva7;->g(Ljava/lang/String;Ljava/lang/String;ILbr0;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "defaultSysSet"

    .line 64
    .line 65
    invoke-virtual {p1, p2, p8}, Lbr0;->a(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const-string p2, "tag"

    .line 69
    .line 70
    const-string p3, "tagBase64"

    .line 71
    .line 72
    invoke-static {p2, p3, p0, p1, p7}, Lva7;->g(Ljava/lang/String;Ljava/lang/String;ILbr0;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    if-eqz p9, :cond_2

    .line 76
    .line 77
    const-string p0, "preserve_in_restore"

    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    invoke-virtual {p1, p0, p2}, Lbr0;->a(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {p1, v0, v1}, Lbr0;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lva7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget v0, v1, Lva7;->i:I

    .line 7
    .line 8
    new-instance v3, Landroid/util/ArrayMap;

    .line 9
    .line 10
    iget-object v4, v1, Lva7;->d:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Landroid/util/ArrayMap;

    .line 16
    .line 17
    iget-object v5, v1, Lva7;->e:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    iput-boolean v5, v1, Lva7;->j:Z

    .line 24
    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 26
    iget-object v6, v1, Lva7;->a:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v6

    .line 29
    :try_start_1
    new-instance v2, Landroid/util/AtomicFile;

    .line 30
    .line 31
    iget-object v7, v1, Lva7;->h:Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {v2, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 41
    :try_start_3
    new-instance v10, Lbr0;

    .line 42
    .line 43
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput v5, v10, Lbr0;->b:I

    .line 47
    .line 48
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v10, v8, v9}, Lbr0;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v10, v7, v9}, Lbr0;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    .line 61
    .line 62
    const-string v9, "settings"

    .line 63
    .line 64
    invoke-virtual {v10, v7, v9}, Lbr0;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    const-string v9, "version"

    .line 68
    .line 69
    iget-object v11, v10, Lbr0;->a:Ls33;

    .line 70
    .line 71
    const/16 v12, 0x6f

    .line 72
    .line 73
    invoke-virtual {v11, v12}, Ls33;->writeByte(I)V

    .line 74
    .line 75
    .line 76
    iget-object v11, v10, Lbr0;->a:Ls33;

    .line 77
    .line 78
    invoke-virtual {v11, v9}, Ls33;->b(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v9, v10, Lbr0;->a:Ls33;

    .line 82
    .line 83
    invoke-virtual {v9, v0}, Ls33;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    move v9, v5

    .line 91
    :goto_0
    if-ge v9, v0, :cond_0

    .line 92
    .line 93
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    check-cast v11, Lua7;

    .line 98
    .line 99
    move v12, v9

    .line 100
    iget v9, v1, Lva7;->i:I

    .line 101
    .line 102
    iget-object v13, v11, Lua7;->e:Ljava/lang/String;

    .line 103
    .line 104
    move v14, v12

    .line 105
    iget-object v12, v11, Lua7;->a:Ljava/lang/String;

    .line 106
    .line 107
    move-object v15, v13

    .line 108
    iget-object v13, v11, Lua7;->b:Ljava/lang/String;

    .line 109
    .line 110
    move/from16 v16, v14

    .line 111
    .line 112
    iget-object v14, v11, Lua7;->c:Ljava/lang/String;

    .line 113
    .line 114
    move-object/from16 v17, v15

    .line 115
    .line 116
    iget-object v15, v11, Lua7;->d:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v5, v11, Lua7;->f:Ljava/lang/String;

    .line 119
    .line 120
    iget-boolean v7, v11, Lua7;->g:Z

    .line 121
    .line 122
    iget-boolean v11, v11, Lua7;->h:Z

    .line 123
    .line 124
    move/from16 v18, v16

    .line 125
    .line 126
    move-object/from16 v16, v5

    .line 127
    .line 128
    move/from16 v5, v18

    .line 129
    .line 130
    move/from16 v18, v11

    .line 131
    .line 132
    move-object/from16 v11, v17

    .line 133
    .line 134
    move/from16 v17, v7

    .line 135
    .line 136
    invoke-static/range {v9 .. v18}, Lva7;->h(ILbr0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v9, v5, 0x1

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v7, 0x0

    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    move-object v7, v8

    .line 146
    goto :goto_3

    .line 147
    :cond_0
    const-string v0, "settings"

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-virtual {v10, v3, v0}, Lbr0;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    .line 152
    .line 153
    const-string v0, "namespaceHashes"

    .line 154
    .line 155
    invoke-virtual {v10, v3, v0}, Lbr0;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    .line 157
    .line 158
    const/4 v0, 0x0

    .line 159
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-ge v0, v3, :cond_3

    .line 164
    .line 165
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Ljava/lang/String;

    .line 176
    .line 177
    const-string v7, "namespaceHash"

    .line 178
    .line 179
    if-eqz v3, :cond_2

    .line 180
    .line 181
    if-nez v5, :cond_1

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_1
    const/4 v9, 0x0

    .line 185
    invoke-virtual {v10, v9, v7}, Lbr0;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    .line 187
    .line 188
    const-string v11, "namespace"

    .line 189
    .line 190
    invoke-virtual {v10, v9, v11, v3}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    .line 192
    .line 193
    const-string v3, "bannedHash"

    .line 194
    .line 195
    invoke-virtual {v10, v9, v3, v5}, Lbr0;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v9, v7}, Lbr0;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .line 200
    .line 201
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_3
    const-string v0, "namespaceHashes"

    .line 205
    .line 206
    const/4 v3, 0x0

    .line 207
    invoke-virtual {v10, v3, v0}, Lbr0;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10}, Lbr0;->endDocument()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    .line 215
    .line 216
    :try_start_4
    invoke-static {v8}, Ln84;->b(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    .line 218
    .line 219
    const/4 v5, 0x1

    .line 220
    goto :goto_4

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    goto :goto_6

    .line 223
    :catchall_2
    move-exception v0

    .line 224
    move-object v3, v7

    .line 225
    :goto_3
    :try_start_5
    const-string v3, "SettingsState"

    .line 226
    .line 227
    const-string v4, "Failed to write settings, restoring backup"

    .line 228
    .line 229
    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 233
    .line 234
    .line 235
    :try_start_6
    invoke-static {v7}, Ln84;->b(Ljava/io/Closeable;)V

    .line 236
    .line 237
    .line 238
    const/4 v5, 0x0

    .line 239
    :goto_4
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 240
    if-eqz v5, :cond_4

    .line 241
    .line 242
    iget-object v1, v1, Lva7;->b:Ljava/lang/Object;

    .line 243
    .line 244
    monitor-enter v1

    .line 245
    :try_start_7
    monitor-exit v1

    .line 246
    goto :goto_5

    .line 247
    :catchall_3
    move-exception v0

    .line 248
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 249
    throw v0

    .line 250
    :cond_4
    :goto_5
    return-void

    .line 251
    :catchall_4
    move-exception v0

    .line 252
    :try_start_8
    invoke-static {v7}, Ln84;->b(Ljava/io/Closeable;)V

    .line 253
    .line 254
    .line 255
    throw v0

    .line 256
    :goto_6
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 257
    throw v0

    .line 258
    :catchall_5
    move-exception v0

    .line 259
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 260
    throw v0
.end method

.method public final b(Luc8;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lva7;->i:I

    .line 2
    .line 3
    const/16 v0, 0x79

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lt p0, v0, :cond_2

    .line 7
    .line 8
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    array-length p3, p0

    .line 29
    div-int/lit8 p3, p3, 0x2

    .line 30
    .line 31
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    array-length p3, p0

    .line 35
    add-int/lit8 p3, p3, -0x1

    .line 36
    .line 37
    :goto_0
    if-ge p1, p3, :cond_1

    .line 38
    .line 39
    aget-byte v0, p0, p1

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    shl-int/lit8 v0, v0, 0x8

    .line 44
    .line 45
    add-int/lit8 v1, p1, 0x1

    .line 46
    .line 47
    aget-byte v1, p0, v1

    .line 48
    .line 49
    and-int/lit16 v1, v1, 0xff

    .line 50
    .line 51
    or-int/2addr v0, v1

    .line 52
    int-to-char v0, v0

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "null"

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    :cond_3
    return-object v1

    .line 77
    :cond_4
    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lva7;->d:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lua7;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "Settings changed: Old = "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "SettingsState"

    .line 32
    .line 33
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v5, v2, Lua7;->b:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v5, v3

    .line 43
    :goto_0
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v3, v2, Lua7;->c:Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    const/4 v10, 0x1

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {v2, p2, p3, v1, v10}, Lua7;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    :goto_1
    return v1

    .line 57
    :cond_3
    move-object v7, p0

    .line 58
    move-object v9, p2

    .line 59
    move-object v11, p3

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    new-instance v6, Lua7;

    .line 62
    .line 63
    move-object v7, p0

    .line 64
    move-object v8, p1

    .line 65
    move-object v9, p2

    .line 66
    move-object v11, p3

    .line 67
    invoke-direct/range {v6 .. v11}, Lua7;-><init>(Lva7;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-object v2, v6

    .line 74
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p1, "Settings changed: New = "

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p0, v2, Lua7;->c:Ljava/lang/String;

    .line 92
    .line 93
    const/4 p1, -0x1

    .line 94
    iget p2, v7, Lva7;->g:I

    .line 95
    .line 96
    if-ne p2, p1, :cond_5

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_5
    const-string p1, "android"

    .line 100
    .line 101
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_6
    if-eqz v5, :cond_7

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    goto :goto_3

    .line 115
    :cond_7
    move p1, v1

    .line 116
    :goto_3
    if-eqz v9, :cond_8

    .line 117
    .line 118
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    goto :goto_4

    .line 123
    :cond_8
    move p3, v1

    .line 124
    :goto_4
    if-eqz v3, :cond_9

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    goto :goto_5

    .line 131
    :cond_9
    move v0, v1

    .line 132
    :goto_5
    if-eqz p0, :cond_a

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    goto :goto_6

    .line 139
    :cond_a
    move p0, v1

    .line 140
    :goto_6
    add-int/2addr p3, p0

    .line 141
    sub-int/2addr p3, p1

    .line 142
    sub-int/2addr p3, v0

    .line 143
    iget-object p0, v7, Lva7;->f:Landroid/util/ArrayMap;

    .line 144
    .line 145
    invoke-virtual {p0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ljava/lang/Integer;

    .line 150
    .line 151
    if-eqz p1, :cond_b

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    add-int/2addr p3, p1

    .line 158
    :cond_b
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-gt p1, p2, :cond_d

    .line 163
    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, v11, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    :goto_7
    iget-boolean p0, v7, Lva7;->j:Z

    .line 172
    .line 173
    const/4 p1, 0x1

    .line 174
    if-nez p0, :cond_c

    .line 175
    .line 176
    iput-boolean p1, v7, Lva7;->j:Z

    .line 177
    .line 178
    iget-object p0, v7, Lva7;->c:Lv45;

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Lva7;->a()V

    .line 184
    .line 185
    .line 186
    :cond_c
    return p1

    .line 187
    :cond_d
    const-string p0, "You are adding too many system settings. You should stop using system settings for app specific data package: "

    .line 188
    .line 189
    invoke-static {p0, v11}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return v1
.end method

.method public final f(Luc8;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 6
    .line 7
    .line 8
    move-result v11

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v12, 0x1

    .line 14
    if-eq v0, v12, :cond_f

    .line 15
    .line 16
    const/4 v13, 0x3

    .line 17
    if-ne v0, v13, :cond_1

    .line 18
    .line 19
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-le v2, v11, :cond_f

    .line 24
    .line 25
    :cond_1
    if-eq v0, v13, :cond_0

    .line 26
    .line 27
    const/4 v14, 0x4

    .line 28
    if-ne v0, v14, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "settings"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v15, 0x0

    .line 42
    if-eqz v2, :cond_b

    .line 43
    .line 44
    const-string v0, "version"

    .line 45
    .line 46
    invoke-interface {v10, v15, v0}, Luc8;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v2, -0x1

    .line 51
    if-eq v0, v2, :cond_a

    .line 52
    .line 53
    invoke-interface {v10, v0}, Luc8;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, v1, Lva7;->i:I

    .line 58
    .line 59
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eq v3, v12, :cond_0

    .line 68
    .line 69
    if-ne v3, v13, :cond_3

    .line 70
    .line 71
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-le v4, v0, :cond_0

    .line 76
    .line 77
    :cond_3
    if-eq v3, v13, :cond_9

    .line 78
    .line 79
    if-ne v3, v14, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v4, "setting"

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_8

    .line 93
    .line 94
    const-string v3, "id"

    .line 95
    .line 96
    invoke-interface {v10, v15, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const-string v3, "name"

    .line 101
    .line 102
    invoke-interface {v10, v15, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v4, "value"

    .line 107
    .line 108
    const-string v5, "valueBase64"

    .line 109
    .line 110
    invoke-virtual {v1, v10, v4, v5}, Lva7;->b(Luc8;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-string v5, "package"

    .line 115
    .line 116
    invoke-interface {v10, v15, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string v6, "defaultValue"

    .line 121
    .line 122
    const-string v7, "defaultValueBase64"

    .line 123
    .line 124
    invoke-virtual {v1, v10, v6, v7}, Lva7;->b(Luc8;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "preserve_in_restore"

    .line 129
    .line 130
    invoke-interface {v10, v15, v7}, Luc8;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-ne v7, v2, :cond_5

    .line 135
    .line 136
    :catch_0
    const/4 v7, 0x0

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    :try_start_0
    invoke-interface {v10, v7}, Luc8;->c(I)Z

    .line 139
    .line 140
    .line 141
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_2
    if-eqz v6, :cond_7

    .line 143
    .line 144
    const-string v9, "defaultSysSet"

    .line 145
    .line 146
    invoke-interface {v10, v15, v9}, Luc8;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-ne v9, v2, :cond_6

    .line 151
    .line 152
    :catch_1
    const/4 v9, 0x0

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :try_start_1
    invoke-interface {v10, v9}, Luc8;->c(I)Z

    .line 155
    .line 156
    .line 157
    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_3
    const-string v2, "tag"

    .line 159
    .line 160
    const-string v15, "tagBase64"

    .line 161
    .line 162
    invoke-virtual {v1, v10, v2, v15}, Lva7;->b(Luc8;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    :goto_4
    move v15, v0

    .line 167
    goto :goto_5

    .line 168
    :cond_7
    const/4 v2, 0x0

    .line 169
    const/4 v9, 0x0

    .line 170
    goto :goto_4

    .line 171
    :goto_5
    new-instance v0, Lua7;

    .line 172
    .line 173
    move-object/from16 v16, v6

    .line 174
    .line 175
    move-object v6, v2

    .line 176
    move-object v2, v3

    .line 177
    move-object v3, v4

    .line 178
    move-object/from16 v4, v16

    .line 179
    .line 180
    move/from16 v16, v9

    .line 181
    .line 182
    move v9, v7

    .line 183
    move/from16 v7, v16

    .line 184
    .line 185
    const/16 v16, -0x1

    .line 186
    .line 187
    invoke-direct/range {v0 .. v9}, Lua7;-><init>(Lva7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    iget-object v3, v1, Lva7;->d:Landroid/util/ArrayMap;

    .line 191
    .line 192
    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_8
    move v15, v0

    .line 197
    move/from16 v16, v2

    .line 198
    .line 199
    :goto_6
    move v0, v15

    .line 200
    move/from16 v2, v16

    .line 201
    .line 202
    :cond_9
    const/4 v15, 0x0

    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 206
    .line 207
    const-string v1, "Missing attribute version"

    .line 208
    .line 209
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_b
    const-string v2, "namespaceHashes"

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    .line 221
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    :cond_c
    :goto_7
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eq v2, v12, :cond_0

    .line 230
    .line 231
    if-ne v2, v13, :cond_d

    .line 232
    .line 233
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-le v3, v0, :cond_0

    .line 238
    .line 239
    :cond_d
    if-eq v2, v13, :cond_c

    .line 240
    .line 241
    if-ne v2, v14, :cond_e

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_e
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const-string v3, "namespaceHash"

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_c

    .line 255
    .line 256
    const-string v2, "namespace"

    .line 257
    .line 258
    const/4 v3, 0x0

    .line 259
    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    const-string v4, "bannedHash"

    .line 264
    .line 265
    invoke-interface {v10, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    iget-object v5, v1, Lva7;->e:Landroid/util/ArrayMap;

    .line 270
    .line 271
    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_f
    return-void
.end method
