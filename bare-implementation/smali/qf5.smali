.class public final Lqf5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau1;


# instance fields
.field public final a:Ljava/lang/annotation/Annotation;

.field public final b:Luf5;

.field public final c:Luf5;

.field public final d:[Ljava/lang/Class;

.field public final e:Ljava/lang/Class;

.field public final f:Ljava/lang/Class;

.field public final k:Ljava/lang/Class;

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luf5;Luf5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Luf5;->getDeclaringClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lqf5;->e:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-interface {p1}, Luf5;->c()Ljava/lang/annotation/Annotation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lqf5;->a:Ljava/lang/annotation/Annotation;

    .line 15
    .line 16
    invoke-interface {p1}, Luf5;->e()[Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lqf5;->d:[Ljava/lang/Class;

    .line 21
    .line 22
    invoke-interface {p1}, Luf5;->b()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lqf5;->f:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-interface {p1}, Luf5;->getType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lqf5;->k:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-interface {p1}, Luf5;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lqf5;->n:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p2, p0, Lqf5;->b:Luf5;

    .line 41
    .line 42
    iput-object p1, p0, Lqf5;->c:Luf5;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lqf5;->f:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lqf5;->a:Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()[Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lqf5;->d:[Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqf5;->b:Luf5;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lqf5;->c:Luf5;

    .line 2
    .line 3
    invoke-interface {p0}, Luf5;->getMethod()Ljava/lang/reflect/Method;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3

    .line 1
    iget-object v0, p0, Lqf5;->c:Luf5;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Luf5;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lqf5;->a:Ljava/lang/annotation/Annotation;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne p1, v2, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lqf5;->b:Luf5;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0, p1}, Luf5;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    return-object v0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lqf5;->e:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqf5;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lqf5;->k:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqf5;->c:Luf5;

    .line 2
    .line 3
    invoke-interface {v0}, Luf5;->getMethod()Ljava/lang/reflect/Method;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lqf5;->b:Luf5;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Luf5;->getMethod()Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Lsf5;

    .line 28
    .line 29
    iget-object p0, p0, Lqf5;->n:Ljava/lang/String;

    .line 30
    .line 31
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p2, "Property \'%s\' is read only in %s"

    .line 36
    .line 37
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "method \'"

    .line 2
    .line 3
    const-string v1, "\'"

    .line 4
    .line 5
    iget-object p0, p0, Lqf5;->n:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
