.class public abstract Lsu9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lot9;

.field public static final b:Lot9;

.field public static final c:Lht9;

.field public static final d:Lft9;

.field public static final e:Lfs9;

.field public static final f:Lds9;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lot9;->j()Lyf1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lr0a;->e:Lr0a;

    .line 12
    .line 13
    sget-object v3, Lku9;->e:Lku9;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lr0a;->c:Lr0a;

    .line 19
    .line 20
    sget-object v3, Lku9;->b:Lku9;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lr0a;->d:Lr0a;

    .line 26
    .line 27
    sget-object v3, Lku9;->d:Lku9;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lr0a;->f:Lr0a;

    .line 33
    .line 34
    sget-object v3, Lku9;->c:Lku9;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lyf1;->t()Lot9;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sput-object v1, Lsu9;->a:Lot9;

    .line 44
    .line 45
    invoke-static {}, Lot9;->j()Lyf1;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Ljy9;->c:Ljy9;

    .line 50
    .line 51
    sget-object v3, Llu9;->b:Llu9;

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v2, Ljy9;->k:Ljy9;

    .line 57
    .line 58
    sget-object v3, Llu9;->c:Llu9;

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Ljy9;->e:Ljy9;

    .line 64
    .line 65
    sget-object v3, Llu9;->d:Llu9;

    .line 66
    .line 67
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Ljy9;->d:Ljy9;

    .line 71
    .line 72
    sget-object v3, Llu9;->e:Llu9;

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v2, Ljy9;->f:Ljy9;

    .line 78
    .line 79
    sget-object v3, Llu9;->f:Llu9;

    .line 80
    .line 81
    invoke-virtual {v1, v2, v3}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lyf1;->t()Lot9;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sput-object v1, Lsu9;->b:Lot9;

    .line 89
    .line 90
    new-instance v1, Lfk8;

    .line 91
    .line 92
    const/16 v2, 0x9

    .line 93
    .line 94
    invoke-direct {v1, v2}, Lfk8;-><init>(I)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lht9;

    .line 98
    .line 99
    const-class v3, Lmu9;

    .line 100
    .line 101
    invoke-direct {v2, v3, v1}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 102
    .line 103
    .line 104
    sput-object v2, Lsu9;->c:Lht9;

    .line 105
    .line 106
    new-instance v1, Llv1;

    .line 107
    .line 108
    const/16 v2, 0x19

    .line 109
    .line 110
    invoke-direct {v1, v2}, Llv1;-><init>(I)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Lft9;

    .line 114
    .line 115
    invoke-direct {v2, v0, v1}, Lft9;-><init>(Ld2a;Let9;)V

    .line 116
    .line 117
    .line 118
    sput-object v2, Lsu9;->d:Lft9;

    .line 119
    .line 120
    new-instance v1, Lfa9;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v2, Lfs9;

    .line 126
    .line 127
    const-class v3, Lhu9;

    .line 128
    .line 129
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 130
    .line 131
    .line 132
    sput-object v2, Lsu9;->e:Lfs9;

    .line 133
    .line 134
    new-instance v1, Lfo8;

    .line 135
    .line 136
    const/16 v2, 0x1c

    .line 137
    .line 138
    invoke-direct {v1, v2}, Lfo8;-><init>(I)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Lds9;

    .line 142
    .line 143
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 144
    .line 145
    .line 146
    sput-object v2, Lsu9;->f:Lds9;

    .line 147
    .line 148
    return-void
.end method
