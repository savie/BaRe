.class public abstract Ly02$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ly02$a<",
        "TB;TA;>;A:",
        "Ly02;",
        ">",
        "Lfw0$a<",
        "TB;TA;>;"
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

.method public static synthetic A(Lz02$a;Ly02;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly02$a;->F(Lz02$a;Ly02;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Ljava/lang/String;Ly02;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly02$a;->I(Ljava/lang/String;Ly02;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(ZLy02;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly02$a;->G(ZLy02;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F(Lz02$a;Ly02;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ly02;->h:Lz02$a;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic G(ZLy02;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Ly02;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic H(Lz02$b;Ly02;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ly02;->g:Lz02$b;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic I(Ljava/lang/String;Ly02;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lfw0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic J(ZLy02;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Ly02;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic K(Ljx7;Ly02;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ly02;->i:Ljx7;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic x(Lz02$b;Ly02;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly02$a;->H(Lz02$b;Ly02;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Ljx7;Ly02;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly02$a;->K(Ljx7;Ly02;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(ZLy02;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly02$a;->J(ZLy02;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public D(Lz02$a;)Ly02$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz02$a;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, La10;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, v2}, La10;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public E(Z)Ly02$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lw02;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1}, Lw02;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public L(Lz02$b;)Ly02$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz02$b;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lv02;

    .line 4
    .line 5
    const/4 v2, 0x0

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

.method public M(Ljava/lang/String;)Ly02$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ldw0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p1, v2}, Ldw0;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public N(Z)Ly02$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lx02;

    .line 4
    .line 5
    const/4 v2, 0x0

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

.method public O(Ljx7;)Ly02$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljx7;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Luo1;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p1, v2}, Luo1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
