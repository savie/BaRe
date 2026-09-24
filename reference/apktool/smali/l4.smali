.class public Ll4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/util/Iterator;

.field public final b:Ljava/util/Collection;

.field public final synthetic c:Lm4;


# direct methods
.method public constructor <init>(Lm4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll4;->c:Lm4;

    .line 5
    .line 6
    iget-object p1, p1, Lm4;->b:Ljava/util/Collection;

    .line 7
    .line 8
    iput-object p1, p0, Ll4;->b:Ljava/util/Collection;

    .line 9
    .line 10
    instance-of v0, p1, Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    iput-object p1, p0, Ll4;->a:Ljava/util/Iterator;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lo4;Ljava/util/ListIterator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4;->c:Lm4;

    .line 29
    iget-object p1, p1, Lm4;->b:Ljava/util/Collection;

    iput-object p1, p0, Ll4;->b:Ljava/util/Collection;

    .line 30
    iput-object p2, p0, Ll4;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll4;->c:Lm4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm4;->d()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lm4;->b:Ljava/util/Collection;

    .line 7
    .line 8
    iget-object p0, p0, Ll4;->b:Ljava/util/Collection;

    .line 9
    .line 10
    if-ne v0, p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lq;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll4;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ll4;->a:Ljava/util/Iterator;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll4;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ll4;->a:Ljava/util/Iterator;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll4;->a:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ll4;->c:Lm4;

    .line 7
    .line 8
    iget-object v0, p0, Lm4;->e:Lq4;

    .line 9
    .line 10
    iget v1, v0, Lq4;->e:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    iput v1, v0, Lq4;->e:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lm4;->e()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
