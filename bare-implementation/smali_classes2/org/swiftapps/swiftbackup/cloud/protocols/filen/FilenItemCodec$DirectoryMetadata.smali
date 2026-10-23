.class final Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final creation:J

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;Ljava/lang/String;JILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->copy(Ljava/lang/String;J)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;-><init>(Ljava/lang/String;J)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

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
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 25
    .line 26
    iget-wide p0, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 27
    .line 28
    cmp-long p0, v3, p0

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    return v0
.end method

.method public final getCreation()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->creation:J

    .line 4
    .line 5
    const-string p0, "DirectoryMetadata(name="

    .line 6
    .line 7
    const-string v3, ", creation="

    .line 8
    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, ")"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
