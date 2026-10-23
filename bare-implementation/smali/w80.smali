.class public abstract Lw80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lz80;

.field public static final b:Lz80;

.field public static final c:Lz80;

.field public static final d:Lz80;

.field public static final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    const-string v1, "invalid_request"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sput-object v2, Lw80;->a:Lz80;

    .line 10
    .line 11
    const/16 v0, 0x3e9

    .line 12
    .line 13
    const-string v1, "unauthorized_client"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v0, 0x3ea

    .line 20
    .line 21
    const-string v1, "access_denied"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/16 v0, 0x3eb

    .line 28
    .line 29
    const-string v1, "unsupported_response_type"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/16 v0, 0x3ec

    .line 36
    .line 37
    const-string v1, "invalid_scope"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/16 v0, 0x3ed

    .line 44
    .line 45
    const-string v1, "server_error"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/16 v0, 0x3ee

    .line 52
    .line 53
    const-string v1, "temporarily_unavailable"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const/16 v0, 0x3ef

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    sput-object v9, Lw80;->b:Lz80;

    .line 67
    .line 68
    const/16 v0, 0x3f0

    .line 69
    .line 70
    invoke-static {v0, v1}, Lz80;->b(ILjava/lang/String;)Lz80;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    sput-object v10, Lw80;->c:Lz80;

    .line 75
    .line 76
    const/16 v0, 0x9

    .line 77
    .line 78
    const-string v1, "Response state param did not match request state"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lz80;->a(ILjava/lang/String;)Lz80;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lw80;->d:Lz80;

    .line 85
    .line 86
    filled-new-array/range {v2 .. v10}, [Lz80;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lz80;->c([Lz80;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lw80;->e:Ljava/util/Map;

    .line 95
    .line 96
    return-void
.end method
