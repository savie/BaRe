.class final Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final blake3:Ljava/lang/String;

.field private final creation:J

.field private final hash:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final lastModified:J

.field private final mime:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 14
    .line 15
    iput-wide p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 16
    .line 17
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 20
    .line 21
    iput-wide p6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 22
    .line 23
    iput-wide p8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 24
    .line 25
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x40

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p10, v0

    :cond_0
    and-int/lit16 p12, p12, 0x80

    if-eqz p12, :cond_1

    move-object p11, v0

    .line 30
    :cond_1
    invoke-direct/range {p0 .. p11}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;
    .locals 0

    .line 1
    and-int/lit8 p13, p12, 0x1

    .line 2
    .line 3
    if-eqz p13, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p13, p12, 0x2

    .line 8
    .line 9
    if-eqz p13, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p13, p12, 0x4

    .line 14
    .line 15
    if-eqz p13, :cond_2

    .line 16
    .line 17
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 20
    .line 21
    if-eqz p13, :cond_3

    .line 22
    .line 23
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 26
    .line 27
    if-eqz p13, :cond_4

    .line 28
    .line 29
    iget-wide p6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p13, p12, 0x20

    .line 32
    .line 33
    if-eqz p13, :cond_5

    .line 34
    .line 35
    iget-wide p8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p13, p12, 0x40

    .line 38
    .line 39
    if-eqz p13, :cond_6

    .line 40
    .line 41
    iget-object p10, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p12, p12, 0x80

    .line 44
    .line 45
    if-eqz p12, :cond_7

    .line 46
    .line 47
    iget-object p11, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 48
    .line 49
    :cond_7
    move-object p12, p10

    .line 50
    move-object p13, p11

    .line 51
    move-wide p10, p8

    .line 52
    move-wide p8, p6

    .line 53
    move-object p6, p4

    .line 54
    move-object p7, p5

    .line 55
    move-wide p4, p2

    .line 56
    move-object p2, p0

    .line 57
    move-object p3, p1

    .line 58
    invoke-virtual/range {p2 .. p13}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;

    .line 11
    .line 12
    invoke-direct/range {p0 .. p11}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 25
    .line 26
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 56
    .line 57
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 58
    .line 59
    cmp-long v1, v3, v5

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 65
    .line 66
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 67
    .line 68
    cmp-long v1, v3, v5

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    return v2

    .line 73
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_9

    .line 93
    .line 94
    return v2

    .line 95
    :cond_9
    return v0
.end method

.method public final getBlake3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCreation()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLastModified()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMime()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 35
    .line 36
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    move v2, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_0
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 54
    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :goto_1
    add-int/2addr v0, v3

    .line 63
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->size:J

    .line 4
    .line 5
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->mime:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->key:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->lastModified:J

    .line 10
    .line 11
    iget-wide v7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->creation:J

    .line 12
    .line 13
    iget-object v9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->blake3:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->hash:Ljava/lang/String;

    .line 16
    .line 17
    const-string v10, "FileMetadata(name="

    .line 18
    .line 19
    const-string v11, ", size="

    .line 20
    .line 21
    invoke-static {v10, v0, v1, v2, v11}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, ", mime="

    .line 26
    .line 27
    const-string v2, ", key="

    .line 28
    .line 29
    invoke-static {v0, v1, v3, v2, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, ", lastModified="

    .line 33
    .line 34
    const-string v2, ", creation="

    .line 35
    .line 36
    invoke-static {v0, v1, v5, v6, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", blake3="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", hash="

    .line 51
    .line 52
    const-string v2, ")"

    .line 53
    .line 54
    invoke-static {v0, v1, p0, v2}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
