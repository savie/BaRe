.class public final Lz97$a;
.super Lvr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvr5$a<",
        "Lz97$a;",
        "Lz97;",
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

.method public static synthetic F(Ljava/util/Map;Lz97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lz97$a;->H(Ljava/util/Map;Lz97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Ljx7;Lz97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lz97$a;->I(Ljx7;Lz97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H(Ljava/util/Map;Lz97;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljx7;->c(Ljava/util/Map;)Ljx7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lz97;->k(Lz97;Ljx7;)Ljx7;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic I(Ljx7;Lz97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lz97;->k(Lz97;Ljx7;)Ljx7;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private M(Ljx7;)V
    .locals 0

    .line 1
    const-string p0, "tags"

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
    check-cast p1, Lz97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lz97$a;->L(Lz97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public J(Ljx7;)Lz97$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lz97$a;->M(Ljx7;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lb10;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-direct {v1, p1, v2}, Lb10;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public K(Ljava/util/Map;)Lz97$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lz97$a;"
        }
    .end annotation

    .line 1
    const-string v0, "map for tags"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lo86;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, p1}, Lo86;-><init>(ILjava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public L(Lz97;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lz97;->j(Lz97;)Ljx7;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lz97$a;->M(Ljx7;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lz97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lz97$a;->L(Lz97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lz97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lz97$a;->L(Lz97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
