.class public final Lkg5;
.super Lpg5$b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public n:Lnw4;

.field public final synthetic p:Ldb2;


# direct methods
.method public constructor <init>(Ldb2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lkg5;->p:Ldb2;

    .line 2
    .line 3
    iget-object p1, p1, Ldb2;->c:Ljava/lang/Object;

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
    iput-object p1, p0, Lkg5;->n:Lnw4;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lkg5;->p:Ldb2;

    .line 2
    .line 3
    iget-object v1, v0, Ldb2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lpg5;

    .line 6
    .line 7
    iget-object v0, v0, Ldb2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lyx4;

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
    iget-object v3, p0, Lkg5;->n:Lnw4;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lyx4;->p()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3}, Lnw4;->k()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    if-nez v3, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lpg5$b;->k:Ljava/lang/String;

    .line 34
    .line 35
    :cond_1
    :try_start_0
    invoke-static {}, Lyx4;->m()Lyx4$a;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0}, Lll0;->b()Lv64$c;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Lll0$a;->e(Lv64$c;)Lll0$a;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lyx4$a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lll0;->c()Lv64$e;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Lll0$a;->g(Lv64$e;)Lll0$a;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lyx4$a;

    .line 58
    .line 59
    invoke-virtual {v0}, Lfw0;->f()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lyx4$a;

    .line 68
    .line 69
    invoke-virtual {v0}, Lfw0;->g()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Lfw0$a;->s(Ljava/lang/String;)Lfw0$a;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lyx4$a;

    .line 78
    .line 79
    invoke-virtual {v0}, Lyx4;->n()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Lyx4$a;->C(Ljava/lang/String;)Lyx4$a;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v0}, Lyx4;->o()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Lyx4$a;->D(Ljava/lang/String;)Lyx4$a;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v0}, Lyx4;->q()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Lyx4$a;->K(Ljava/lang/Integer;)Lyx4$a;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0}, Lyx4;->r()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v4, v0}, Lyx4$a;->L(Ljava/lang/String;)Lyx4$a;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v3}, Lyx4$a;->J(Ljava/lang/String;)Lyx4$a;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lyx4;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcn0;->z(Lyx4;)Ljava/util/concurrent/CompletableFuture;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lzx4;

    .line 134
    .line 135
    iget-object v0, v0, Lzx4;->a:Lnw4;

    .line 136
    .line 137
    iput-object v0, p0, Lkg5;->n:Lnw4;

    .line 138
    .line 139
    iput-object v0, p0, Lpg5$b;->f:Lxx4;
    :try_end_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    return-void

    .line 142
    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {p0}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 147
    .line 148
    .line 149
    throw v2
.end method
