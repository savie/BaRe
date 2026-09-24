.class public final Lu97$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lu97$a;",
        "Lu97;",
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

.method private static synthetic A(Ljx7;Lu97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lu97;->i(Lu97;Ljx7;)Ljx7;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private E(Ljx7;)V
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

.method public static synthetic x(Ljava/util/Map;Lu97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lu97$a;->z(Ljava/util/Map;Lu97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Ljx7;Lu97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lu97$a;->A(Ljx7;Lu97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic z(Ljava/util/Map;Lu97;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljx7;->b(Ljava/util/Map;)Ljx7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lu97;->i(Lu97;Ljx7;)Ljx7;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public B(Ljx7;)Lu97$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lu97$a;->E(Ljx7;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lv02;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, p1, v2}, Lv02;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public C(Ljava/util/Map;)Lu97$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lu97$a;"
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
    new-instance v1, Luo1;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-direct {v1, p1, v2}, Luo1;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public D(Lu97;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lu97;->h(Lu97;)Ljx7;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lu97$a;->E(Ljx7;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lu97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu97$a;->D(Lu97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lu97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu97$a;->D(Lu97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
