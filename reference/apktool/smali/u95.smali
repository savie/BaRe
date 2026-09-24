.class public final Lu95;
.super Lgj5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lbx6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbx6;

    .line 5
    .line 6
    invoke-direct {v0}, Lbx6;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu95;->l:Lbx6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    .line 1
    iget-object p0, p0, Lu95;->l:Lbx6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx6;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    move-object v0, p0

    .line 8
    check-cast v0, Lzw6;

    .line 9
    .line 10
    invoke-virtual {v0}, Lzw6;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lzw6;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lt95;

    .line 27
    .line 28
    iget-object v1, v0, Lt95;->a:Lzy4;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lzy4;->f(Les5;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object p0, p0, Lu95;->l:Lbx6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx6;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    move-object v0, p0

    .line 8
    check-cast v0, Lzw6;

    .line 9
    .line 10
    invoke-virtual {v0}, Lzw6;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lzw6;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lt95;

    .line 27
    .line 28
    iget-object v1, v0, Lt95;->a:Lzy4;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lzy4;->j(Les5;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final l(Lex6;Les5;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    new-instance v0, Lt95;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lt95;-><init>(Lzy4;Les5;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lu95;->l:Lbx6;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lbx6;->c(Ljava/lang/Object;)Lxw6;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v1, v2, Lxw6;->b:Ljava/lang/Object;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v2, Lxw6;

    .line 20
    .line 21
    invoke-direct {v2, p1, v0}, Lxw6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget v3, v1, Lbx6;->d:I

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    iput v3, v1, Lbx6;->d:I

    .line 29
    .line 30
    iget-object v3, v1, Lbx6;->b:Lxw6;

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iput-object v2, v1, Lbx6;->a:Lxw6;

    .line 35
    .line 36
    iput-object v2, v1, Lbx6;->b:Lxw6;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iput-object v2, v3, Lxw6;->c:Lxw6;

    .line 40
    .line 41
    iput-object v3, v2, Lxw6;->d:Lxw6;

    .line 42
    .line 43
    iput-object v2, v1, Lbx6;->b:Lxw6;

    .line 44
    .line 45
    :goto_0
    const/4 v1, 0x0

    .line 46
    :goto_1
    check-cast v1, Lt95;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v2, v1, Lt95;->b:Les5;

    .line 51
    .line 52
    if-ne v2, p2, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const-string p0, "This source was already added with the different observer"

    .line 56
    .line 57
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    iget p0, p0, Lzy4;->c:I

    .line 65
    .line 66
    if-lez p0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lzy4;->f(Les5;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    return-void

    .line 72
    :cond_6
    const-string p0, "source cannot be null"

    .line 73
    .line 74
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
