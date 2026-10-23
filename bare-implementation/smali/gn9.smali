.class public final Lgn9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lyd9;

.field public static final b:Lrd9;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lfd9;->a()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lea3;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v0, v2, v2}, Lea3;-><init>(Landroid/net/Uri;ZZ)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v3, Lxd9;

    .line 18
    .line 19
    const-string v4, "getTokenRefactor__account_data_service_sample_percentage"

    .line 20
    .line 21
    invoke-direct {v3, v1, v4, v0}, Lje9;-><init>(Lea3;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "getTokenRefactor__account_data_service_tokenAPI_usable"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Lea3;->b(Ljava/lang/String;Z)Lrd9;

    .line 27
    .line 28
    .line 29
    const-string v3, "getTokenRefactor__account_manager_timeout_seconds"

    .line 30
    .line 31
    const-wide/16 v4, 0x14

    .line 32
    .line 33
    invoke-virtual {v1, v4, v5, v3}, Lea3;->a(JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "getTokenRefactor__android_id_shift"

    .line 37
    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    invoke-virtual {v1, v6, v7, v3}, Lea3;->a(JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    const-string v3, "ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n"

    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Lwm9;->j([B)Lwm9;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v6, Lyd9;

    .line 55
    .line 56
    const-string v7, "getTokenRefactor__blocked_packages"

    .line 57
    .line 58
    invoke-direct {v6, v1, v7, v3}, Lje9;-><init>(Lea3;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sput-object v6, Lgn9;->a:Lyd9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    const-string v3, "getTokenRefactor__chimera_get_token_evolved"

    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Lea3;->b(Ljava/lang/String;Z)Lrd9;

    .line 66
    .line 67
    .line 68
    const-string v3, "getTokenRefactor__clear_token_timeout_seconds"

    .line 69
    .line 70
    invoke-virtual {v1, v4, v5, v3}, Lea3;->a(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v3, "getTokenRefactor__default_task_timeout_seconds"

    .line 74
    .line 75
    invoke-virtual {v1, v4, v5, v3}, Lea3;->a(JLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v3, "getTokenRefactor__gaul_accounts_api_evolved"

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-virtual {v1, v3, v4}, Lea3;->b(Ljava/lang/String;Z)Lrd9;

    .line 82
    .line 83
    .line 84
    const-string v3, "getTokenRefactor__gaul_token_api_evolved"

    .line 85
    .line 86
    invoke-virtual {v1, v3, v4}, Lea3;->b(Ljava/lang/String;Z)Lrd9;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    sput-object v3, Lgn9;->b:Lrd9;

    .line 91
    .line 92
    const-string v3, "getTokenRefactor__get_token_timeout_seconds"

    .line 93
    .line 94
    const-wide/16 v4, 0x78

    .line 95
    .line 96
    invoke-virtual {v1, v4, v5, v3}, Lea3;->a(JLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v3, "getTokenRefactor__gms_account_authenticator_evolved"

    .line 100
    .line 101
    invoke-virtual {v1, v3, v2}, Lea3;->b(Ljava/lang/String;Z)Lrd9;

    .line 102
    .line 103
    .line 104
    const-string v2, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    .line 105
    .line 106
    new-instance v3, Lxd9;

    .line 107
    .line 108
    invoke-direct {v3, v1, v2, v0}, Lje9;-><init>(Lea3;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0}, Le6;->e(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
