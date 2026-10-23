.class public Lpy4;
.super Lxx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpy4$a;,
        Lpy4$b;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ListVersionsResult"
    strict = false
.end annotation


# instance fields
.field private i:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "KeyMarker"
        required = false
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "NextKeyMarker"
        required = false
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "VersionIdMarker"
        required = false
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "NextVersionIdMarker"
        required = false
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpy4$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "Version"
        required = false
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpy4$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "DeleteMarker"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxx4;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpy4$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lpy4;->m:Ljava/util/List;

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

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpy4$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lpy4;->n:Ljava/util/List;

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

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpy4;->i:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxx4;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lki8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpy4;->j:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxx4;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lki8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpy4;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpy4;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-super {p0}, Lxx4;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lpy4;->i:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lpy4;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lpy4;->k:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lpy4;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v5, p0, Lpy4;->m:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-object p0, p0, Lpy4;->n:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v6, ", keyMarker="

    .line 42
    .line 43
    const-string v7, ", nextKeyMarker="

    .line 44
    .line 45
    const-string v8, "ListVersionsResult{"

    .line 46
    .line 47
    invoke-static {v8, v0, v6, v1, v7}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, ", versionIdMarker="

    .line 52
    .line 53
    const-string v6, ", nextVersionIdMarker="

    .line 54
    .line 55
    invoke-static {v0, v2, v1, v3, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, ", contents="

    .line 59
    .line 60
    const-string v2, ", deleteMarkers="

    .line 61
    .line 62
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "}"

    .line 66
    .line 67
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
