.class public final enum Lvo4;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum c:Lvo4;

.field public static final enum d:Lvo4;

.field public static final enum e:Lvo4;

.field public static final enum f:Lvo4;

.field public static final synthetic k:[Lvo4;


# instance fields
.field public final a:B

.field public final b:Lto4;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lvo4;

    .line 2
    .line 3
    new-instance v1, Luo4;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0x400

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lto4;-><init>(III)V

    .line 10
    .line 11
    .line 12
    const-string v3, "RSA1024"

    .line 13
    .line 14
    const/4 v5, 0x6

    .line 15
    invoke-direct {v0, v3, v4, v5, v1}, Lvo4;-><init>(Ljava/lang/String;IBLto4;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lvo4;->c:Lvo4;

    .line 19
    .line 20
    new-instance v1, Lvo4;

    .line 21
    .line 22
    new-instance v3, Luo4;

    .line 23
    .line 24
    const/16 v5, 0x800

    .line 25
    .line 26
    invoke-direct {v3, v2, v5, v4}, Lto4;-><init>(III)V

    .line 27
    .line 28
    .line 29
    const-string v4, "RSA2048"

    .line 30
    .line 31
    const/4 v5, 0x7

    .line 32
    invoke-direct {v1, v4, v2, v5, v3}, Lvo4;-><init>(Ljava/lang/String;IBLto4;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lvo4;->d:Lvo4;

    .line 36
    .line 37
    new-instance v2, Lvo4;

    .line 38
    .line 39
    new-instance v3, Lso4;

    .line 40
    .line 41
    sget-object v4, Lzt2;->c:Lzt2;

    .line 42
    .line 43
    invoke-direct {v3, v4}, Lso4;-><init>(Lzt2;)V

    .line 44
    .line 45
    .line 46
    const-string v4, "ECCP256"

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    const/16 v6, 0x11

    .line 50
    .line 51
    invoke-direct {v2, v4, v5, v6, v3}, Lvo4;-><init>(Ljava/lang/String;IBLto4;)V

    .line 52
    .line 53
    .line 54
    sput-object v2, Lvo4;->e:Lvo4;

    .line 55
    .line 56
    new-instance v3, Lvo4;

    .line 57
    .line 58
    new-instance v4, Lso4;

    .line 59
    .line 60
    sget-object v5, Lzt2;->d:Lzt2;

    .line 61
    .line 62
    invoke-direct {v4, v5}, Lso4;-><init>(Lzt2;)V

    .line 63
    .line 64
    .line 65
    const-string v5, "ECCP384"

    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    const/16 v7, 0x14

    .line 69
    .line 70
    invoke-direct {v3, v5, v6, v7, v4}, Lvo4;-><init>(Ljava/lang/String;IBLto4;)V

    .line 71
    .line 72
    .line 73
    sput-object v3, Lvo4;->f:Lvo4;

    .line 74
    .line 75
    filled-new-array {v0, v1, v2, v3}, [Lvo4;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lvo4;->k:[Lvo4;

    .line 80
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IBLto4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-byte p3, p0, Lvo4;->a:B

    .line 5
    .line 6
    iput-object p4, p0, Lvo4;->b:Lto4;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvo4;
    .locals 1

    .line 1
    const-class v0, Lvo4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvo4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lvo4;
    .locals 1

    .line 1
    sget-object v0, Lvo4;->k:[Lvo4;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lvo4;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvo4;

    .line 8
    .line 9
    return-object v0
.end method
