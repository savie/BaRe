.class public final Lih4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic d:[Lco4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/ThreadLocal;

.field public final c:Lw36;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc96;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    sget-object v1, Luz0;->NO_RECEIVER:Ljava/lang/Object;

    .line 5
    .line 6
    const-class v2, Lih4;

    .line 7
    .line 8
    const-string v3, "dataStore"

    .line 9
    .line 10
    const-string v4, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Ld96;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lph6;->a:Lqh6;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Lco4;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v0, v1, v2

    .line 25
    .line 26
    sput-object v1, Lih4;->d:[Lco4;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lih4;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lih4;->b:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    new-instance v0, Lnh;

    .line 17
    .line 18
    new-instance v1, Lzs;

    .line 19
    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Llm;

    .line 31
    .line 32
    invoke-direct {v1, p0, v2}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcn2;->a:Lrf2;

    .line 36
    .line 37
    sget-object v2, Lse2;->c:Lse2;

    .line 38
    .line 39
    invoke-static {}, Lzm5;->a()Lfs7;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Liz1;->s(Lox1;Lox1;)Lox1;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Ll73;->c(Lox1;)Ldv1;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lx36;

    .line 55
    .line 56
    invoke-direct {v3, p2, v0, v1, v2}, Lx36;-><init>(Ljava/lang/String;Lnh;Lmt3;Lxx1;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lih4;->d:[Lco4;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    aget-object p2, p2, v4

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object p2, v3, Lx36;->c:Lw36;

    .line 68
    .line 69
    if-nez p2, :cond_1

    .line 70
    .line 71
    iget-object p2, v3, Lx36;->b:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p2

    .line 74
    :try_start_0
    iget-object v4, v3, Lx36;->c:Lw36;

    .line 75
    .line 76
    if-nez v4, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Llm;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/util/List;

    .line 90
    .line 91
    new-instance v4, Ldg1;

    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    invoke-direct {v4, v5, p1, v3}, Ldg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lx93;

    .line 98
    .line 99
    sget-object v5, Lus2;->d:Lus2;

    .line 100
    .line 101
    new-instance v6, Lcg1;

    .line 102
    .line 103
    const/4 v7, 0x2

    .line 104
    invoke-direct {v6, v4, v7}, Lcg1;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    sget-object v4, Lv93;->a:Lv93;

    .line 108
    .line 109
    invoke-direct {p1, v5, v4, v6}, Lx93;-><init>(La87;Lmt3;Lbt3;)V

    .line 110
    .line 111
    .line 112
    new-instance v4, Lw36;

    .line 113
    .line 114
    new-instance v5, Lo41;

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    invoke-direct {v5, v1, v6, v7}, Lo41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v5, Lic2;

    .line 125
    .line 126
    invoke-direct {v5, p1, v1, v0, v2}, Lic2;-><init>(Lx93;Ljava/util/List;Lnh;Lxx1;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v4, v5}, Lw36;-><init>(Lfb2;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lw36;

    .line 133
    .line 134
    invoke-direct {p1, v4}, Lw36;-><init>(Lfb2;)V

    .line 135
    .line 136
    .line 137
    iput-object p1, v3, Lx36;->c:Lw36;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_1

    .line 142
    :cond_0
    :goto_0
    iget-object p1, v3, Lx36;->c:Lw36;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    monitor-exit p2

    .line 148
    move-object p2, p1

    .line 149
    goto :goto_2

    .line 150
    :goto_1
    monitor-exit p2

    .line 151
    throw p0

    .line 152
    :cond_1
    :goto_2
    iput-object p2, p0, Lih4;->c:Lw36;

    .line 153
    .line 154
    return-void
.end method
