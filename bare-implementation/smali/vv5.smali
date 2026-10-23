.class public final enum Lvv5;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ljava/util/Map;

.field public static final synthetic c:[Lvv5;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lvv5;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    invoke-direct {v0, v1, v8, v8}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lvv5;

    .line 10
    .line 11
    const-string v2, "CRC32"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3, v3}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lvv5;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const v4, 0x8003

    .line 21
    .line 22
    .line 23
    const-string v5, "MD5"

    .line 24
    .line 25
    invoke-direct {v2, v5, v3, v4}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lvv5;

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    const v5, 0x8004

    .line 32
    .line 33
    .line 34
    const-string v6, "SHA1"

    .line 35
    .line 36
    invoke-direct {v3, v6, v4, v5}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lvv5;

    .line 40
    .line 41
    const/4 v5, 0x4

    .line 42
    const v6, 0x8007

    .line 43
    .line 44
    .line 45
    const-string v7, "RIPEND160"

    .line 46
    .line 47
    invoke-direct {v4, v7, v5, v6}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    new-instance v5, Lvv5;

    .line 51
    .line 52
    const/4 v6, 0x5

    .line 53
    const v7, 0x800c

    .line 54
    .line 55
    .line 56
    const-string v9, "SHA256"

    .line 57
    .line 58
    invoke-direct {v5, v9, v6, v7}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lvv5;

    .line 62
    .line 63
    const/4 v7, 0x6

    .line 64
    const v9, 0x800d

    .line 65
    .line 66
    .line 67
    const-string v10, "SHA384"

    .line 68
    .line 69
    invoke-direct {v6, v10, v7, v9}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    new-instance v7, Lvv5;

    .line 73
    .line 74
    const/4 v9, 0x7

    .line 75
    const v10, 0x800e

    .line 76
    .line 77
    .line 78
    const-string v11, "SHA512"

    .line 79
    .line 80
    invoke-direct {v7, v11, v9, v10}, Lvv5;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    filled-new-array/range {v0 .. v7}, [Lvv5;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lvv5;->c:[Lvv5;

    .line 88
    .line 89
    new-instance v0, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lvv5;->values()[Lvv5;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    array-length v2, v1

    .line 99
    :goto_0
    if-ge v8, v2, :cond_0

    .line 100
    .line 101
    aget-object v3, v1, v8

    .line 102
    .line 103
    iget v4, v3, Lvv5;->a:I

    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lvv5;->b:Ljava/util/Map;

    .line 120
    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lvv5;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvv5;
    .locals 1

    .line 1
    const-class v0, Lvv5;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvv5;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lvv5;
    .locals 1

    .line 1
    sget-object v0, Lvv5;->c:[Lvv5;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lvv5;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvv5;

    .line 8
    .line 9
    return-object v0
.end method
