.class public final Lng5;
.super Lpg5$b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public n:Lpy4;

.field public final synthetic p:Log5;


# direct methods
.method public constructor <init>(Log5;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lng5;->p:Log5;

    .line 2
    .line 3
    iget-object p1, p1, Log5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lpg5;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lpg5$b;-><init>(Lpg5;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lng5;->n:Lpy4;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lng5;->p:Log5;

    .line 2
    .line 3
    iget-object v1, v0, Log5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lpg5;

    .line 6
    .line 7
    iget-object v0, v0, Log5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lpx4;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lpg5$b;->f:Lxx4;

    .line 13
    .line 14
    iput-object v2, p0, Lpg5$b;->b:Ljava/util/Iterator;

    .line 15
    .line 16
    iput-object v2, p0, Lpg5$b;->d:Ljava/util/Iterator;

    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Lpx4;->n()Lpx4$a;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0}, Lll0;->b()Lv64$c;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Lll0$a;->e(Lv64$c;)Lll0$a;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lpx4$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lll0;->c()Lv64$e;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Lll0$a;->g(Lv64$e;)Lll0$a;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lpx4$a;

    .line 41
    .line 42
    invoke-virtual {v0}, Lfw0;->f()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lpx4$a;

    .line 51
    .line 52
    invoke-virtual {v0}, Lfw0;->g()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Lfw0$a;->s(Ljava/lang/String;)Lfw0$a;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lpx4$a;

    .line 61
    .line 62
    invoke-virtual {v0}, Lpx4;->o()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Lpx4$a;->D(Ljava/lang/String;)Lpx4$a;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0}, Lpx4;->p()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Lpx4$a;->E(Ljava/lang/String;)Lpx4$a;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0}, Lpx4;->r()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Lpx4$a;->M(Ljava/lang/Integer;)Lpx4$a;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0}, Lpx4;->s()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Lpx4$a;->N(Ljava/lang/String;)Lpx4$a;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, p0, Lng5;->n:Lpy4;

    .line 99
    .line 100
    if-nez v4, :cond_0

    .line 101
    .line 102
    invoke-virtual {v0}, Lpx4;->q()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p0

    .line 108
    goto :goto_2

    .line 109
    :cond_0
    invoke-virtual {v4}, Lpy4;->k()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    :goto_0
    invoke-virtual {v3, v4}, Lpx4$a;->F(Ljava/lang/String;)Lpx4$a;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iget-object v4, p0, Lng5;->n:Lpy4;

    .line 118
    .line 119
    if-nez v4, :cond_1

    .line 120
    .line 121
    invoke-virtual {v0}, Lpx4;->t()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {v4}, Lpy4;->l()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :goto_1
    invoke-virtual {v3, v0}, Lpx4$a;->O(Ljava/lang/String;)Lpx4$a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lpx4;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Lcn0;->v(Lpx4;)Ljava/util/concurrent/CompletableFuture;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lqx4;

    .line 149
    .line 150
    iget-object v0, v0, Lqx4;->a:Lpy4;

    .line 151
    .line 152
    iput-object v0, p0, Lng5;->n:Lpy4;

    .line 153
    .line 154
    iput-object v0, p0, Lpg5$b;->f:Lxx4;
    :try_end_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    return-void

    .line 157
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 161
    .line 162
    .line 163
    throw v2
.end method
