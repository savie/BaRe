.class public final Lfi0;
.super Ljava/lang/Object;

# interfaces
.implements Lz61;


# static fields
.field public static final c:Lfi0;

.field public static final d:Lfi0;

.field public static final e:Lfi0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfi0;

    .line 2
    .line 3
    const-string v1, "bike128"

    .line 4
    .line 5
    const/16 v2, 0x3023

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lfi0;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lfi0;->c:Lfi0;

    .line 11
    .line 12
    new-instance v0, Lfi0;

    .line 13
    .line 14
    const-string v1, "bike192"

    .line 15
    .line 16
    const/16 v2, 0x6053

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lfi0;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lfi0;->d:Lfi0;

    .line 22
    .line 23
    new-instance v0, Lfi0;

    .line 24
    .line 25
    const-string v1, "bike256"

    .line 26
    .line 27
    const v2, 0xa00d

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lfi0;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lfi0;->e:Lfi0;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfi0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lfi0;->b:I

    .line 7
    .line 8
    new-instance p0, Lsl4;

    .line 9
    .line 10
    new-instance p0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p1, p2, -0x2

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    rsub-int/lit8 v0, v0, 0x20

    .line 22
    .line 23
    neg-int v1, p2

    .line 24
    invoke-static {v1}, Llg7;->u(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    move v3, v2

    .line 30
    :goto_0
    if-ge v3, v0, :cond_2

    .line 31
    .line 32
    add-int/lit8 v4, v3, -0x1

    .line 33
    .line 34
    shl-int v4, v2, v4

    .line 35
    .line 36
    const/16 v5, 0x40

    .line 37
    .line 38
    if-lt v4, v5, :cond_0

    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_0

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {p2, v1, v4}, Lsl4;->x(III)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_0
    shl-int v4, v2, v3

    .line 66
    .line 67
    and-int v6, p1, v4

    .line 68
    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    add-int/lit8 v4, v4, -0x1

    .line 72
    .line 73
    and-int/2addr v4, p1

    .line 74
    if-lt v4, v5, :cond_1

    .line 75
    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_1

    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {p2, v1, v4}, Lsl4;->x(III)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method
