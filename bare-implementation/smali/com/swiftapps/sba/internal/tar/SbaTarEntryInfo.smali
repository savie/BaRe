.class public final Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final Companion:Ly17;

.field public static final TYPE_BLOCK:I = 0x7

.field public static final TYPE_CHARACTER:I = 0x6

.field public static final TYPE_DIRECTORY:I = 0x2

.field public static final TYPE_FIFO:I = 0x5

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_HARDLINK:I = 0x4

.field public static final TYPE_OTHER:I = 0x63

.field public static final TYPE_SYMLINK:I = 0x3


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Z

.field public final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly17;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->Companion:Ly17;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IJJJZ[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput p4, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->d:I

    .line 17
    .line 18
    iput-wide p5, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->e:J

    .line 19
    .line 20
    iput-wide p7, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->f:J

    .line 21
    .line 22
    iput-wide p9, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->g:J

    .line 23
    .line 24
    iput-boolean p11, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->h:Z

    .line 25
    .line 26
    array-length p1, p12

    .line 27
    invoke-static {p12, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->i:[Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 22
    .line 23
    iget v1, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->d:I

    .line 38
    .line 39
    iget v1, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->d:I

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    iget-wide v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->e:J

    .line 44
    .line 45
    iget-wide v2, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->e:J

    .line 46
    .line 47
    cmp-long v0, v0, v2

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-wide v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->f:J

    .line 52
    .line 53
    iget-wide v2, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->f:J

    .line 54
    .line 55
    cmp-long v0, v0, v2

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-wide v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->g:J

    .line 60
    .line 61
    iget-wide v2, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->g:J

    .line 62
    .line 63
    cmp-long v0, v0, v2

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->h:Z

    .line 68
    .line 69
    iget-boolean v1, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->h:Z

    .line 70
    .line 71
    if-ne v0, v1, :cond_2

    .line 72
    .line 73
    iget-object p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->i:[Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->i:[Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    :goto_0
    const/4 p0, 0x1

    .line 84
    return p0

    .line 85
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 86
    return p0
.end method

.method public final getEntryType()Lb27;
    .locals 1

    .line 1
    sget-object v0, Lb27;->Companion:La27;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p0, Lb27;->Other:Lb27;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    sget-object p0, Lb27;->BlockDevice:Lb27;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_1
    sget-object p0, Lb27;->CharacterDevice:Lb27;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_2
    sget-object p0, Lb27;->Fifo:Lb27;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_3
    sget-object p0, Lb27;->Hardlink:Lb27;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_4
    sget-object p0, Lb27;->SymbolicLink:Lb27;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_5
    sget-object p0, Lb27;->Directory:Lb27;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_6
    sget-object p0, Lb27;->File:Lb27;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLinkName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMtimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRealSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSparse()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final getXattrNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->i:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, [Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->a:Ljava/lang/String;

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
    iget v2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 11
    .line 12
    add-int/2addr v0, v2

    .line 13
    mul-int/2addr v0, v1

    .line 14
    iget-object v2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    add-int/2addr v0, v2

    .line 25
    mul-int/2addr v0, v1

    .line 26
    iget v2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->d:I

    .line 27
    .line 28
    add-int/2addr v0, v2

    .line 29
    mul-int/2addr v0, v1

    .line 30
    iget-wide v2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->e:J

    .line 31
    .line 32
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-wide v2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->f:J

    .line 37
    .line 38
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-wide v2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->g:J

    .line 43
    .line 44
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-boolean v2, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->h:Z

    .line 49
    .line 50
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->i:[Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    add-int/2addr v0, p0

    .line 61
    return v0
.end method

.method public final isDirectory()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final isFile()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final isHardlink()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final isSymbolicLink()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->getEntryType()Lb27;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->i:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "SbaTarEntryInfo(name="

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ", type="

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v3, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->b:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, ", entryType="

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", linkName="

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", mode="

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->d:I

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", size="

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v3, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->e:J

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", realSize="

    .line 75
    .line 76
    const-string v3, ", mtimeMs="

    .line 77
    .line 78
    iget-wide v4, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->f:J

    .line 79
    .line 80
    invoke-static {v2, v0, v4, v5, v3}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-wide v3, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->g:J

    .line 84
    .line 85
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", sparse="

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean p0, p0, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;->h:Z

    .line 94
    .line 95
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ", xattrNames="

    .line 99
    .line 100
    const-string v0, ")"

    .line 101
    .line 102
    invoke-static {v2, p0, v1, v0}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method
