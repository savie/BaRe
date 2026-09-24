.class public Lwt4$g;
.super Lwt4$b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation runtime Lno6;
    name = "Transition"
.end annotation


# instance fields
.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "StorageClass"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh38$a;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lh38$a;
        .annotation runtime Lat2;
            name = "Date"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lat2;
            name = "Days"
            required = false
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "StorageClass"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lwt4$b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move v0, v1

    .line 14
    :cond_1
    xor-int/2addr v0, v2

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iput-object p1, p0, Lwt4$b;->a:Lh38$a;

    .line 19
    .line 20
    iput-object p2, p0, Lwt4$b;->b:Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    iput-object p3, p0, Lwt4$g;->c:Ljava/lang/String;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const-string p0, "StorageClass must be provided"

    .line 34
    .line 35
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_3
    const-string p0, "Only one of date or days must be set"

    .line 40
    .line 41
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lh38$a;

    invoke-direct {v0, p1}, Lh38$a;-><init>(Ljava/time/ZonedDateTime;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lwt4$g;-><init>(Lh38$a;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$g;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Lwt4$b;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lwt4$g;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, ", storageClass="

    .line 8
    .line 9
    const-string v2, "}"

    .line 10
    .line 11
    const-string v3, "Transition{"

    .line 12
    .line 13
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
