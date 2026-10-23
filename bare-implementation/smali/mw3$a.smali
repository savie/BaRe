.class public final Lmw3$a;
.super Lrr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrr5$a<",
        "Lmw3$a;",
        "Lmw3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrr5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I([Ljava/lang/String;Lmw3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmw3$a;->N([Ljava/lang/String;Lmw3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(Ljava/lang/Integer;Lmw3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmw3$a;->P(Ljava/lang/Integer;Lmw3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Ljava/lang/Integer;Lmw3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmw3$a;->M(Ljava/lang/Integer;Lmw3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Ljava/util/List;Lmw3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmw3$a;->O(Ljava/util/List;Lmw3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M(Ljava/lang/Integer;Lmw3;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lmw3;->o(Lmw3;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N([Ljava/lang/String;Lmw3;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-static {p1, p0}, Lmw3;->m(Lmw3;Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic O(Ljava/util/List;Lmw3;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lmw3;->m(Lmw3;Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic P(Ljava/lang/Integer;Lmw3;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lmw3;->n(Lmw3;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lmw3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lmw3$a;->U(Lmw3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Q(Ljava/lang/Integer;)Lmw3$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, La10;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p1, v2}, La10;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public R(Ljava/util/List;)Lmw3$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmw3$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lkl0;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, v2}, Lkl0;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public S([Ljava/lang/String;)Lmw3$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lsh2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p1, v2}, Lsh2;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public T(Ljava/lang/Integer;)Lmw3$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ly00;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, v2}, Ly00;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public U(Lmw3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lmw3;->l(Lmw3;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string p1, "object attributes"

    .line 9
    .line 10
    invoke-static {p0, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lmw3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lmw3$a;->U(Lmw3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lmw3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lmw3$a;->U(Lmw3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
