.class public final Lip0;
.super Lop0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final r:Lop0;


# direct methods
.method public constructor <init>(Lip0;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lop0;-><init>(Lop0;Ljava/util/Set;Ljava/util/Set;)V

    .line 13
    iput-object p1, p0, Lip0;->r:Lop0;

    return-void
.end method

.method public constructor <init>(Lip0;Llr5;Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lop0;-><init>(Lop0;Llr5;Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lip0;->r:Lop0;

    return-void
.end method

.method public constructor <init>(Lnp0;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p1, Lop0;->f:Ljava/lang/Object;

    .line 3
    .line 4
    invoke-direct {p0, p1, v0, v1}, Lop0;-><init>(Lop0;Llr5;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lip0;->r:Lop0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A([Lmp0;[Lmp0;)Lop0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final B(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lop0;->e:[Lmp0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lop0;->d:[Lmp0;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    array-length v1, p0

    .line 12
    :goto_0
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    aget-object v2, p0, v0

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lfk4;->v()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception p3

    .line 23
    goto :goto_2

    .line 24
    :catch_1
    move-exception p2

    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-virtual {v2, p1, p2, p3}, Lmp0;->j(Ljava/lang/Object;Lfk4;Lc87;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void

    .line 33
    :goto_2
    new-instance v1, Lyk4;

    .line 34
    .line 35
    const-string v2, "Infinite recursion (StackOverflowError)"

    .line 36
    .line 37
    invoke-direct {v1, p2, v2, p3}, Lyk4;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    aget-object p0, p0, v0

    .line 41
    .line 42
    iget-object p0, p0, Lmp0;->b:Lz77;

    .line 43
    .line 44
    iget-object p0, p0, Lz77;->a:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p2, Lxk4;

    .line 47
    .line 48
    invoke-direct {p2, p1, p0}, Lxk4;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v1, Lyk4;->a:Ljava/util/LinkedList;

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    new-instance p0, Ljava/util/LinkedList;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p0, v1, Lyk4;->a:Ljava/util/LinkedList;

    .line 61
    .line 62
    :cond_3
    iget-object p0, v1, Lyk4;->a:Ljava/util/LinkedList;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const/16 p1, 0x3e8

    .line 69
    .line 70
    if-ge p0, p1, :cond_4

    .line 71
    .line 72
    iget-object p0, v1, Lyk4;->a:Ljava/util/LinkedList;

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    throw v1

    .line 78
    :goto_3
    aget-object p0, p0, v0

    .line 79
    .line 80
    iget-object p0, p0, Lmp0;->b:Lz77;

    .line 81
    .line 82
    iget-object p0, p0, Lz77;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p3, p2, p1, p0}, Ltn7;->n(Lc87;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 2

    .line 1
    sget-object v0, Lx77;->K:Lx77;

    .line 2
    .line 3
    iget-object v1, p3, Lc87;->a:Lv77;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lv77;->l(Lx77;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lop0;->d:[Lmp0;

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lip0;->B(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p2, p1}, Lfk4;->S(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lip0;->B(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lfk4;->n()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lop0;->o(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v0, Lmm4;->e:Lmm4;

    .line 10
    .line 11
    invoke-virtual {p0, p4, p1, v0}, Lop0;->q(Lrc8;Ljava/lang/Object;Lmm4;)Lnw8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p4, p2, v0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lip0;->B(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, p2, v0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final g(Lfk5;)Lem4;
    .locals 0

    .line 1
    iget-object p0, p0, Lip0;->r:Lop0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lem4;->g(Lfk5;)Lem4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final r()Lop0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "BeanAsArraySerializer for "

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final x(Ljava/util/Set;Ljava/util/Set;)Lop0;
    .locals 1

    .line 1
    new-instance v0, Lip0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lip0;-><init>(Lip0;Ljava/util/Set;Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final y(Ljava/lang/Object;)Lop0;
    .locals 2

    .line 1
    new-instance v0, Lip0;

    .line 2
    .line 3
    iget-object v1, p0, Lop0;->n:Llr5;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lip0;-><init>(Lip0;Llr5;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final z(Llr5;)Lop0;
    .locals 0

    .line 1
    iget-object p0, p0, Lip0;->r:Lop0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lop0;->z(Llr5;)Lop0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
