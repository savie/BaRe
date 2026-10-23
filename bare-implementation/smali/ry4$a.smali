.class public final Lry4$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lry4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lry4$a;",
        "Lry4;",
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

.method private static synthetic B([Ljava/lang/String;Lry4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lry4;->i(Lry4;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic C(Ljava/lang/String;Lry4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lry4;->k(Lry4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic D(Ljava/lang/String;Lry4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lry4;->j(Lry4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private H([Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "events"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic x(Ljava/lang/String;Lry4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lry4$a;->D(Ljava/lang/String;Lry4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Ljava/lang/String;Lry4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lry4$a;->C(Ljava/lang/String;Lry4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z([Ljava/lang/String;Lry4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lry4$a;->B([Ljava/lang/String;Lry4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A([Ljava/lang/String;)Lry4$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lry4$a;->H([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 12
    .line 13
    new-instance v1, Lfn1;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v1, p1, v2}, Lfn1;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public E(Ljava/lang/String;)Lry4$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lv2;

    .line 4
    .line 5
    const/4 v2, 0x4

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

.method public F(Ljava/lang/String;)Lry4$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lvx4;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, v2}, Lvx4;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public G(Lry4;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lfw0;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lry4;->h(Lry4;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lry4$a;->H([Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lry4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lry4$a;->G(Lry4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lry4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lry4$a;->G(Lry4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
