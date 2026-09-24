.class public final Lnb8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgu1;
.implements Lul0;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:Lxh3;

.field public final e:Lxh3;

.field public final f:Lxh3;


# direct methods
.method public constructor <init>(Lam0;Lrc7;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnb8;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-boolean v0, p2, Lrc7;->e:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lnb8;->a:Z

    .line 14
    .line 15
    iget v0, p2, Lrc7;->a:I

    .line 16
    .line 17
    iput v0, p0, Lnb8;->c:I

    .line 18
    .line 19
    iget-object v0, p2, Lrc7;->b:Lbc;

    .line 20
    .line 21
    invoke-virtual {v0}, Lbc;->n()Lyl0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lxh3;

    .line 27
    .line 28
    iput-object v1, p0, Lnb8;->d:Lxh3;

    .line 29
    .line 30
    iget-object v1, p2, Lrc7;->c:Lbc;

    .line 31
    .line 32
    invoke-virtual {v1}, Lbc;->n()Lyl0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v2, v1

    .line 37
    check-cast v2, Lxh3;

    .line 38
    .line 39
    iput-object v2, p0, Lnb8;->e:Lxh3;

    .line 40
    .line 41
    iget-object p2, p2, Lrc7;->d:Lbc;

    .line 42
    .line 43
    invoke-virtual {p2}, Lbc;->n()Lyl0;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    move-object v2, p2

    .line 48
    check-cast v2, Lxh3;

    .line 49
    .line 50
    iput-object v2, p0, Lnb8;->f:Lxh3;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lam0;->g(Lyl0;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lam0;->g(Lyl0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lyl0;->a(Lul0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p0}, Lyl0;->a(Lul0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lnb8;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lul0;

    .line 15
    .line 16
    invoke-interface {v1}, Lul0;->b()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lul0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lnb8;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
