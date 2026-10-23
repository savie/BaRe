.class public Lox4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lox4$a;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ListMultipartUploadsResult"
    strict = false
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Bucket"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "EncodingType"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "KeyMarker"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "UploadIdMarker"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "NextKeyMarker"
        required = false
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "NextUploadIdMarker"
        required = false
    .end annotation
.end field

.field private g:I
    .annotation runtime Lat2;
        name = "MaxUploads"
    .end annotation
.end field

.field private h:Z
    .annotation runtime Lat2;
        name = "IsTruncated"
        required = false
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lox4$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "Upload"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lox4;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lox4;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lox4;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lox4;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lox4;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lki8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public e()I
    .locals 0

    .line 1
    iget p0, p0, Lox4;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lox4;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lox4;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lki8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lox4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lox4;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lox4$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lox4;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Lki8;->f(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lox4;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lox4;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lox4;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lox4;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lox4;->e:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lox4;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget v6, p0, Lox4;->g:I

    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v6}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-boolean v7, p0, Lox4;->h:Z

    .line 48
    .line 49
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v7}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    iget-object p0, p0, Lox4;->i:Ljava/util/List;

    .line 58
    .line 59
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v8, ", encodingType="

    .line 64
    .line 65
    const-string v9, ", keyMarker="

    .line 66
    .line 67
    const-string v10, "ListMultipartUploadsResult{bucketName="

    .line 68
    .line 69
    invoke-static {v10, v0, v8, v1, v9}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, ", uploadIdMarker="

    .line 74
    .line 75
    const-string v8, ", nextKeyMarker="

    .line 76
    .line 77
    invoke-static {v0, v2, v1, v3, v8}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, ", nextUploadIdMarker="

    .line 81
    .line 82
    const-string v2, ", maxUploads="

    .line 83
    .line 84
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, ", isTruncated="

    .line 88
    .line 89
    const-string v2, ", uploads="

    .line 90
    .line 91
    invoke-static {v0, v6, v1, v7, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v1, "}"

    .line 95
    .line 96
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
