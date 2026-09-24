.class public final Lgv4;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lgv4;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lgv4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lgv4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lgv4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lgv4;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lgv4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v3, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Ljava/lang/Throwable;

    .line 15
    .line 16
    check-cast p0, Lec2;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lec2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    check-cast v2, Lkc;

    .line 22
    .line 23
    iget-object p0, v2, Lkc;->d:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v4, p0

    .line 26
    check-cast v4, Luw0;

    .line 27
    .line 28
    invoke-virtual {v4, v0, v1}, Luw0;->g(Ljava/lang/Throwable;Z)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v4}, Luw0;->E()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    instance-of p1, p0, Lr41;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object p0, v1

    .line 42
    :goto_0
    if-eqz p0, :cond_3

    .line 43
    .line 44
    check-cast p0, Lfd5;

    .line 45
    .line 46
    iget-object p0, p0, Lfd5;->b:Lbn1;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 51
    .line 52
    const-string v1, "DataStore scope was cancelled before updateData could complete"

    .line 53
    .line 54
    invoke-direct {p1, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object p1, v0

    .line 59
    :goto_1
    invoke-virtual {p0, p1}, Lbn1;->Y(Ljava/lang/Throwable;)Z

    .line 60
    .line 61
    .line 62
    move-object v1, v3

    .line 63
    :cond_3
    if-nez v1, :cond_0

    .line 64
    .line 65
    return-object v3

    .line 66
    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    check-cast p0, Lhv4;

    .line 72
    .line 73
    check-cast v2, Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lhv4;->a:Ljava/util/Locale;

    .line 87
    .line 88
    iget-object p1, p0, Lhv4;->b:Lc00;

    .line 89
    .line 90
    iget-object v0, p1, Lc00;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Landroid/content/SharedPreferences;

    .line 93
    .line 94
    const-string v4, "follow_system_locale_key"

    .line 95
    .line 96
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lhv4;->a:Ljava/util/Locale;

    .line 103
    .line 104
    invoke-virtual {p0, v2, p1}, Lhv4;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p1}, Lc00;->h()Ljava/util/Locale;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v2, p0}, Lge;->C(Landroid/content/Context;Ljava/util/Locale;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eq p1, v2, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {p1, p0}, Lge;->C(Landroid/content/Context;Ljava/util/Locale;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_2
    return-object v3

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
