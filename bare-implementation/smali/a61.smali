.class public La61;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lno6;
    name = "Checksum"
    strict = false
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumCRC32"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumCRC32C"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumCRC64NVME"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumSHA1"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumSHA256"
        required = false
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumType"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La61;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, La61;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, La61;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, La61;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, La61;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, La61;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, La61;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p1, La61;->d:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, La61;->d:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p1, La61;->e:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, La61;->e:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, La61;->f:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, La61;->f:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ChecksumCRC32"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ChecksumCRC32C"
            required = false
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ChecksumCRC64NVME"
            required = false
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ChecksumSHA1"
            required = false
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ChecksumSHA256"
            required = false
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ChecksumType"
            required = false
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, La61;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, La61;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, La61;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, La61;->d:Ljava/lang/String;

    .line 34
    iput-object p5, p0, La61;->e:Ljava/lang/String;

    .line 35
    iput-object p6, p0, La61;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lv64$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "x-amz-checksum-algorithm-"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0, p3}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p0, "x-amz-checksum-algorithm"

    .line 28
    .line 29
    invoke-virtual {p1, p0, p2}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, La61;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, La61;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, La61;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, La61;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, La61;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, La61;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()Lv64$c;
    .locals 3

    .line 1
    new-instance v0, Lv64$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lv64$c;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "crc32"

    .line 7
    .line 8
    iget-object v2, p0, La61;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2}, La61;->a(Lv64$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "crc32c"

    .line 14
    .line 15
    iget-object v2, p0, La61;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1, v2}, La61;->a(Lv64$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "crc64nvme"

    .line 21
    .line 22
    iget-object v2, p0, La61;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1, v2}, La61;->a(Lv64$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "sha1"

    .line 28
    .line 29
    iget-object v2, p0, La61;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v0, v1, v2}, La61;->a(Lv64$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "sha256"

    .line 35
    .line 36
    iget-object v2, p0, La61;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p0, v0, v1, v2}, La61;->a(Lv64$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, La61;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, La61;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, La61;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, La61;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, La61;->e:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object p0, p0, La61;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v5, ", checksumCRC32C="

    .line 38
    .line 39
    const-string v6, ", checksumCRC64NVME="

    .line 40
    .line 41
    const-string v7, "checksumCRC32="

    .line 42
    .line 43
    invoke-static {v7, v0, v5, v1, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, ", checksumSHA1="

    .line 48
    .line 49
    const-string v5, ", checksumSHA256="

    .line 50
    .line 51
    invoke-static {v0, v2, v1, v3, v5}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, ", checksumType="

    .line 55
    .line 56
    invoke-static {v0, v4, v1, p0}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, La61;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Checksum{"

    .line 6
    .line 7
    const-string v1, "}"

    .line 8
    .line 9
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
