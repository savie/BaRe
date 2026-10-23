.class public abstract Ly80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lz80;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    const-string v1, "invalid_request"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v0, 0x7d1

    .line 10
    .line 11
    const-string v1, "invalid_client"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v0, 0x7d2

    .line 18
    .line 19
    const-string v1, "invalid_grant"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/16 v0, 0x7d3

    .line 26
    .line 27
    const-string v1, "unauthorized_client"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/16 v0, 0x7d4

    .line 34
    .line 35
    const-string v1, "unsupported_grant_type"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/16 v0, 0x7d5

    .line 42
    .line 43
    const-string v1, "invalid_scope"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/16 v0, 0x7d6

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const/16 v0, 0x7d7

    .line 57
    .line 58
    invoke-static {v0, v1}, Lz80;->d(ILjava/lang/String;)Lz80;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    sput-object v9, Ly80;->a:Lz80;

    .line 63
    .line 64
    filled-new-array/range {v2 .. v9}, [Lz80;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lz80;->c([Lz80;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Ly80;->b:Ljava/util/Map;

    .line 73
    .line 74
    return-void
.end method
