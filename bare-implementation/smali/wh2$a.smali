.class public Lwh2$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lno6;
    name = "Deleted"
    strict = false
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Key"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "VersionId"
        required = false
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lat2;
        name = "DeleteMarker"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "DeleteMarkerVersionId"
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
    iget-boolean p0, p0, Lwh2$a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwh2$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwh2$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwh2$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lwh2$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lwh2$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Lwh2$a;->c:Z

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object p0, p0, Lwh2$a;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v3, ", versionId="

    .line 30
    .line 31
    const-string v4, ", deleteMarker="

    .line 32
    .line 33
    const-string v5, "Deleted{name="

    .line 34
    .line 35
    invoke-static {v5, v0, v3, v1, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, ", deleteMarkerVersionId="

    .line 40
    .line 41
    const-string v3, "}"

    .line 42
    .line 43
    invoke-static {v0, v2, v1, p0, v3}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
