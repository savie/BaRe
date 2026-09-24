.class public abstract Lyr5$a;
.super Lyq5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lyr5$a<",
        "TB;TA;>;A:",
        "Lyr5;",
        ">",
        "Lyq5$a<",
        "TB;TA;>;"
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

.method public static synthetic C(Lv64$c;Lyr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyr5$a;->L(Lv64$c;Lyr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lg87;Lyr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyr5$a;->O(Lg87;Lyr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Ljx7;Lyr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyr5$a;->Q(Ljx7;Lyr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Ljx7;Lyr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyr5$a;->P(Ljx7;Lyr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Ljn6;Lyr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyr5$a;->N(Ljn6;Lyr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(ZLyr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyr5$a;->M(ZLyr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lv64$c;Lyr5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyr5$a;->R(Lv64$c;Lyr5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L(Lv64$c;Lyr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyr5;->g:Lv64$c;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic M(ZLyr5;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Lyr5;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic N(Ljn6;Lyr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyr5;->k:Ljn6;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic O(Lg87;Lyr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyr5;->i:Lg87;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic P(Ljx7;Lyr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyr5;->j:Ljx7;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic Q(Ljx7;Lyr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyr5;->j:Ljx7;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic R(Lv64$c;Lyr5;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lyr5;->h:Lv64$c;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public J(Lv64$c;)Lyr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv64$c;",
            ")TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv64$c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lv64$c;-><init>(Lv64$c;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lxr5;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v0, v2}, Lxr5;-><init>(Lv64$c;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public K(Ljava/util/Map;)Lyr5$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv64$c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lv64$c;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lyr5$a;->J(Lv64$c;)Lyr5$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public S(Z)Lyr5$a;
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
    new-instance v1, Lcr5;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2, p1}, Lcr5;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public T(Ljn6;)Lyr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn6;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ly00;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p1, v2}, Ly00;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public U(Lg87;)Lyr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg87;",
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
    const/4 v2, 0x3

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

.method public V(Ljx7;)Lyr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljx7;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljx7;

    .line 4
    .line 5
    invoke-direct {p1}, Ljx7;-><init>()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljx7;->a()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljx7;->c(Ljava/util/Map;)Ljx7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Len1;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v1, p1, v2}, Len1;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public W(Ljava/util/Map;)Lyr5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljx7;

    .line 4
    .line 5
    invoke-direct {p1}, Ljx7;-><init>()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ljx7;->c(Ljava/util/Map;)Ljx7;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lsh2;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-direct {v1, p1, v2}, Lsh2;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public X(Lv64$c;)Lyr5$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv64$c;",
            ")TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv64$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lv64$c;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object v1, p1, Lv64$c;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "x-amz-meta-"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, v2}, Lv64$c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v4, "value"

    .line 59
    .line 60
    invoke-static {v2, v4}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_0

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v3, v4}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object p1, p0, Lll0$a;->a:Ljava/util/List;

    .line 84
    .line 85
    new-instance v1, Luo1;

    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    invoke-direct {v1, v0, v2}, Luo1;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    return-object p0
.end method

.method public Y(Ljava/util/Map;)Lyr5$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv64$c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lv64$c;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lyr5$a;->X(Lv64$c;)Lyr5$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
