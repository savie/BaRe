.class public Lnw3$a;
.super Ldm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lno6;
    name = "ObjectParts"
    strict = false
.end annotation


# instance fields
.field private f:Ljava/lang/Integer;
    .annotation runtime Lat2;
        name = "PartsCount"
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
.method public f()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lnw3$a;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lnw3$a;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0}, Ldm0;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    const-string v2, "}"

    .line 14
    .line 15
    const-string v3, "ObjectParts{partsCount="

    .line 16
    .line 17
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
