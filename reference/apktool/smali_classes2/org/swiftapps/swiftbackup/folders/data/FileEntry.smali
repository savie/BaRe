.class public final Lorg/swiftapps/swiftbackup/folders/data/FileEntry;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mtime:J

.field private final size:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 5
    .line 6
    iput-wide p3, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/folders/data/FileEntry;JJILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FileEntry;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-wide p3, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->copy(JJ)Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(JJ)Lorg/swiftapps/swiftbackup/folders/data/FileEntry;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

    .line 23
    .line 24
    iget-wide p0, p1, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

    .line 25
    .line 26
    cmp-long p0, v3, p0

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getMtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

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
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->size:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->mtime:J

    .line 4
    .line 5
    const-string p0, "FileEntry(size="

    .line 6
    .line 7
    const-string v4, ", mtime="

    .line 8
    .line 9
    invoke-static {p0, v4, v0, v1}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, ")"

    .line 14
    .line 15
    invoke-static {v2, v3, v0, p0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
