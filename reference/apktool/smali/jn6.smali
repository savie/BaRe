.class public Ljn6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "Retention"
    strict = false
.end annotation


# instance fields
.field private a:Lkn6;
    .annotation runtime Lat2;
        name = "Mode"
        required = false
    .end annotation
.end field

.field private b:Lh38$a;
    .annotation runtime Lat2;
        name = "RetainUntilDate"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkn6;Ljava/time/ZonedDateTime;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Ljn6;->a:Lkn6;

    .line 10
    .line 11
    new-instance p1, Lh38$a;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lh38$a;-><init>(Ljava/time/ZonedDateTime;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ljn6;->b:Lh38$a;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "null retainUntilDate is not allowed"

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    const-string p0, "null mode is not allowed"

    .line 26
    .line 27
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method


# virtual methods
.method public a()Lkn6;
    .locals 0

    .line 1
    iget-object p0, p0, Ljn6;->a:Lkn6;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/time/ZonedDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Ljn6;->b:Lh38$a;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lh38$a;->b()Ljava/time/ZonedDateTime;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ljn6;->a:Lkn6;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Ljn6;->b:Lh38$a;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ", retainUntilDate="

    .line 14
    .line 15
    const-string v2, "}"

    .line 16
    .line 17
    const-string v3, "Retention{mode="

    .line 18
    .line 19
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
