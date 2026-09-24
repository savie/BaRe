.class public final Lorg/swiftapps/swiftbackup/settings/i;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

.field public final b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

.field public final c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

.field public final d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

.field public final e:Lgv7;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;)V
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 19
    .line 20
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 21
    .line 22
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/settings/i;->d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 23
    .line 24
    new-instance p1, Lqb5;

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    invoke-direct {p1, p0, p2}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lgv7;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/settings/i;->e:Lgv7;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Lorg/swiftapps/swiftbackup/settings/i;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;I)Lorg/swiftapps/swiftbackup/settings/i;
    .locals 1

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p5, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 v0, p5, 0x4

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/settings/i;->d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lorg/swiftapps/swiftbackup/settings/i;

    .line 38
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/settings/i;-><init>(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/settings/i;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/i;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/i;->d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 47
    .line 48
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/settings/i;->d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 49
    .line 50
    if-eq p0, p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/i;->d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/2addr p0, v0

    .line 34
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(singleBackupStrategy="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->a:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", datedBackupStrategy="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", conditionalBackupStrategy="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/i;->c:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", selectedType="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/i;->d:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
