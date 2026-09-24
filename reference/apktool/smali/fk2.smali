.class public final Lfk2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lri2;


# instance fields
.field public a:Ljava/util/LinkedList;

.field public b:Ljava/util/LinkedList;

.field public c:Lkk5;

.field public d:Ljk5;

.field public e:[Ljava/lang/annotation/Annotation;

.field public f:Leg2;

.field public g:Leg2;

.field public h:Lpu5;

.field public i:Lno6;

.field public j:Ljava/lang/Class;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfk2;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public final d()Leg2;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->f:Leg2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()[Ljava/lang/reflect/Constructor;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->j:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lfk2;->j:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    xor-int/2addr p0, v1

    .line 20
    return p0
.end method

.method public final g()Lkk5;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->c:Lkk5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNamespace()Ljk5;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->d:Ljk5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOrder()Lpu5;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->h:Lpu5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRoot()Lno6;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->i:Lno6;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->j:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->b:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()Leg2;
    .locals 1

    .line 1
    iget-object v0, p0, Lfk2;->f:Leg2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lfk2;->g:Leg2;

    .line 7
    .line 8
    return-object p0
.end method

.method public final isPrimitive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->j:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfk2;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method public final j()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object p0, p0, Lfk2;->j:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v0, Ljava/lang/Object;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfk2;->j:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
