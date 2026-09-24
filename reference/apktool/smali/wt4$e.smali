.class public Lwt4$e;
.super Lwt4$d;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation runtime Lno6;
    name = "NoncurrentVersionTransition"
.end annotation


# instance fields
.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "StorageClass"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;)V
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "StorageClass"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lwt4$d;-><init>(ILjava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lwt4$e;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Lwt4$d;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lwt4$e;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, ", storageClass="

    .line 8
    .line 9
    const-string v2, "}"

    .line 10
    .line 11
    const-string v3, "NoncurrentVersionTransition{"

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
