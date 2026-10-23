.class public Ldy4;
.super Ldm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ListPartsResult"
    strict = false
.end annotation


# instance fields
.field private f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Bucket"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Key"
    .end annotation
.end field

.field private h:Lgc4;
    .annotation runtime Lat2;
        name = "Initiator"
    .end annotation
.end field

.field private i:Lkv5;
    .annotation runtime Lat2;
        name = "Owner"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "StorageClass"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "UploadId"
        required = false
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumAlgorithm"
        required = false
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumType"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldm0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i()Lgc4;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->h:Lgc4;

    .line 2
    .line 3
    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k()Lkv5;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->i:Lkv5;

    .line 2
    .line 3
    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy4;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Ldy4;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ldy4;->g:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Ldy4;->h:Lgc4;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Ldy4;->i:Lkv5;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Ldy4;->j:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Ldy4;->k:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Ldy4;->l:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v6}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, p0, Ldy4;->m:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v7}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-super {p0}, Ldm0;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v8, ", objectName="

    .line 54
    .line 55
    const-string v9, ", initiator="

    .line 56
    .line 57
    const-string v10, "ListPartsResult{bucketName="

    .line 58
    .line 59
    invoke-static {v10, v0, v8, v1, v9}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, ", owner="

    .line 64
    .line 65
    const-string v8, ", storageClass="

    .line 66
    .line 67
    invoke-static {v0, v2, v1, v3, v8}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, ", uploadId="

    .line 71
    .line 72
    const-string v2, ", checksumAlgorithm="

    .line 73
    .line 74
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, ", checksumType="

    .line 78
    .line 79
    const-string v2, ", "

    .line 80
    .line 81
    invoke-static {v0, v6, v1, v7, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "}"

    .line 85
    .line 86
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
