.class public final Lx97$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lx97$a;",
        "Lx97;",
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

.method private B(Lpr5;)V
    .locals 0

    .line 1
    const-string p0, "object-lock configuration"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic x(Lpr5;Lx97;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx97$a;->z(Lpr5;Lx97;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic z(Lpr5;Lx97;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lx97;->i(Lx97;Lpr5;)Lpr5;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lx97;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lx97;->h(Lx97;)Lpr5;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lx97$a;->B(Lpr5;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lx97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lx97$a;->A(Lx97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lx97;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lx97$a;->A(Lx97;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(Lpr5;)Lx97$a;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lx97$a;->B(Lpr5;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Ly00;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, p1, v2}, Ly00;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method
