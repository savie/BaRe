.class public final enum Lek4;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum G:Lek4;

.field public static final synthetic H:[Lek4;

.field public static final enum c:Lek4;

.field public static final enum d:Lek4;

.field public static final enum e:Lek4;

.field public static final enum f:Lek4;

.field public static final enum k:Lek4;

.field public static final enum n:Lek4;

.field public static final enum p:Lek4;

.field public static final enum q:Lek4;

.field public static final enum r:Lek4;

.field public static final enum t:Lek4;

.field public static final enum x:Lek4;

.field public static final enum y:Lek4;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lek4;

    .line 2
    .line 3
    const-string v1, "AUTO_CLOSE_TARGET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lek4;->c:Lek4;

    .line 11
    .line 12
    new-instance v1, Lek4;

    .line 13
    .line 14
    const-string v4, "AUTO_CLOSE_JSON_CONTENT"

    .line 15
    .line 16
    invoke-direct {v1, v4, v3, v3}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lek4;->d:Lek4;

    .line 20
    .line 21
    new-instance v4, Lek4;

    .line 22
    .line 23
    const-string v5, "FLUSH_PASSED_TO_STREAM"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v4, v5, v6, v3}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lek4;->e:Lek4;

    .line 30
    .line 31
    new-instance v5, Lek4;

    .line 32
    .line 33
    const-string v6, "QUOTE_FIELD_NAMES"

    .line 34
    .line 35
    const/4 v7, 0x3

    .line 36
    invoke-direct {v5, v6, v7, v3}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lek4;->f:Lek4;

    .line 40
    .line 41
    move-object v6, v4

    .line 42
    new-instance v4, Lek4;

    .line 43
    .line 44
    const-string v7, "QUOTE_NON_NUMERIC_NUMBERS"

    .line 45
    .line 46
    const/4 v8, 0x4

    .line 47
    invoke-direct {v4, v7, v8, v3}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 48
    .line 49
    .line 50
    sput-object v4, Lek4;->k:Lek4;

    .line 51
    .line 52
    move-object v7, v5

    .line 53
    new-instance v5, Lek4;

    .line 54
    .line 55
    const-string v8, "ESCAPE_NON_ASCII"

    .line 56
    .line 57
    const/4 v9, 0x5

    .line 58
    invoke-direct {v5, v8, v9, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 59
    .line 60
    .line 61
    sput-object v5, Lek4;->n:Lek4;

    .line 62
    .line 63
    move-object v8, v6

    .line 64
    new-instance v6, Lek4;

    .line 65
    .line 66
    const-string v9, "WRITE_NUMBERS_AS_STRINGS"

    .line 67
    .line 68
    const/4 v10, 0x6

    .line 69
    invoke-direct {v6, v9, v10, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 70
    .line 71
    .line 72
    sput-object v6, Lek4;->p:Lek4;

    .line 73
    .line 74
    move-object v9, v7

    .line 75
    new-instance v7, Lek4;

    .line 76
    .line 77
    const-string v10, "WRITE_BIGDECIMAL_AS_PLAIN"

    .line 78
    .line 79
    const/4 v11, 0x7

    .line 80
    invoke-direct {v7, v10, v11, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 81
    .line 82
    .line 83
    sput-object v7, Lek4;->q:Lek4;

    .line 84
    .line 85
    move-object v10, v8

    .line 86
    new-instance v8, Lek4;

    .line 87
    .line 88
    const-string v11, "STRICT_DUPLICATE_DETECTION"

    .line 89
    .line 90
    const/16 v12, 0x8

    .line 91
    .line 92
    invoke-direct {v8, v11, v12, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 93
    .line 94
    .line 95
    sput-object v8, Lek4;->r:Lek4;

    .line 96
    .line 97
    move-object v11, v9

    .line 98
    new-instance v9, Lek4;

    .line 99
    .line 100
    const-string v12, "IGNORE_UNKNOWN"

    .line 101
    .line 102
    const/16 v13, 0x9

    .line 103
    .line 104
    invoke-direct {v9, v12, v13, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 105
    .line 106
    .line 107
    move-object v12, v10

    .line 108
    new-instance v10, Lek4;

    .line 109
    .line 110
    const-string v13, "USE_FAST_DOUBLE_WRITER"

    .line 111
    .line 112
    const/16 v14, 0xa

    .line 113
    .line 114
    invoke-direct {v10, v13, v14, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 115
    .line 116
    .line 117
    sput-object v10, Lek4;->t:Lek4;

    .line 118
    .line 119
    move-object v13, v11

    .line 120
    new-instance v11, Lek4;

    .line 121
    .line 122
    const-string v14, "WRITE_HEX_UPPER_CASE"

    .line 123
    .line 124
    const/16 v15, 0xb

    .line 125
    .line 126
    invoke-direct {v11, v14, v15, v3}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 127
    .line 128
    .line 129
    sput-object v11, Lek4;->x:Lek4;

    .line 130
    .line 131
    move-object v3, v12

    .line 132
    new-instance v12, Lek4;

    .line 133
    .line 134
    const-string v14, "ESCAPE_FORWARD_SLASHES"

    .line 135
    .line 136
    const/16 v15, 0xc

    .line 137
    .line 138
    invoke-direct {v12, v14, v15, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 139
    .line 140
    .line 141
    sput-object v12, Lek4;->y:Lek4;

    .line 142
    .line 143
    move-object v14, v3

    .line 144
    move-object v3, v13

    .line 145
    new-instance v13, Lek4;

    .line 146
    .line 147
    const-string v15, "COMBINE_UNICODE_SURROGATES_IN_UTF8"

    .line 148
    .line 149
    move-object/from16 v16, v0

    .line 150
    .line 151
    const/16 v0, 0xd

    .line 152
    .line 153
    invoke-direct {v13, v15, v0, v2}, Lek4;-><init>(Ljava/lang/String;IZ)V

    .line 154
    .line 155
    .line 156
    sput-object v13, Lek4;->G:Lek4;

    .line 157
    .line 158
    move-object v2, v14

    .line 159
    move-object/from16 v0, v16

    .line 160
    .line 161
    filled-new-array/range {v0 .. v13}, [Lek4;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sput-object v0, Lek4;->H:[Lek4;

    .line 166
    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lek4;->a:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    shl-int/2addr p1, p2

    .line 12
    iput p1, p0, Lek4;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lek4;
    .locals 1

    .line 1
    const-class v0, Lek4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lek4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lek4;
    .locals 1

    .line 1
    sget-object v0, Lek4;->H:[Lek4;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lek4;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lek4;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lek4;->b:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method
