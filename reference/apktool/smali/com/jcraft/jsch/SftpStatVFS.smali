.class public Lcom/jcraft/jsch/SftpStatVFS;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 6

    .line 1
    new-instance v0, Lcom/jcraft/jsch/SftpStatVFS;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->a:J

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->b:J

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->c:J

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->d:J

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->e:J

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->f:J

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->g:J

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->h:J

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->i:J

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    long-to-int v1, v1

    .line 65
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    iput-wide v2, v0, Lcom/jcraft/jsch/SftpStatVFS;->k:J

    .line 70
    .line 71
    and-int/lit8 p0, v1, 0x1

    .line 72
    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .line 75
    if-eqz p0, :cond_0

    .line 76
    .line 77
    const-wide/16 v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move-wide v4, v2

    .line 81
    :goto_0
    iput-wide v4, v0, Lcom/jcraft/jsch/SftpStatVFS;->j:J

    .line 82
    .line 83
    and-int/lit8 p0, v1, 0x2

    .line 84
    .line 85
    if-eqz p0, :cond_1

    .line 86
    .line 87
    const-wide/16 v2, 0x2

    .line 88
    .line 89
    :cond_1
    or-long v1, v4, v2

    .line 90
    .line 91
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->j:J

    .line 92
    .line 93
    return-object v0
.end method


# virtual methods
.method public final getAvail()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/jcraft/jsch/SftpStatVFS;->d:J

    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x400

    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getAvailBlocks()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAvailForNonRoot()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/jcraft/jsch/SftpStatVFS;->e:J

    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x400

    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getAvailINodes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBlockSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBlocks()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCapacity()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->c:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/jcraft/jsch/SftpStatVFS;->d:J

    .line 4
    .line 5
    sub-long v2, v0, v2

    .line 6
    .line 7
    const-wide/16 v4, 0x64

    .line 8
    .line 9
    mul-long/2addr v2, v4

    .line 10
    div-long/2addr v2, v0

    .line 11
    long-to-int p0, v2

    .line 12
    return p0
.end method

.method public final getFileSystemID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFragmentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFreeBlocks()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFreeINodes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getINodes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMaximumFilenameLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMountFlag()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSize()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/jcraft/jsch/SftpStatVFS;->c:J

    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x400

    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getUsed()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/jcraft/jsch/SftpStatVFS;->c:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/jcraft/jsch/SftpStatVFS;->d:J

    .line 6
    .line 7
    sub-long/2addr v2, v4

    .line 8
    mul-long/2addr v2, v0

    .line 9
    const-wide/16 v0, 0x400

    .line 10
    .line 11
    div-long/2addr v2, v0

    .line 12
    return-wide v2
.end method
