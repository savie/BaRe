.class public final Lg63;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau1;


# instance fields
.field public final a:Lbq1;

.field public final b:[Ljava/lang/annotation/Annotation;

.field public final c:Ljava/lang/annotation/Annotation;

.field public final d:Ljava/lang/reflect/Field;

.field public final e:Ljava/lang/String;

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbq1;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg63;->a:Lbq1;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lg63;->f:I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lg63;->e:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, Lg63;->c:Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    iput-object p1, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 26
    .line 27
    iput-object p3, p0, Lg63;->b:[Ljava/lang/annotation/Annotation;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object p0, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, v1

    .line 16
    :goto_0
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v0, p0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-object p0, p0, v0

    .line 27
    .line 28
    invoke-static {p0}, Lz85;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    return-object v1

    .line 34
    :cond_2
    const-class p0, Ljava/lang/Object;

    .line 35
    .line 36
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lg63;->c:Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()[Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object p0, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lz85;->l(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    new-array p0, p0, [Ljava/lang/Class;

    .line 24
    .line 25
    return-object p0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget p0, p0, Lg63;->f:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5

    .line 1
    iget-object v0, p0, Lg63;->c:Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lg63;->a:Lbq1;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lg63;->b:[Ljava/lang/annotation/Annotation;

    .line 19
    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    aget-object v3, p0, v2

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 41
    .line 42
    return-object p0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg63;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lg63;->f:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lg63;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "field \'"

    .line 8
    .line 9
    const-string v2, "\' "

    .line 10
    .line 11
    iget-object p0, p0, Lg63;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, p0, v2, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
