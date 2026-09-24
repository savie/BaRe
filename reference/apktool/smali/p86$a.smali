.class public final Lp86$a;
.super Lvr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvr5$a<",
        "Lp86$a;",
        "Lp86;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvr5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Ljava/util/Map;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp86$a;->N(Ljava/util/Map;Lp86;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Ljava/lang/String;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp86$a;->L(Ljava/lang/String;Lp86;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Ljava/lang/String;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp86$a;->M(Ljava/lang/String;Lp86;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Ljava/util/Map;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp86$a;->K(Ljava/util/Map;Lp86;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K(Ljava/util/Map;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lp86;->p(Lp86;Ljava/util/Map;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L(Ljava/lang/String;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lp86;->m(Lp86;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M(Ljava/lang/String;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lp86;->k(Lp86;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N(Ljava/util/Map;Lp86;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lp86;->o(Lp86;Ljava/util/Map;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lp86;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lp86$a;->R(Lp86;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public J(Ljava/util/Map;)Lp86$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lp86$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lo86;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1}, Lo86;-><init>(ILjava/util/Map;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public O(Ljava/lang/String;)Lp86$a;
    .locals 3

    .line 1
    const-string v0, "lambda ARN"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lpw4;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, p1, v2}, Lpw4;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public P(Ljava/lang/String;)Lp86$a;
    .locals 3

    .line 1
    const-string v0, "prompt"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lz00;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-direct {v1, p1, v2}, Lz00;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public Q(Ljava/util/Map;)Lp86$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lp86$a;"
        }
    .end annotation

    .line 1
    const-string v0, "prompt argument"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, La10;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-direct {v1, p1, v2}, La10;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public R(Lp86;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lp86;->j(Lp86;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "prompt"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lp86;->l(Lp86;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "lambda ARN"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lp86;->n(Lp86;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "prompt argument"

    .line 27
    .line 28
    invoke-static {p0, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lp86;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lp86$a;->R(Lp86;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lp86;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lp86$a;->R(Lp86;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
