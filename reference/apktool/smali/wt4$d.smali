.class public Lwt4$d;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation runtime Lno6;
    name = "NoncurrentVersionExpiration"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lat2;
        name = "NoncurrentDays"
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation runtime Lat2;
        name = "NewerNoncurrentVersions"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lat2;
            name = "NoncurrentDays"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lat2;
            name = "NewerNoncurrentVersions"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lwt4$d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lwt4$d;->b:Ljava/lang/Integer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$d;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()I
    .locals 0

    .line 1
    iget p0, p0, Lwt4$d;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lwt4$d;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lwt4$d;->b:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "noncurrentDays=%d, newerNoncurrentVersions=%s"

    .line 18
    .line 19
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwt4$d;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "NoncurrentVersionExpiration{"

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
