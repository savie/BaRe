.class public Lnw3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnw3$a;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "GetObjectAttributesOutput"
    strict = false
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ETag"
        required = false
    .end annotation
.end field

.field private b:La61;
    .annotation runtime Lat2;
        name = "Checksum"
        required = false
    .end annotation
.end field

.field private c:Lnw3$a;
    .annotation runtime Lat2;
        name = "ObjectParts"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "StorageClass"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "ObjectSize"
        required = false
    .end annotation
.end field

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/time/ZonedDateTime;

.field private h:Ljava/lang/String;


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
.method public a()La61;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->b:La61;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->f:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/time/ZonedDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->g:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Lnw3$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->c:Lnw3$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public f()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->e:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnw3;->f:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public h(Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnw3;->g:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnw3;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lnw3;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lnw3;->b:La61;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lnw3;->c:Lnw3$a;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lnw3;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lnw3;->e:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lnw3;->f:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lnw3;->g:Ljava/time/ZonedDateTime;

    .line 38
    .line 39
    invoke-static {v6}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object p0, p0, Lnw3;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v7, ", checksum="

    .line 50
    .line 51
    const-string v8, ", objectParts="

    .line 52
    .line 53
    const-string v9, "GetObjectAttributesOutput{etag="

    .line 54
    .line 55
    invoke-static {v9, v0, v7, v1, v8}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, ", storageClass="

    .line 60
    .line 61
    const-string v7, ", objectSize="

    .line 62
    .line 63
    invoke-static {v0, v2, v1, v3, v7}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, ", deleteMarker="

    .line 67
    .line 68
    const-string v2, ", lastModified="

    .line 69
    .line 70
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, ", versionId="

    .line 74
    .line 75
    const-string v2, "}"

    .line 76
    .line 77
    invoke-static {v0, v6, v1, p0, v2}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
