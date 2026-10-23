.class public Lin1;
.super La61;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "CompleteMultipartUploadResult"
.end annotation


# instance fields
.field private g:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Location"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Bucket"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Key"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ETag"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La61;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lin1;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lin1;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lin1;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lin1;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lin1;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lin1;->h:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lin1;->i:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lin1;->j:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-super {p0}, La61;->i()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v4, ", bucket="

    .line 30
    .line 31
    const-string v5, ", object="

    .line 32
    .line 33
    const-string v6, "CompleteMultipartUploadResult{location="

    .line 34
    .line 35
    invoke-static {v6, v0, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, ", etag="

    .line 40
    .line 41
    const-string v4, ", "

    .line 42
    .line 43
    invoke-static {v0, v2, v1, v3, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "}"

    .line 47
    .line 48
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
