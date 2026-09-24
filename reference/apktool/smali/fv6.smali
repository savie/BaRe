.class public final Lfv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Ll15;


# instance fields
.field public final a:Ldi7;

.field public final b:Lxr1;

.field public final c:Lur1;

.field public final d:Lij2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lfv6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lfv6;->e:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lur1;Ldi7;Lxr1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lij2;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-class v1, Ltu6;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lfv6;->d:Lij2;

    .line 15
    .line 16
    iput-object p1, p0, Lfv6;->c:Lur1;

    .line 17
    .line 18
    iput-object p2, p0, Lfv6;->a:Ldi7;

    .line 19
    .line 20
    iput-object p3, p0, Lfv6;->b:Lxr1;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lpt6;
    .locals 12

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Lfv6;->a:Ldi7;

    .line 6
    .line 7
    iget-object v2, v1, Ldi7;->d:Ljava/util/Random;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lot6;

    .line 13
    .line 14
    iget-object v2, v1, Ldi7;->a:Ljava/util/EnumSet;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v4, p0, Lfv6;->b:Lxr1;

    .line 21
    .line 22
    iget-object v11, v4, Lxr1;->d:Ljava/util/UUID;

    .line 23
    .line 24
    invoke-virtual {v1}, Ldi7;->a()Ljava/util/EnumSet;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v6, Lit6;->b:Lit6;

    .line 29
    .line 30
    const-wide/16 v7, 0x0

    .line 31
    .line 32
    const-wide/16 v9, 0x0

    .line 33
    .line 34
    const/16 v4, 0x24

    .line 35
    .line 36
    sget-object v5, Lus6;->b:Lus6;

    .line 37
    .line 38
    invoke-direct/range {v3 .. v10}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 39
    .line 40
    .line 41
    iput-object v2, v3, Lot6;->e:Ljava/util/EnumSet;

    .line 42
    .line 43
    iput-object v11, v3, Lot6;->f:Ljava/util/UUID;

    .line 44
    .line 45
    iput-object v1, v3, Lot6;->g:Ljava/util/EnumSet;

    .line 46
    .line 47
    sget-object v4, Lus6;->n:Lus6;

    .line 48
    .line 49
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v4, Lxu6;->a:Lxu6;

    .line 61
    .line 62
    filled-new-array {v4}, [Lxu6;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    new-instance v5, Lvt6;

    .line 71
    .line 72
    sget-object v6, Lnt6;->b:Lnt6;

    .line 73
    .line 74
    invoke-direct {v5, v6}, Lmt6;-><init>(Lnt6;)V

    .line 75
    .line 76
    .line 77
    iput-object v4, v5, Lvt6;->b:Ljava/util/List;

    .line 78
    .line 79
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [B

    .line 84
    .line 85
    iput-object v0, v5, Lvt6;->c:[B

    .line 86
    .line 87
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    sget-object v0, Lbt6;->c:Lbt6;

    .line 91
    .line 92
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    sget-object v0, Lwu6;->e:Lwu6;

    .line 99
    .line 100
    sget-object v1, Lwu6;->d:Lwu6;

    .line 101
    .line 102
    filled-new-array {v0, v1}, [Lwu6;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lws6;

    .line 111
    .line 112
    sget-object v4, Lnt6;->c:Lnt6;

    .line 113
    .line 114
    invoke-direct {v1, v4}, Lmt6;-><init>(Lnt6;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, v1, Lws6;->b:Ljava/util/List;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 124
    .line 125
    :cond_1
    :goto_0
    iput-object v2, v3, Lot6;->h:Ljava/util/List;

    .line 126
    .line 127
    iget-object v0, p0, Lfv6;->d:Lij2;

    .line 128
    .line 129
    iput-object v3, v0, Lij2;->a:Ljava/lang/Object;

    .line 130
    .line 131
    iget-object p0, p0, Lfv6;->c:Lur1;

    .line 132
    .line 133
    invoke-virtual {p0, v3}, Lur1;->m(Lrt6;)Lrt6;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lpt6;

    .line 138
    .line 139
    return-object p0
.end method
