.class public abstract Lpo8;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lix6;

.field public final f:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lix6;

    .line 5
    .line 6
    invoke-direct {v0}, Lix6;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lpo8;->e:Lix6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lpo8;->f:Lix6;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final j(Ljava/util/List;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 17
    .line 18
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v2, 0x7f130209

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lqo0;->i(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lfo8;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lfo8;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lfo8;->b(Lfo8;Ljava/util/List;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0}, Lqo0;->f()V

    .line 45
    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    sget-object p0, Lxj1;->g:Lxj1;

    .line 50
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/16 v3, 0xa

    .line 54
    .line 55
    invoke-static {p1, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lyn8;

    .line 77
    .line 78
    const/16 v4, 0x3f

    .line 79
    .line 80
    invoke-static {v3, v4}, Lyn8;->c(Lyn8;I)Lyn8;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljl0;

    .line 106
    .line 107
    iget-object v3, p0, Ldv;->c:Lfk6;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-interface {v2}, Ljl0;->getItemId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Ldv;->f(Z)Lik6;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Ldv;->j(Lik6;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return v0

    .line 131
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 132
    .line 133
    .line 134
    return v1
.end method
