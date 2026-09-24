.class public final Ly97$a;
.super Lvr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvr5$a<",
        "Ly97$a;",
        "Ly97;",
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

.method public static synthetic F(Ljn6;Ly97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly97$a;->K(Ljn6;Ly97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(ZLy97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly97$a;->J(ZLy97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic J(ZLy97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ly97;->l(Ly97;Z)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K(Ljn6;Ly97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ly97;->k(Ly97;Ljn6;)Ljn6;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private M(Ljn6;)V
    .locals 0

    .line 1
    const-string p0, "retention configuration"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Ly97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ly97$a;->L(Ly97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H(Z)Ly97$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lx02;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2, p1}, Lx02;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public I(Ljn6;)Ly97$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ly97$a;->M(Ljn6;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, La10;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, p1, v2}, La10;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public L(Ly97;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ly97;->j(Ly97;)Ljn6;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ly97$a;->M(Ljn6;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Ly97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ly97$a;->L(Ly97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Ly97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ly97$a;->L(Ly97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
