.class public abstract Lpu9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lmu9;

.field public static final b:Lmu9;

.field public static final c:Leu9;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    sget-object v0, Llu9;->f:Llu9;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Llu9;->d:Llu9;

    .line 10
    .line 11
    sget-object v3, Lku9;->b:Lku9;

    .line 12
    .line 13
    const/16 v4, 0x20

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    :try_start_0
    invoke-static {}, Lmu9;->b()Lkc;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iput-object v5, v6, Lkc;->b:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v7, 0x10

    .line 26
    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    iput-object v8, v6, Lkc;->c:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v3, v6, Lkc;->e:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object v2, v6, Lkc;->d:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v6}, Lkc;->c()Lmu9;

    .line 38
    .line 39
    .line 40
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 41
    sput-object v6, Lpu9;->a:Lmu9;

    .line 42
    .line 43
    :try_start_1
    invoke-static {}, Lmu9;->b()Lkc;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iput-object v5, v6, Lkc;->b:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v5, v6, Lkc;->c:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object v3, v6, Lkc;->e:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object v2, v6, Lkc;->d:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v6}, Lkc;->c()Lmu9;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-static {}, Lmu9;->b()Lkc;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v1, v2, Lkc;->b:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v5, v2, Lkc;->c:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v3, v2, Lkc;->e:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v0, v2, Lkc;->d:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v2}, Lkc;->c()Lmu9;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    .line 72
    .line 73
    :try_start_3
    invoke-static {}, Lmu9;->b()Lkc;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iput-object v1, v2, Lkc;->b:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v1, v2, Lkc;->c:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object v3, v2, Lkc;->e:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v0, v2, Lkc;->d:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v2}, Lkc;->c()Lmu9;

    .line 86
    .line 87
    .line 88
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 89
    sput-object v0, Lpu9;->b:Lmu9;

    .line 90
    .line 91
    :try_start_4
    invoke-static {}, Leu9;->b()Ll22;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, v4}, Ll22;->r(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v7}, Ll22;->s(I)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Ldu9;->c:Ldu9;

    .line 102
    .line 103
    iput-object v1, v0, Ll22;->d:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {v0}, Ll22;->q()Leu9;

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 109
    sput-object v0, Lpu9;->c:Leu9;

    .line 110
    .line 111
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Lyt9;

    .line 114
    .line 115
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :catch_1
    move-exception v0

    .line 120
    new-instance v1, Lyt9;

    .line 121
    .line 122
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :catch_2
    move-exception v0

    .line 127
    new-instance v1, Lyt9;

    .line 128
    .line 129
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw v1

    .line 133
    :catch_3
    move-exception v0

    .line 134
    new-instance v1, Lyt9;

    .line 135
    .line 136
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw v1

    .line 140
    :catch_4
    move-exception v0

    .line 141
    new-instance v1, Lyt9;

    .line 142
    .line 143
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw v1
.end method
