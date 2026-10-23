.class public final enum Luv5;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ljava/util/Map;

.field public static final synthetic c:[Luv5;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Luv5;

    .line 2
    .line 3
    const/16 v1, 0x6601

    .line 4
    .line 5
    const-string v2, "DES"

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    invoke-direct {v0, v2, v10, v1}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Luv5;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/16 v3, 0x6602

    .line 15
    .line 16
    const-string v4, "RC2pre52"

    .line 17
    .line 18
    invoke-direct {v1, v4, v2, v3}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Luv5;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const/16 v4, 0x6603

    .line 25
    .line 26
    const-string v5, "TripleDES168"

    .line 27
    .line 28
    invoke-direct {v2, v5, v3, v4}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Luv5;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const/16 v5, 0x6609

    .line 35
    .line 36
    const-string v6, "TripleDES192"

    .line 37
    .line 38
    invoke-direct {v3, v6, v4, v5}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Luv5;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const/16 v6, 0x660e

    .line 45
    .line 46
    const-string v7, "AES128"

    .line 47
    .line 48
    invoke-direct {v4, v7, v5, v6}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Luv5;

    .line 52
    .line 53
    const/4 v6, 0x5

    .line 54
    const/16 v7, 0x660f

    .line 55
    .line 56
    const-string v8, "AES192"

    .line 57
    .line 58
    invoke-direct {v5, v8, v6, v7}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Luv5;

    .line 62
    .line 63
    const/4 v7, 0x6

    .line 64
    const/16 v8, 0x6610

    .line 65
    .line 66
    const-string v9, "AES256"

    .line 67
    .line 68
    invoke-direct {v6, v9, v7, v8}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Luv5;

    .line 72
    .line 73
    const/4 v8, 0x7

    .line 74
    const/16 v9, 0x6702

    .line 75
    .line 76
    const-string v11, "RC2"

    .line 77
    .line 78
    invoke-direct {v7, v11, v8, v9}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Luv5;

    .line 82
    .line 83
    const/16 v9, 0x8

    .line 84
    .line 85
    const/16 v11, 0x6801

    .line 86
    .line 87
    const-string v12, "RC4"

    .line 88
    .line 89
    invoke-direct {v8, v12, v9, v11}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    new-instance v9, Luv5;

    .line 93
    .line 94
    const/16 v11, 0x9

    .line 95
    .line 96
    const v12, 0xffff

    .line 97
    .line 98
    .line 99
    const-string v13, "UNKNOWN"

    .line 100
    .line 101
    invoke-direct {v9, v13, v11, v12}, Luv5;-><init>(Ljava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    filled-new-array/range {v0 .. v9}, [Luv5;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Luv5;->c:[Luv5;

    .line 109
    .line 110
    new-instance v0, Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Luv5;->values()[Luv5;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    array-length v2, v1

    .line 120
    :goto_0
    if-ge v10, v2, :cond_0

    .line 121
    .line 122
    aget-object v3, v1, v10

    .line 123
    .line 124
    iget v4, v3, Luv5;->a:I

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    add-int/lit8 v10, v10, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Luv5;->b:Ljava/util/Map;

    .line 141
    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Luv5;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luv5;
    .locals 1

    .line 1
    const-class v0, Luv5;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Luv5;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Luv5;
    .locals 1

    .line 1
    sget-object v0, Luv5;->c:[Luv5;

    .line 2
    .line 3
    invoke-virtual {v0}, [Luv5;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Luv5;

    .line 8
    .line 9
    return-object v0
.end method
