.class public final Lt97$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lt97$a;",
        "Lt97;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfw0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic A(Lqj6;Lt97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lt97;->i(Lt97;Lqj6;)Lqj6;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic B(Ljava/lang/String;Lt97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lt97;->k(Lt97;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private E(Lqj6;)V
    .locals 0

    .line 1
    const-string p0, "replication configuration"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private F(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "object lock token"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic x(Lqj6;Lt97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt97$a;->A(Lqj6;Lt97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Ljava/lang/String;Lt97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt97$a;->B(Ljava/lang/String;Lt97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lt97$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lt97$a;->F(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Llo2;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-direct {v1, p1, v2}, Llo2;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public D(Lt97;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lt97;->h(Lt97;)Lqj6;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lt97$a;->E(Lqj6;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lt97;->j(Lt97;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lt97$a;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lt97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt97$a;->D(Lt97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lt97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt97$a;->D(Lt97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z(Lqj6;)Lt97$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lt97$a;->E(Lqj6;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Len1;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    invoke-direct {v1, p1, v2}, Len1;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
