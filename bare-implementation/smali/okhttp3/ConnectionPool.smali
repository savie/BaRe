.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>(IIIIILokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RouteDatabase;ZZ)V
    .locals 17

    .line 1
    move/from16 v0, p5

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    const-wide/16 v3, 0x5

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const-wide/16 v3, 0x1

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v6, v0, 0x8

    .line 30
    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    sget-object v6, Lokhttp3/internal/concurrent/TaskRunner;->t:Lokhttp3/internal/concurrent/TaskRunner;

    .line 34
    .line 35
    move-object v13, v6

    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-object/from16 v13, p6

    .line 38
    .line 39
    :goto_3
    and-int/lit8 v6, v0, 0x20

    .line 40
    .line 41
    const/16 v7, 0x2710

    .line 42
    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    move v8, v7

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move/from16 v8, p1

    .line 48
    .line 49
    :goto_4
    and-int/lit8 v6, v0, 0x40

    .line 50
    .line 51
    if-eqz v6, :cond_5

    .line 52
    .line 53
    move v9, v7

    .line 54
    goto :goto_5

    .line 55
    :cond_5
    move/from16 v9, p2

    .line 56
    .line 57
    :goto_5
    and-int/lit16 v6, v0, 0x80

    .line 58
    .line 59
    if-eqz v6, :cond_6

    .line 60
    .line 61
    move v10, v7

    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move/from16 v10, p3

    .line 64
    .line 65
    :goto_6
    and-int/lit16 v6, v0, 0x100

    .line 66
    .line 67
    if-eqz v6, :cond_7

    .line 68
    .line 69
    move v11, v7

    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move/from16 v11, p4

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v6, v0, 0x200

    .line 74
    .line 75
    if-eqz v6, :cond_8

    .line 76
    .line 77
    move v12, v7

    .line 78
    goto :goto_8

    .line 79
    :cond_8
    move v12, v2

    .line 80
    :goto_8
    and-int/lit16 v2, v0, 0x400

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    if-eqz v2, :cond_9

    .line 84
    .line 85
    move v15, v6

    .line 86
    goto :goto_9

    .line 87
    :cond_9
    move/from16 v15, p8

    .line 88
    .line 89
    :goto_9
    and-int/lit16 v2, v0, 0x800

    .line 90
    .line 91
    if-eqz v2, :cond_a

    .line 92
    .line 93
    move/from16 v16, v6

    .line 94
    .line 95
    goto :goto_a

    .line 96
    :cond_a
    move/from16 v16, p9

    .line 97
    .line 98
    :goto_a
    and-int/lit16 v0, v0, 0x1000

    .line 99
    .line 100
    if-eqz v0, :cond_b

    .line 101
    .line 102
    new-instance v0, Lokhttp3/internal/connection/RouteDatabase;

    .line 103
    .line 104
    invoke-direct {v0}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    .line 105
    .line 106
    .line 107
    move-object v14, v0

    .line 108
    goto :goto_b

    .line 109
    :cond_b
    move-object/from16 v14, p7

    .line 110
    .line 111
    :goto_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool;

    .line 118
    .line 119
    new-instance v7, Lbs1;

    .line 120
    .line 121
    invoke-direct/range {v7 .. v16}, Lbs1;-><init>(IIIIILokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RouteDatabase;ZZ)V

    .line 122
    .line 123
    .line 124
    sget-object v2, Lokhttp3/internal/connection/ConnectionListener;->a:Lokhttp3/internal/connection/ConnectionListener$Companion$NONE$1;

    .line 125
    .line 126
    move-object/from16 p1, v0

    .line 127
    .line 128
    move/from16 p3, v1

    .line 129
    .line 130
    move-object/from16 p7, v2

    .line 131
    .line 132
    move-wide/from16 p4, v3

    .line 133
    .line 134
    move-object/from16 p6, v5

    .line 135
    .line 136
    move-object/from16 p8, v7

    .line 137
    .line 138
    move-object/from16 p2, v13

    .line 139
    .line 140
    invoke-direct/range {p1 .. p8}, Lokhttp3/internal/connection/RealConnectionPool;-><init>(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;Lbs1;)V

    .line 141
    .line 142
    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    move-object/from16 v1, p0

    .line 147
    .line 148
    iput-object v0, v1, Lokhttp3/ConnectionPool;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 149
    .line 150
    return-void
.end method
