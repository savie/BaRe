.class public Lqj6$g;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation runtime Lno6;
    name = "Metrics"
.end annotation


# instance fields
.field private a:Lqj6$j;
    .annotation runtime Lat2;
        name = "EventThreshold"
    .end annotation
.end field

.field private b:Lxm7;
    .annotation runtime Lat2;
        name = "Status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqj6$j;Lxm7;)V
    .locals 1
    .param p1    # Lqj6$j;
        .annotation runtime Lat2;
            name = "EventThreshold"
        .end annotation
    .end param
    .param p2    # Lxm7;
        .annotation runtime Lat2;
            name = "Status"
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Event threshold must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lqj6$g;->a:Lqj6$j;

    .line 10
    .line 11
    const-string p1, "Status must not be null"

    .line 12
    .line 13
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lqj6$g;->b:Lxm7;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Lqj6$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$g;->a:Lqj6$j;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Lxm7;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$g;->b:Lxm7;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lqj6$g;->a:Lqj6$j;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lqj6$g;->b:Lxm7;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ", status="

    .line 14
    .line 15
    const-string v2, "}"

    .line 16
    .line 17
    const-string v3, "Metrics{eventThreshold="

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
