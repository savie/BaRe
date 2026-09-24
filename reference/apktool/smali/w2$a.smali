.class public final Lw2$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyq5$a<",
        "Lw2$a;",
        "Lw2;",
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

.method public static synthetic C(Ljava/lang/String;Lw2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw2$a;->D(Ljava/lang/String;Lw2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic D(Ljava/lang/String;Lw2;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lw2;->j(Lw2;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Lw2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw2$a;->F(Lw2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E(Ljava/lang/String;)Lw2$a;
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
    new-instance v1, Lv2;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Lv2;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public F(Lw2;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lw2;->i(Lw2;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string p1, "upload ID"

    .line 9
    .line 10
    invoke-static {p0, p1}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lw2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw2$a;->F(Lw2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lw2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw2$a;->F(Lw2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
