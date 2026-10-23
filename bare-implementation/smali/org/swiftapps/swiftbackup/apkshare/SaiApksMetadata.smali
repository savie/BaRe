.class public final Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final label:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "label"
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "package"
    .end annotation
.end field

.field private final splitApks:Z
    .annotation runtime Ly77;
        value = "split_apks"
    .end annotation
.end field

.field private final versionCode:Ljava/lang/Long;
    .annotation runtime Ly77;
        value = "version_code"
    .end annotation
.end field

.field private final versionName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "version_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 17
    .line 18
    iput-boolean p5, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 20
    .line 21
    if-eqz p7, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 26
    .line 27
    if-eqz p6, :cond_4

    .line 28
    .line 29
    iget-boolean p5, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 30
    .line 31
    :cond_4
    move-object p6, p4

    .line 32
    move p7, p5

    .line 33
    move-object p4, p2

    .line 34
    move-object p5, p3

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    invoke-virtual/range {p2 .. p7}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 2
    .line 3
    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;
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
    new-instance p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p5}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 58
    .line 59
    iget-boolean p1, p1, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 60
    .line 61
    if-eq p0, p1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitApks()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_1
    add-int/2addr v0, v3

    .line 39
    mul-int/2addr v0, v1

    .line 40
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/2addr p0, v0

    .line 47
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->label:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->versionCode:Ljava/lang/Long;

    .line 8
    .line 9
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->splitApks:Z

    .line 10
    .line 11
    const-string v4, ", label="

    .line 12
    .line 13
    const-string v5, ", versionName="

    .line 14
    .line 15
    const-string v6, "SaiApksMetadata(packageName="

    .line 16
    .line 17
    invoke-static {v6, v0, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", versionCode="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", splitApks="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ")"

    .line 38
    .line 39
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
