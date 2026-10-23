.class public Lgx5;
.super La61;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lno6;
    name = "Part"
    strict = false
.end annotation


# instance fields
.field private g:I
    .annotation runtime Lat2;
        name = "PartNumber"
        required = false
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ETag"
        required = false
    .end annotation
.end field

.field private i:Lh38$a;
    .annotation runtime Lat2;
        name = "LastModified"
        required = false
    .end annotation
.end field

.field private j:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "Size"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, La61;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, La61;-><init>()V

    .line 17
    iput p1, p0, Lgx5;->g:I

    .line 18
    iput-object p2, p0, Lgx5;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p3

    .line 4
    move-object v2, p4

    .line 5
    move-object v3, p5

    .line 6
    move-object v4, p6

    .line 7
    move-object v5, p7

    .line 8
    invoke-direct/range {v0 .. v6}, La61;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput p1, v0, Lgx5;->g:I

    .line 12
    .line 13
    iput-object p2, v0, Lgx5;->h:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lrw1;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, La61;-><init>(La61;)V

    .line 21
    invoke-virtual {p1}, Lqw1;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgx5;->h:Ljava/lang/String;

    .line 22
    iput p2, p0, Lgx5;->g:I

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lgx5;->h:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "\""

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public k()Ljava/time/ZonedDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lgx5;->i:Lh38$a;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lh38$a;->b()Ljava/time/ZonedDateTime;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public l()I
    .locals 0

    .line 1
    iget p0, p0, Lgx5;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public m()J
    .locals 2

    .line 1
    iget-object p0, p0, Lgx5;->j:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lgx5;->g:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lgx5;->h:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lgx5;->i:Lh38$a;

    .line 18
    .line 19
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lgx5;->j:Ljava/lang/Long;

    .line 24
    .line 25
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-super {p0}, La61;->i()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v4, ", etag="

    .line 34
    .line 35
    const-string v5, ", lastModified="

    .line 36
    .line 37
    const-string v6, "Part{partNumber="

    .line 38
    .line 39
    invoke-static {v6, v0, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, ", size="

    .line 44
    .line 45
    const-string v4, ", "

    .line 46
    .line 47
    invoke-static {v0, v2, v1, v3, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "}"

    .line 51
    .line 52
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
