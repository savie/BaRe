.class public final Lth2$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lth2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lth2$a;",
        "Lth2;",
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

.method private static synthetic B(ZLth2;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lth2;->j(Lth2;Z)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic C(Ljava/util/List;Lth2;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lth2;->i(Lth2;Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic D(ZLth2;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lth2;->k(Lth2;Z)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Ljava/util/List;Lth2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lth2$a;->C(Ljava/util/List;Lth2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(ZLth2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lth2$a;->D(ZLth2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(ZLth2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lth2$a;->B(ZLth2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Z)Lth2$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lqh2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1}, Lqh2;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public E(Ljava/util/List;)Lth2$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvh2$a;",
            ">;)",
            "Lth2$a;"
        }
    .end annotation

    .line 1
    const-string v0, "objects"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 15
    .line 16
    new-instance v1, Lsh2;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p1, v2}, Lsh2;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string p0, "list of objects must not be more than 1000"

    .line 27
    .line 28
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public F(Z)Lth2$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lrh2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1}, Lrh2;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public G(Lth2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lth2;->h(Lth2;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "objects"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lth2;->h(Lth2;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/16 p1, 0x3e8

    .line 22
    .line 23
    if-gt p0, p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "list of objects must not be more than 1000"

    .line 27
    .line 28
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lth2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lth2$a;->G(Lth2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lth2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lth2$a;->G(Lth2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
