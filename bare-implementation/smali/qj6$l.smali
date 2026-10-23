.class public Lqj6$l;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation runtime Lno6;
    name = "SourceSelectionCriteria"
.end annotation


# instance fields
.field private a:Lqj6$h;
    .annotation runtime Lat2;
        name = "ReplicaModifications"
        required = false
    .end annotation
.end field

.field private b:Lqj6$m;
    .annotation runtime Lat2;
        name = "SseKmsEncryptedObjects"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqj6$m;Lqj6$h;)V
    .locals 0
    .param p1    # Lqj6$m;
        .annotation runtime Lat2;
            name = "SseKmsEncryptedObjects"
            required = false
        .end annotation
    .end param
    .param p2    # Lqj6$h;
        .annotation runtime Lat2;
            name = "ReplicaModifications"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqj6$l;->b:Lqj6$m;

    .line 5
    .line 6
    iput-object p2, p0, Lqj6$l;->a:Lqj6$h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lqj6$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$l;->a:Lqj6$h;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Lqj6$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$l;->b:Lqj6$m;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lqj6$l;->a:Lqj6$h;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lqj6$l;->b:Lqj6$m;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ", sseKmsEncryptedObjects="

    .line 14
    .line 15
    const-string v2, "}"

    .line 16
    .line 17
    const-string v3, "SourceSelectionCriteria{replicaModifications="

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
