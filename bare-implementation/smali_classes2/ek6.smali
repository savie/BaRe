.class public final synthetic Lek6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lgk6;

.field public final synthetic b:Z

.field public final synthetic c:Ldv;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lgk6;ZLdv;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lek6;->a:Lgk6;

    .line 5
    .line 6
    iput-boolean p2, p0, Lek6;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lek6;->c:Ldv;

    .line 9
    .line 10
    iput-boolean p4, p0, Lek6;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lek6;->c:Ldv;

    .line 2
    .line 3
    iget-object v1, v0, Ldv;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    iget-object v2, p0, Lek6;->a:Lgk6;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    iget-boolean v2, p0, Lek6;->b:Z

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget-boolean v2, v0, Ldv;->b:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    move v2, v3

    .line 32
    :goto_1
    iget-boolean p0, p0, Lek6;->d:Z

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    new-instance p0, Lik6;

    .line 37
    .line 38
    sget-object v4, Lhk6;->Loading:Lhk6;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/16 v6, 0xe

    .line 42
    .line 43
    invoke-direct {p0, v4, v5, v1, v6}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ldv;->j(Lik6;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Ldv;->m()Lik6;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {v0, v3}, Ldv;->f(Z)Lik6;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :goto_2
    invoke-virtual {v0, p0}, Ldv;->j(Lik6;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lbe8;->a:Lbe8;

    .line 64
    .line 65
    return-object p0
.end method
