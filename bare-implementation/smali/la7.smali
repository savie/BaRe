.class public final synthetic Lla7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lla7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lla7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lla7;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lla7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/io/File;

    .line 9
    .line 10
    new-instance v0, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    const-string v0, "Requesting settings from "

    .line 17
    .line 18
    check-cast p0, Loe;

    .line 19
    .line 20
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lf80;

    .line 23
    .line 24
    iget-object v1, p0, Lf80;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lig9;

    .line 27
    .line 28
    iget-object p0, p0, Lf80;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lsa7;

    .line 31
    .line 32
    iget-object v2, v1, Lig9;->b:Ljava/lang/String;

    .line 33
    .line 34
    const-string v3, "FirebaseCrashlytics"

    .line 35
    .line 36
    const-string v4, "Settings query params were: "

    .line 37
    .line 38
    invoke-static {}, Ls02;->b()V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    :try_start_0
    invoke-static {p0}, Lig9;->b(Lsa7;)Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    new-instance v7, Le41;

    .line 47
    .line 48
    invoke-direct {v7, v2, v6}, Le41;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 49
    .line 50
    .line 51
    const-string v8, "User-Agent"

    .line 52
    .line 53
    const-string v9, "Crashlytics Android SDK/20.0.6"

    .line 54
    .line 55
    invoke-virtual {v7, v8, v9}, Le41;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v8, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    .line 59
    .line 60
    const-string v9, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 61
    .line 62
    invoke-virtual {v7, v8, v9}, Le41;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v7, p0}, Lig9;->a(Le41;Lsa7;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const/4 v0, 0x3

    .line 73
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    invoke-static {v3, p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const/4 v0, 0x2

    .line 95
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    invoke-static {v3, p0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {v7}, Le41;->b()Le74;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v1, p0}, Lig9;->c(Le74;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p0

    .line 114
    const-string v0, "Settings request failed."

    .line 115
    .line 116
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    :goto_0
    return-object v5

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
