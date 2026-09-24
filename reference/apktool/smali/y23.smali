.class public abstract Ly23;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/io/Serializable;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [S

    .line 6
    .line 7
    iput-object v1, p0, Ly23;->a:Ljava/lang/Object;

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    aput v3, v1, v2

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0x10

    .line 18
    .line 19
    aput v5, v1, v4

    .line 20
    .line 21
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [[S

    .line 28
    .line 29
    iput-object v1, p0, Ly23;->b:Ljava/lang/Object;

    .line 30
    .line 31
    new-array v0, v0, [I

    .line 32
    .line 33
    aput v3, v0, v2

    .line 34
    .line 35
    aput v5, v0, v4

    .line 36
    .line 37
    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, [[S

    .line 42
    .line 43
    iput-object v0, p0, Ly23;->c:Ljava/io/Serializable;

    .line 44
    .line 45
    const/16 v0, 0x100

    .line 46
    .line 47
    new-array v0, v0, [S

    .line 48
    .line 49
    iput-object v0, p0, Ly23;->d:Ljava/lang/Object;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Lai5;Lvb8;Ljava/lang/Class;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lai5;->d:Ljava/lang/Object;

    check-cast v0, Lx44;

    .line 54
    iput-object v0, p0, Ly23;->b:Ljava/lang/Object;

    .line 55
    iput-object p3, p0, Ly23;->c:Ljava/io/Serializable;

    .line 56
    iput-object p1, p0, Ly23;->a:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Ly23;->d:Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0
.end method


# virtual methods
.method public a(Lmc4;)Lwi8;
    .locals 5

    .line 1
    iget-object v0, p0, Ly23;->c:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v1, p0, Ly23;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lai5;

    .line 8
    .line 9
    iget-object v2, p0, Ly23;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lvb8;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lmc4;->getAttributes()Lxn5;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    iget-object v4, v1, Lai5;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Lzo7;

    .line 25
    .line 26
    iget-object v1, v1, Lai5;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Li87;

    .line 29
    .line 30
    invoke-interface {v4, v2, v3, v1}, Lzo7;->b(Lvb8;Lxn5;Ljava/util/Map;)Lwi8;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Lwi8;->getType()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v4, v0

    .line 54
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    new-instance v3, Lwc9;

    .line 61
    .line 62
    const/4 v4, 0x5

    .line 63
    invoke-direct {v3, v4, v1, v0}, Lwc9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v1, v3

    .line 67
    :cond_1
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {v1}, Lwi8;->getType()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0}, Ly23;->b()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    new-instance p0, Lw70;

    .line 99
    .line 100
    const-string v1, "Incompatible %s for %s at %s"

    .line 101
    .line 102
    filled-new-array {v0, v2, p1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, v1, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_4
    :goto_1
    return-object v1

    .line 111
    :cond_5
    new-instance p0, Lkd5;

    .line 112
    .line 113
    const-string v0, "No attributes for %s"

    .line 114
    .line 115
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, v0, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Ly23;->c:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object p0, p0, Ly23;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lvb8;

    .line 11
    .line 12
    invoke-interface {p0}, Lvb8;->getType()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly23;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [S

    .line 4
    .line 5
    invoke-static {v0}, Ly13;->o([S)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Ly23;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, [[S

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    if-ge v1, v3, :cond_0

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-static {v2}, Ly13;->o([S)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :goto_1
    iget-object v1, p0, Ly23;->c:Ljava/io/Serializable;

    .line 26
    .line 27
    check-cast v1, [[S

    .line 28
    .line 29
    array-length v2, v1

    .line 30
    if-ge v0, v2, :cond_1

    .line 31
    .line 32
    aget-object v1, v1, v0

    .line 33
    .line 34
    invoke-static {v1}, Ly13;->o([S)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object p0, p0, Ly23;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, [S

    .line 43
    .line 44
    invoke-static {p0}, Ly13;->o([S)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public e(Lvb8;Ljava/lang/Object;Lev5;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const-class v1, Ljava/lang/Double;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const-class v1, Ljava/lang/Float;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const-class v1, Ljava/lang/Integer;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    const-class v1, Ljava/lang/Long;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    const-class v1, Ljava/lang/Boolean;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    if-ne v0, v1, :cond_5

    .line 49
    .line 50
    const-class v1, Ljava/lang/Character;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    if-ne v0, v1, :cond_6

    .line 56
    .line 57
    const-class v1, Ljava/lang/Short;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 61
    .line 62
    if-ne v0, v1, :cond_7

    .line 63
    .line 64
    const-class v1, Ljava/lang/Byte;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_7
    move-object v1, v0

    .line 68
    :goto_0
    if-eq v1, v0, :cond_8

    .line 69
    .line 70
    new-instance v0, Lc00;

    .line 71
    .line 72
    const/16 v2, 0xa

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-direct {v0, p1, v1, v2, v3}, Lc00;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 76
    .line 77
    .line 78
    move-object p1, v0

    .line 79
    :cond_8
    iget-object p0, p0, Ly23;->a:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lai5;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-interface {p3}, Lev5;->getAttributes()Lxn5;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    iget-object p3, p0, Lai5;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p3, Lzo7;

    .line 95
    .line 96
    iget-object p0, p0, Lai5;->e:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Li87;

    .line 99
    .line 100
    invoke-interface {p3, p1, p2, v0, p0}, Lzo7;->d(Lvb8;Ljava/lang/Object;Lxn5;Ljava/util/Map;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_9
    new-instance p0, Lkd5;

    .line 106
    .line 107
    const-string p1, "No attributes for %s"

    .line 108
    .line 109
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    throw p0
.end method
