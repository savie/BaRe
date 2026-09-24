.class public Lcom/google/firebase/auth/FirebaseAuthRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lnc6;Lnc6;Lnc6;Lnc6;Lnc6;Ljo1;)Lo49;
    .locals 10

    .line 1
    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    invoke-interface {p5, v0}, Ljo1;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/google/firebase/FirebaseApp;

    .line 9
    .line 10
    const-class v0, Lne4;

    .line 11
    .line 12
    invoke-interface {p5, v0}, Ljo1;->c(Ljava/lang/Class;)Lga6;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-class v0, Lr34;

    .line 17
    .line 18
    invoke-interface {p5, v0}, Ljo1;->c(Ljava/lang/Class;)Lga6;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v1, Lo49;

    .line 23
    .line 24
    invoke-interface {p5, p0}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    move-object v5, p0

    .line 29
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    invoke-interface {p5, p1}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    move-object v6, p0

    .line 36
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-interface {p5, p2}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    move-object v7, p0

    .line 43
    check-cast v7, Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    invoke-interface {p5, p3}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    move-object v8, p0

    .line 50
    check-cast v8, Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    .line 52
    invoke-interface {p5, p4}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    move-object v9, p0

    .line 57
    check-cast v9, Ljava/util/concurrent/Executor;

    .line 58
    .line 59
    invoke-direct/range {v1 .. v9}, Lo49;-><init>(Lcom/google/firebase/FirebaseApp;Lga6;Lga6;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    .line 60
    .line 61
    .line 62
    return-object v1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lun1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lnc6;

    .line 2
    .line 3
    const-class v0, Lak0;

    .line 4
    .line 5
    const-class v1, Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lnc6;

    .line 11
    .line 12
    const-class v2, Lht0;

    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lnc6;

    .line 18
    .line 19
    const-class v3, Lku4;

    .line 20
    .line 21
    invoke-direct {v2, v3, v1}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lnc6;

    .line 25
    .line 26
    const-class v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    invoke-direct {v4, v3, v5}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lnc6;

    .line 32
    .line 33
    const-class v5, Lld8;

    .line 34
    .line 35
    invoke-direct {v3, v5, v1}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const-class v1, Lae4;

    .line 39
    .line 40
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v5, Ltn1;

    .line 45
    .line 46
    const-class v6, Lo49;

    .line 47
    .line 48
    invoke-direct {v5, v6, v1}, Ltn1;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 52
    .line 53
    invoke-static {v1}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lji2;

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    const-class v7, Lr34;

    .line 64
    .line 65
    invoke-direct {v1, v6, v6, v7}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lji2;

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-direct {v1, p0, v6, v7}, Lji2;-><init>(Lnc6;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lji2;

    .line 81
    .line 82
    invoke-direct {v1, v0, v6, v7}, Lji2;-><init>(Lnc6;II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lji2;

    .line 89
    .line 90
    invoke-direct {v1, v2, v6, v7}, Lji2;-><init>(Lnc6;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lji2;

    .line 97
    .line 98
    invoke-direct {v1, v4, v6, v7}, Lji2;-><init>(Lnc6;II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lji2;

    .line 105
    .line 106
    invoke-direct {v1, v3, v6, v7}, Lji2;-><init>(Lnc6;II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lji2;

    .line 113
    .line 114
    const-class v8, Lne4;

    .line 115
    .line 116
    invoke-direct {v1, v7, v6, v8}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v1}, Ltn1;->a(Lji2;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Lt54;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object p0, v1, Lt54;->a:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v0, v1, Lt54;->b:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v2, v1, Lt54;->c:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v4, v1, Lt54;->d:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v3, v1, Lt54;->e:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v1, v5, Ltn1;->f:Lmo1;

    .line 138
    .line 139
    invoke-virtual {v5}, Ltn1;->b()Lun1;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    new-instance v0, Lq34;

    .line 144
    .line 145
    invoke-direct {v0, v7}, Lq34;-><init>(I)V

    .line 146
    .line 147
    .line 148
    const-class v1, Lq34;

    .line 149
    .line 150
    invoke-static {v1}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iput v6, v1, Ltn1;->e:I

    .line 155
    .line 156
    new-instance v2, Lrn1;

    .line 157
    .line 158
    invoke-direct {v2, v0, v7}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    iput-object v2, v1, Ltn1;->f:Lmo1;

    .line 162
    .line 163
    invoke-virtual {v1}, Ltn1;->b()Lun1;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "fire-auth"

    .line 168
    .line 169
    const-string v2, "24.1.0"

    .line 170
    .line 171
    invoke-static {v1, v2}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    filled-new-array {p0, v0, v1}, [Lun1;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0
.end method
