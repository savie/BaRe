.class public final enum Ldl4;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lad2;


# static fields
.field public static final synthetic c:[Ldl4;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ldl4;

    .line 2
    .line 3
    const-string v1, "READ_NULL_PROPERTIES"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Ldl4;-><init>(Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ldl4;

    .line 11
    .line 12
    const-string v4, "WRITE_NULL_PROPERTIES"

    .line 13
    .line 14
    invoke-direct {v1, v4, v3, v3}, Ldl4;-><init>(Ljava/lang/String;IZ)V

    .line 15
    .line 16
    .line 17
    move v4, v2

    .line 18
    new-instance v2, Ldl4;

    .line 19
    .line 20
    const-string v5, "WRITE_PROPERTIES_SORTED"

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    invoke-direct {v2, v5, v6, v4}, Ldl4;-><init>(Ljava/lang/String;IZ)V

    .line 24
    .line 25
    .line 26
    move v5, v3

    .line 27
    new-instance v3, Ldl4;

    .line 28
    .line 29
    const-string v6, "STRIP_TRAILING_BIGDECIMAL_ZEROES"

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    invoke-direct {v3, v6, v7, v5}, Ldl4;-><init>(Ljava/lang/String;IZ)V

    .line 33
    .line 34
    .line 35
    move v5, v4

    .line 36
    new-instance v4, Ldl4;

    .line 37
    .line 38
    const-string v6, "FAIL_ON_NAN_TO_BIG_DECIMAL_COERCION"

    .line 39
    .line 40
    const/4 v7, 0x4

    .line 41
    invoke-direct {v4, v6, v7, v5}, Ldl4;-><init>(Ljava/lang/String;IZ)V

    .line 42
    .line 43
    .line 44
    move v6, v5

    .line 45
    new-instance v5, Ldl4;

    .line 46
    .line 47
    const-string v7, "USE_BIG_DECIMAL_FOR_FLOATS"

    .line 48
    .line 49
    const/4 v8, 0x5

    .line 50
    invoke-direct {v5, v7, v8, v6}, Ldl4;-><init>(Ljava/lang/String;IZ)V

    .line 51
    .line 52
    .line 53
    filled-new-array/range {v0 .. v5}, [Ldl4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Ldl4;->c:[Ldl4;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Ldl4;->a:Z

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
    iput p1, p0, Ldl4;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldl4;
    .locals 1

    .line 1
    const-class v0, Ldl4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ldl4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ldl4;
    .locals 1

    .line 1
    sget-object v0, Ldl4;->c:[Ldl4;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ldl4;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ldl4;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 1
    iget p0, p0, Ldl4;->b:I

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

.method public final b()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
