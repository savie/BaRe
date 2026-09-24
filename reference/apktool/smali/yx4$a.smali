.class public final Lyx4$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lyx4$a;",
        "Lyx4;",
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

.method public static synthetic A(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyx4$a;->I(Ljava/lang/String;Lyx4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyx4$a;->G(Ljava/lang/String;Lyx4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic E(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lyx4;->l(Lyx4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lyx4;->k(Lyx4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lyx4;->h(Lyx4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H(Ljava/lang/Integer;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lyx4;->j(Lyx4;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic I(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lyx4;->i(Lyx4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Ljava/lang/Integer;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyx4$a;->H(Ljava/lang/Integer;Lyx4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyx4$a;->F(Ljava/lang/String;Lyx4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Ljava/lang/String;Lyx4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyx4$a;->E(Ljava/lang/String;Lyx4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lyx4$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Llo2;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p1, v2}, Llo2;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public D(Ljava/lang/String;)Lyx4$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lv02;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, v2}, Lv02;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public J(Ljava/lang/String;)Lyx4$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lv2;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p1, v2}, Lv2;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public K(Ljava/lang/Integer;)Lyx4$a;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "valid max keys must be provided"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 19
    .line 20
    new-instance v1, Lsh2;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, p1, v2}, Lsh2;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public L(Ljava/lang/String;)Lyx4$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lgn1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, v2}, Lgn1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
