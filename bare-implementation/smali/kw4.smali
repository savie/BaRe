.class public Lkw4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkw4$a;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ListAllMyBucketsResult"
    strict = false
.end annotation


# instance fields
.field private a:Lkv5;
    .annotation runtime Lat2;
        name = "Owner"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkw4$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        name = "Buckets"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Prefix"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ContinuationToken"
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
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkw4$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lkw4;->b:Ljava/util/List;

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

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkw4;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Lkv5;
    .locals 0

    .line 1
    iget-object p0, p0, Lkw4;->a:Lkv5;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkw4;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lkw4;->a:Lkv5;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lkw4;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lkw4;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lkw4;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v3, ", buckets="

    .line 26
    .line 27
    const-string v4, ", prefix="

    .line 28
    .line 29
    const-string v5, "ListAllMyBucketsResult{owner="

    .line 30
    .line 31
    invoke-static {v5, v0, v3, v1, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, ", continuationToken="

    .line 36
    .line 37
    const-string v3, "}"

    .line 38
    .line 39
    invoke-static {v0, v2, v1, p0, v3}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
