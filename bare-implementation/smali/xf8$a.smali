.class public final Lxf8$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyq5$a<",
        "Lxf8$a;",
        "Lxf8;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyq5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lv64$c;Lxf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxf8$a;->G(Lv64$c;Lxf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(ILxf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxf8$a;->H(ILxf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Ljava/lang/String;Lxf8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxf8$a;->I(Ljava/lang/String;Lxf8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Lv64$c;Lxf8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lxf8;->n(Lxf8;Lv64$c;)Lv64$c;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H(ILxf8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lxf8;->l(Lxf8;I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic I(Ljava/lang/String;Lxf8;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lxf8;->j(Lxf8;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lxf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lxf8$a;->L(Lxf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F(Lv64$c;)Lxf8$a;
    .locals 3

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lxr5;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p1, v2}, Lxr5;-><init>(Lv64$c;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public J(I)Lxf8$a;
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 4
    .line 5
    new-instance v1, Ltw3;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p1, v2}, Ltw3;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string p0, "valid part number must be provided"

    .line 16
    .line 17
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public K(Ljava/lang/String;)Lxf8$a;
    .locals 3

    .line 1
    const-string v0, "upload ID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lio2;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-direct {v1, p1, v2}, Lio2;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public L(Lxf8;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lxf8;->i(Lxf8;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "upload ID"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lxf8;->k(Lxf8;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-lez p0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lxf8;->m(Lxf8;)Lv64$c;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "headers"

    .line 24
    .line 25
    invoke-static {p0, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "valid part number must be provided"

    .line 30
    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lxf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lxf8$a;->L(Lxf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lxf8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lxf8$a;->L(Lxf8;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
