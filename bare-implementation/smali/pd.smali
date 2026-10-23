.class public final Lpd;
.super Lud;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final transient P:Ljava/lang/reflect/Method;

.field public Q:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lqc8;Ljava/lang/reflect/Method;Ls79;[Ls79;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lud;-><init>(Lqc8;Ls79;[Ls79;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iput-object p2, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Cannot construct AnnotatedMethod with null Method"

    .line 10
    .line 11
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public final A()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final B()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final C()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final D()Lgc8;
    .locals 1

    .line 1
    iget-object v0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lod;->M:Lqc8;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Lqc8;->c(Ljava/lang/reflect/Type;)Lgc8;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const-class v0, Lpd;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lu81;->n(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    check-cast p1, Lpd;

    .line 16
    .line 17
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    iget-object p1, p1, Lpd;->P:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final p0()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final q0()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Lod;->q0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    invoke-super {p0}, Lod;->q0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "%s(%d params)"

    .line 33
    .line 34
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    const-string v1, "("

    .line 40
    .line 41
    invoke-static {v0, v1}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v1}, Lpd;->z0(I)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ")"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_1
    const-string p0, "()"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public final r0()Ljava/lang/reflect/Member;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Lpd;->q0()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, ": "

    .line 17
    .line 18
    invoke-static {p1}, Lu81;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Failed to getValue() with method "

    .line 23
    .line 24
    invoke-static {v2, p0, v0, v1, p1}, Ll0;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[method "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpd;->q0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, "]"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final v0(Ls79;)Ljb9;
    .locals 3

    .line 1
    new-instance v0, Lpd;

    .line 2
    .line 3
    iget-object v1, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v2, p0, Lud;->O:[Ls79;

    .line 6
    .line 7
    iget-object p0, p0, Lod;->M:Lqc8;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, p1, v2}, Lpd;-><init>(Lqc8;Ljava/lang/reflect/Method;Ls79;[Ls79;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final x0()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final y0(I)Lgc8;
    .locals 2

    .line 1
    iget-object v0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lod;->M:Lqc8;

    .line 13
    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lqc8;->c(Ljava/lang/reflect/Type;)Lgc8;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final z0(I)Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lpd;->Q:[Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lpd;->Q:[Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lpd;->Q:[Ljava/lang/Class;

    .line 14
    .line 15
    array-length v0, p0

    .line 16
    if-lt p1, v0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_1
    aget-object p0, p0, p1

    .line 21
    .line 22
    return-object p0
.end method
