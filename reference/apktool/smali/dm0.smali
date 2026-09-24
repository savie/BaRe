.class public abstract Ldm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lno6;
    name = "BasePartsResult"
    strict = false
.end annotation


# instance fields
.field private a:Z
    .annotation runtime Lat2;
        name = "IsTruncated"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation runtime Lat2;
        name = "MaxParts"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/Integer;
    .annotation runtime Lat2;
        name = "NextPartNumberMarker"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation runtime Lat2;
        name = "PartNumberMarker"
        required = false
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgx5;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "Part"
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
.method public a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldm0;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public b()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Ldm0;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Ldm0;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Ldm0;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgx5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ldm0;->e:Ljava/util/List;

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
    .locals 7

    .line 1
    iget-boolean v0, p0, Ldm0;->a:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    iget-object v1, p0, Ldm0;->b:Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Ldm0;->c:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Ldm0;->d:Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object p0, p0, Ldm0;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v4, ", maxParts="

    .line 36
    .line 37
    const-string v5, ", nextPartNumberMarker="

    .line 38
    .line 39
    const-string v6, "isTruncated="

    .line 40
    .line 41
    invoke-static {v6, v0, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, ", partNumberMarker="

    .line 46
    .line 47
    const-string v4, ", parts="

    .line 48
    .line 49
    invoke-static {v0, v2, v1, v3, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
