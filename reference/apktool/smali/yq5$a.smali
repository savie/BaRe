.class public abstract Lyq5$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lyq5$a<",
        "TB;TA;>;A:",
        "Lyq5;",
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

.method public static synthetic x(Ljava/lang/String;Lyq5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyq5$a;->y(Ljava/lang/String;Lyq5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic y(Ljava/lang/String;Lyq5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyq5;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public A(Lyq5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lyq5;->f:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lyq5$a;->B(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "object name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Lfw0$a;->b:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string p0, "/"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length p1, p0

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-ge v0, p1, :cond_2

    .line 20
    .line 21
    aget-object v1, p0, v0

    .line 22
    .line 23
    const-string v2, "."

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string v2, ".."

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string p0, "object name with \'.\' or \'..\' path segment is not supported"

    .line 43
    .line 44
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lyq5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Lyq5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z(Ljava/lang/String;)Lyq5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lyq5$a;->B(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lz00;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, p1, v2}, Lz00;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
