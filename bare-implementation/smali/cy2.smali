.class public Lcy2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ErrorResponse"
    strict = false
.end annotation


# static fields
.field private static final n:J = 0x1a707ec87e00a98fL


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Code"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Message"
        required = false
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "BucketName"
        required = false
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Key"
        required = false
    .end annotation
.end field

.field protected e:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Resource"
        required = false
    .end annotation
.end field

.field protected f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "RequestId"
        required = false
    .end annotation
.end field

.field protected k:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "HostId"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Code"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Message"
            required = false
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "BucketName"
            required = false
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Key"
            required = false
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Resource"
            required = false
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "RequestId"
            required = false
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "HostId"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcy2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcy2;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcy2;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcy2;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcy2;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcy2;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcy2;->k:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy2;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy2;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy2;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy2;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy2;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy2;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy2;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcy2;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcy2;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcy2;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcy2;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcy2;->e:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcy2;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object p0, p0, Lcy2;->k:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v6, ", message="

    .line 44
    .line 45
    const-string v7, ", bucketName="

    .line 46
    .line 47
    const-string v8, "code="

    .line 48
    .line 49
    invoke-static {v8, v0, v6, v1, v7}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, ", objectName="

    .line 54
    .line 55
    const-string v6, ", resource="

    .line 56
    .line 57
    invoke-static {v0, v2, v1, v3, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, ", requestId="

    .line 61
    .line 62
    const-string v2, ", hostId="

    .line 63
    .line 64
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcy2;->h()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "ErrorResponse{"

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
