.class public final Lsp8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgk6;


# instance fields
.field public final synthetic a:Ltp8;


# direct methods
.method public constructor <init>(Ltp8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsp8;->a:Ltp8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lik6;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lik6;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lsp8;->a:Ltp8;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljc1;

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    invoke-direct {v0, v1}, Ljc1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Ltp8;->k:Lex6;

    .line 29
    .line 30
    new-instance v0, Lfm7;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x1e

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct/range {v0 .. v5}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lqo0;->d()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
