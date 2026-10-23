.class public final Lc05;
.super Ldv;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lc05;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc05;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ldv;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc05;->g:Lc05;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lik6;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p0, :cond_3

    .line 15
    .line 16
    new-instance p0, Lq63;

    .line 17
    .line 18
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v1, v0}, Lqy5;->f(ZLzn7;)Lry5;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v2, v2, Lry5;->q:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {p0, v2, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lzz0;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v2, v3}, Lzz0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lq63;->D(Ljava/io/FilenameFilter;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    const/16 v2, 0xa

    .line 53
    .line 54
    invoke-static {p0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v4, v2

    .line 76
    check-cast v4, Lq63;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lq63;->A()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v4}, Lq63;->z()J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    invoke-virtual {v4}, Lq63;->A()J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    new-instance v3, Lyn8;

    .line 102
    .line 103
    const/16 v10, 0x30

    .line 104
    .line 105
    invoke-direct/range {v3 .. v10}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lik6;

    .line 118
    .line 119
    sget-object v2, Lhk6;->Success:Lhk6;

    .line 120
    .line 121
    const/16 v3, 0xc

    .line 122
    .line 123
    invoke-direct {v0, v2, p0, v1, v3}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_2
    :goto_1
    new-instance p0, Lik6;

    .line 128
    .line 129
    sget-object v2, Lhk6;->Empty:Lhk6;

    .line 130
    .line 131
    const/16 v3, 0xe

    .line 132
    .line 133
    invoke-direct {p0, v2, v0, v1, v3}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 138
    .line 139
    .line 140
    return-object v0
.end method
