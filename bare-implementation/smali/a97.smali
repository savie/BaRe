.class public final La97;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:D

.field public static final synthetic g:I


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public final b:Lqg3;

.field public final c:Ll97;

.field public final d:Lsy2;

.field public final e:Lox1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, La97;->f:D

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lqg3;Ll97;Lsy2;Lox1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, La97;->a:Lcom/google/firebase/FirebaseApp;

    .line 20
    .line 21
    iput-object p2, p0, La97;->b:Lqg3;

    .line 22
    .line 23
    iput-object p3, p0, La97;->c:Ll97;

    .line 24
    .line 25
    iput-object p4, p0, La97;->d:Lsy2;

    .line 26
    .line 27
    iput-object p5, p0, La97;->e:Lox1;

    .line 28
    .line 29
    return-void
.end method

.method public static final a(La97;Lkv1;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, La97;->c:Ll97;

    .line 2
    .line 3
    instance-of v1, p1, Lz87;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lz87;

    .line 9
    .line 10
    iget v2, v1, Lz87;->c:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lz87;->c:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lz87;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lz87;-><init>(La97;Lkv1;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, v1, Lz87;->a:Ljava/lang/Object;

    .line 28
    .line 29
    iget p1, v1, Lz87;->c:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    const-string v4, "FirebaseSessions"

    .line 34
    .line 35
    sget-object v5, Lyx1;->a:Lyx1;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    if-eq p1, v3, :cond_2

    .line 40
    .line 41
    if-ne p1, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lch3;->a:Lch3;

    .line 62
    .line 63
    iput v3, v1, Lz87;->c:I

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lch3;->b(Lkv1;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-ne p0, v5, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    check-cast p0, Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_5

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_c

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Loy1;

    .line 102
    .line 103
    iget-object p1, p1, Loy1;->a:Lka2;

    .line 104
    .line 105
    invoke-virtual {p1}, Lka2;->b()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    iput v2, v1, Lz87;->c:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ll97;->b(Lkv1;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-ne p0, v5, :cond_7

    .line 118
    .line 119
    :goto_2
    return-object v5

    .line 120
    :cond_7
    :goto_3
    iget-object p0, v0, Ll97;->a:Lra7;

    .line 121
    .line 122
    invoke-interface {p0}, Lra7;->b()Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    if-eqz p0, :cond_8

    .line 127
    .line 128
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    goto :goto_5

    .line 133
    :cond_8
    iget-object p0, v0, Ll97;->b:Lra7;

    .line 134
    .line 135
    invoke-interface {p0}, Lra7;->b()Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    :goto_5
    if-nez v3, :cond_a

    .line 143
    .line 144
    const-string p0, "Sessions SDK disabled through settings API. Events will not be sent."

    .line 145
    .line 146
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_a
    sget-wide p0, La97;->f:D

    .line 153
    .line 154
    invoke-virtual {v0}, Ll97;->a()D

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    cmpg-double p0, p0, v0

    .line 159
    .line 160
    if-gtz p0, :cond_b

    .line 161
    .line 162
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    .line 164
    return-object p0

    .line 165
    :cond_b
    const-string p0, "Sessions SDK has dropped this session due to sampling."

    .line 166
    .line 167
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_c
    :goto_6
    const-string p0, "Sessions SDK disabled through data collection. Events will not be sent."

    .line 174
    .line 175
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 179
    .line 180
    return-object p0
.end method
