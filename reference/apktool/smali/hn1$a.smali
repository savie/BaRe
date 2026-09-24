.class public final Lhn1$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyq5$a<",
        "Lhn1$a;",
        "Lhn1;",
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

.method public static synthetic C(Lg87$a;Lhn1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn1$a;->G(Lg87$a;Lhn1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D([Lgx5;Lhn1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn1$a;->F([Lgx5;Lhn1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Ljava/lang/String;Lhn1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lhn1$a;->H(Ljava/lang/String;Lhn1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F([Lgx5;Lhn1;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lhn1;->l(Lhn1;[Lgx5;)[Lgx5;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Lg87$a;Lhn1;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lhn1;->m(Lhn1;Lg87$a;)Lg87$a;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H(Ljava/lang/String;Lhn1;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lhn1;->j(Lhn1;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lhn1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhn1$a;->L(Lhn1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public I([Lgx5;)Lhn1$a;
    .locals 3

    .line 1
    const-string v0, "parts"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lfn1;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Lfn1;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public J(Lg87$a;)Lhn1$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Len1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Len1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public K(Ljava/lang/String;)Lhn1$a;
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
    new-instance v1, Lgn1;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Lgn1;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public L(Lhn1;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lhn1;->i(Lhn1;)Ljava/lang/String;

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
    invoke-static {p1}, Lhn1;->k(Lhn1;)[Lgx5;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "parts"

    .line 18
    .line 19
    invoke-static {p0, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lhn1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhn1$a;->L(Lhn1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lhn1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhn1$a;->L(Lhn1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
