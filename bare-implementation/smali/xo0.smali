.class public final Lxo0;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M:Lwo0;

.field public static final N:Lwo0;

.field public static final O:Lwo0;

.field public static final P:Lwo0;

.field public static final Q:Lwo0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lyg7;->J0(Ljava/lang/Class;)Lyg7;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lhd;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lxo0;->M:Lwo0;

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {v1}, Lyg7;->J0(Ljava/lang/Class;)Lyg7;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lhd;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2, v3}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lxo0;->N:Lwo0;

    .line 35
    .line 36
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    invoke-static {v1}, Lyg7;->J0(Ljava/lang/Class;)Lyg7;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lhd;

    .line 43
    .line 44
    invoke-direct {v3, v1}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2, v3}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sput-object v1, Lxo0;->O:Lwo0;

    .line 52
    .line 53
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-static {v1}, Lyg7;->J0(Ljava/lang/Class;)Lyg7;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lhd;

    .line 60
    .line 61
    invoke-direct {v3, v1}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2, v3}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sput-object v1, Lxo0;->P:Lwo0;

    .line 69
    .line 70
    const-class v1, Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {v1}, Lyg7;->J0(Ljava/lang/Class;)Lyg7;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Lhd;

    .line 77
    .line 78
    invoke-direct {v3, v1}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v2, v3}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lxo0;->Q:Lwo0;

    .line 86
    .line 87
    return-void
.end method

.method public static p0(Ls65;Lgc8;)Lwo0;
    .locals 2

    .line 1
    iget-object v0, p1, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    if-ne v0, p0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne v0, p0, :cond_8

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v0}, Lu81;->p(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    const-class p0, Ljava/lang/Object;

    .line 31
    .line 32
    if-ne v0, p0, :cond_3

    .line 33
    .line 34
    sget-object p0, Lxo0;->Q:Lwo0;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-class p0, Ljava/lang/String;

    .line 38
    .line 39
    if-ne v0, p0, :cond_4

    .line 40
    .line 41
    sget-object p0, Lxo0;->M:Lwo0;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    const-class p0, Ljava/lang/Integer;

    .line 45
    .line 46
    if-ne v0, p0, :cond_5

    .line 47
    .line 48
    :goto_0
    sget-object p0, Lxo0;->O:Lwo0;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 52
    .line 53
    if-ne v0, p0, :cond_6

    .line 54
    .line 55
    :goto_1
    sget-object p0, Lxo0;->P:Lwo0;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_6
    const-class p0, Ljava/lang/Boolean;

    .line 59
    .line 60
    if-ne v0, p0, :cond_8

    .line 61
    .line 62
    :goto_2
    sget-object p0, Lxo0;->N:Lwo0;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_7
    const-class v1, Lcl4;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_8

    .line 72
    .line 73
    new-instance v1, Lhd;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, p1, v1}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_8
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public static q0(Ls65;Lgc8;Ls65;)Lhd;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lgc8;->f:Ljava/lang/Class;

    .line 5
    .line 6
    instance-of v1, p1, Lt50;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast p0, Lt65;

    .line 11
    .line 12
    iget-object p0, p0, Lt65;->c:Ljg7;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p0, Lhd;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance v1, Lid;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1, p2}, Lid;-><init>(Ls65;Lgc8;Ls65;)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-class v2, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lgc8;->w0(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {p1, v5, v2}, Lid;->d(Lgc8;Ljava/util/ArrayList;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p1, v5, v2}, Lid;->e(Lgc8;Ljava/util/ArrayList;Z)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    new-instance v2, Lhd;

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Lid;->f(Ljava/util/List;)Lee;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object p0, p0, Ls65;->b:Len0;

    .line 64
    .line 65
    iget-object v11, p0, Len0;->a:Llc8;

    .line 66
    .line 67
    iget-boolean v12, v1, Lid;->f:Z

    .line 68
    .line 69
    iget-object v4, v1, Lid;->d:Ljava/lang/Class;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    iget-object v8, v1, Lid;->c:Ljc8;

    .line 73
    .line 74
    iget-object v9, v1, Lid;->a:Las5;

    .line 75
    .line 76
    move-object v3, p1

    .line 77
    move-object v10, p2

    .line 78
    invoke-direct/range {v2 .. v12}, Lhd;-><init>(Lgc8;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lee;Ljc8;Las5;Lh81;Llc8;Z)V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method
