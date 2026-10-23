.class public final Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMetadata"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final role:Ljava/lang/String;

.field private final sha256:Ljava/lang/String;

.field private final sizeBytes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 16
    .line 17
    iput-wide p3, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 18
    .line 19
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    iget-wide p3, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p6, p6, 0x8

    .line 20
    .line 21
    if-eqz p6, :cond_3

    .line 22
    .line 23
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    move-object p7, p5

    .line 26
    move-wide p5, p3

    .line 27
    move-object p3, p1

    .line 28
    move-object p4, p2

    .line 29
    move-object p2, p0

    .line 30
    invoke-virtual/range {p2 .. p7}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;

    .line 11
    .line 12
    invoke-direct/range {p0 .. p5}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 36
    .line 37
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSha256()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSizeBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->role:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sizeBytes:J

    .line 6
    .line 7
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata$FileMetadata;->sha256:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, ", role="

    .line 10
    .line 11
    const-string v5, ", sizeBytes="

    .line 12
    .line 13
    const-string v6, "FileMetadata(name="

    .line 14
    .line 15
    invoke-static {v6, v0, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", sha256="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ")"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
