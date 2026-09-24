.class public abstract Lx80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lz80;

.field public static final b:Lz80;

.field public static final c:Lz80;

.field public static final d:Lz80;

.field public static final e:Lz80;

.field public static final f:Lz80;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Invalid discovery document"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const-string v1, "User cancelled flow"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lx80;->a:Lz80;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const-string v1, "Flow cancelled programmatically"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lx80;->b:Lz80;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    const-string v1, "Network error"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lx80;->c:Lz80;

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    const-string v1, "Server error"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    const-string v1, "JSON deserialization error"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lx80;->d:Lz80;

    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    const-string v1, "Token response construction error"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x7

    .line 56
    const-string v1, "Invalid registration response"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x8

    .line 62
    .line 63
    const-string v1, "Unable to parse ID Token"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lx80;->e:Lz80;

    .line 70
    .line 71
    const/16 v0, 0x9

    .line 72
    .line 73
    const-string v1, "Invalid ID Token"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lx80;->f:Lz80;

    .line 80
    .line 81
    return-void
.end method
