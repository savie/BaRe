.class public final Lorg/swiftapps/swiftbackup/folders/data/BackupStats;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final duration:Ljava/time/Duration;

.field private final filesAdded:I

.field private final filesDeleted:I

.field private final filesModified:I

.field private final filesScanned:I

.field private final totalBytes:J


# direct methods
.method public constructor <init>(IIIIJLjava/time/Duration;)V
    .locals 0

    .line 1
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 8
    .line 9
    iput p2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 10
    .line 11
    iput p3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 12
    .line 13
    iput p4, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 14
    .line 15
    iput-wide p5, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 16
    .line 17
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/BackupStats;IIIIJLjava/time/Duration;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/BackupStats;
    .locals 0

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 14
    .line 15
    if-eqz p9, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 20
    .line 21
    if-eqz p9, :cond_3

    .line 22
    .line 23
    iget p4, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 26
    .line 27
    if-eqz p9, :cond_4

    .line 28
    .line 29
    iget-wide p5, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p8, p8, 0x20

    .line 32
    .line 33
    if-eqz p8, :cond_5

    .line 34
    .line 35
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 36
    .line 37
    :cond_5
    move-object p9, p7

    .line 38
    move-wide p7, p5

    .line 39
    move p5, p3

    .line 40
    move p6, p4

    .line 41
    move p3, p1

    .line 42
    move p4, p2

    .line 43
    move-object p2, p0

    .line 44
    invoke-virtual/range {p2 .. p9}, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->copy(IIIIJLjava/time/Duration;)Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 2
    .line 3
    return p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 2
    .line 3
    return p0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()Ljava/time/Duration;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(IIIIJLjava/time/Duration;)Lorg/swiftapps/swiftbackup/folders/data/BackupStats;
    .locals 0

    .line 1
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 5
    .line 6
    invoke-direct/range {p0 .. p7}, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;-><init>(IIIIJLjava/time/Duration;)V

    .line 7
    .line 8
    .line 9
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 21
    .line 22
    iget v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 28
    .line 29
    iget v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 35
    .line 36
    iget v3, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 42
    .line 43
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 44
    .line 45
    cmp-long v1, v3, v5

    .line 46
    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    return v2

    .line 50
    :cond_6
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 51
    .line 52
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_7

    .line 59
    .line 60
    return v2

    .line 61
    :cond_7
    return v0
.end method

.method public final getDuration()Ljava/time/Duration;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFilesAdded()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFilesDeleted()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFilesModified()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFilesScanned()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/time/Duration;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v0

    .line 41
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesScanned:I

    .line 2
    .line 3
    iget v1, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesAdded:I

    .line 4
    .line 5
    iget v2, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesModified:I

    .line 6
    .line 7
    iget v3, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->filesDeleted:I

    .line 8
    .line 9
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->totalBytes:J

    .line 10
    .line 11
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/data/BackupStats;->duration:Ljava/time/Duration;

    .line 12
    .line 13
    const-string v6, ", filesAdded="

    .line 14
    .line 15
    const-string v7, ", filesModified="

    .line 16
    .line 17
    const-string v8, "BackupStats(filesScanned="

    .line 18
    .line 19
    invoke-static {v8, v0, v6, v7, v1}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ", filesDeleted="

    .line 24
    .line 25
    const-string v6, ", totalBytes="

    .line 26
    .line 27
    invoke-static {v0, v2, v1, v3, v6}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", duration="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, ")"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
