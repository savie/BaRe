.class public Lqj6$c;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation runtime Lno6;
    name = "DeleteReplication"
.end annotation


# instance fields
.field private a:Lxm7;
    .annotation runtime Lat2;
        name = "Status"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxm7;)V
    .locals 0
    .param p1    # Lxm7;
        .annotation runtime Lat2;
            name = "Status"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lxm7;->b:Lxm7;

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lqj6$c;->a:Lxm7;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lxm7;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$c;->a:Lxm7;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lqj6$c;->a:Lxm7;

    .line 2
    .line 3
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "DeleteReplication{status="

    .line 8
    .line 9
    const-string v1, "}"

    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
