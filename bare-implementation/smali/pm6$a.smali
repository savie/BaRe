.class public final enum Lpm6$a;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpm6$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpm6$a;",
        ">;"
    }
.end annotation

.annotation runtime Lno6;
    name = "CannedAcl"
.end annotation

.annotation runtime Lxv1;
    value = Lpm6$a$a;
.end annotation


# static fields
.field public static final enum b:Lpm6$a;

.field public static final enum c:Lpm6$a;

.field public static final enum d:Lpm6$a;

.field public static final enum e:Lpm6$a;

.field public static final enum f:Lpm6$a;

.field public static final enum k:Lpm6$a;

.field public static final enum n:Lpm6$a;

.field private static final synthetic p:[Lpm6$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lpm6$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "private"

    .line 5
    .line 6
    const-string v3, "PRIVATE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lpm6$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lpm6$a;->b:Lpm6$a;

    .line 12
    .line 13
    new-instance v1, Lpm6$a;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "public-read"

    .line 17
    .line 18
    const-string v4, "PUBLIC_READ"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lpm6$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lpm6$a;->c:Lpm6$a;

    .line 24
    .line 25
    new-instance v2, Lpm6$a;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "public-read-write"

    .line 29
    .line 30
    const-string v5, "PUBLIC_READ_WRITE"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lpm6$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lpm6$a;->d:Lpm6$a;

    .line 36
    .line 37
    new-instance v3, Lpm6$a;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "authenticated-read"

    .line 41
    .line 42
    const-string v6, "AUTHENTICATED_READ"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lpm6$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lpm6$a;->e:Lpm6$a;

    .line 48
    .line 49
    new-instance v4, Lpm6$a;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const-string v6, "aws-exec-read"

    .line 53
    .line 54
    const-string v7, "AWS_EXEC_READ"

    .line 55
    .line 56
    invoke-direct {v4, v7, v5, v6}, Lpm6$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lpm6$a;->f:Lpm6$a;

    .line 60
    .line 61
    new-instance v5, Lpm6$a;

    .line 62
    .line 63
    const/4 v6, 0x5

    .line 64
    const-string v7, "bucket-owner-read"

    .line 65
    .line 66
    const-string v8, "BUCKET_OWNER_READ"

    .line 67
    .line 68
    invoke-direct {v5, v8, v6, v7}, Lpm6$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v5, Lpm6$a;->k:Lpm6$a;

    .line 72
    .line 73
    new-instance v6, Lpm6$a;

    .line 74
    .line 75
    const/4 v7, 0x6

    .line 76
    const-string v8, "bucket-owner-full-control"

    .line 77
    .line 78
    const-string v9, "BUCKET_OWNER_FULL_CONTROL"

    .line 79
    .line 80
    invoke-direct {v6, v9, v7, v8}, Lpm6$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v6, Lpm6$a;->n:Lpm6$a;

    .line 84
    .line 85
    filled-new-array/range {v0 .. v6}, [Lpm6$a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lpm6$a;->p:[Lpm6$a;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lpm6$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lpm6$a;
    .locals 5
    .annotation runtime Lfj4;
    .end annotation

    .line 1
    invoke-static {}, Lpm6$a;->values()[Lpm6$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, v3, Lpm6$a;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "Unknown canned ACL \'"

    .line 24
    .line 25
    const-string v1, "\'"

    .line 26
    .line 27
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lpm6$a;
    .locals 1

    .line 1
    const-class v0, Lpm6$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpm6$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lpm6$a;
    .locals 1

    .line 1
    sget-object v0, Lpm6$a;->p:[Lpm6$a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lpm6$a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lpm6$a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpm6$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
