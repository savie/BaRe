.class public final Lq47;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

.field public final f:Lex6;

.field public g:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/SwiftApp;->c:Lgv7;

    .line 11
    .line 12
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 17
    .line 18
    iput-object v0, p0, Lq47;->e:Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 19
    .line 20
    new-instance v0, Lex6;

    .line 21
    .line 22
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lq47;->f:Lex6;

    .line 26
    .line 27
    sget-object v1, Lk47;->a:Lk47;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lzn4;->a:Lzn4;

    .line 33
    .line 34
    new-instance v0, Lu01;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v0, p0, v2, v1}, Lu01;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 42
    .line 43
    .line 44
    const-string v0, "app_locale"

    .line 45
    .line 46
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "prefs"

    .line 56
    .line 57
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :goto_0
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {v2}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_2
    iput-object v0, p0, Lq47;->g:Ljava/util/Locale;

    .line 88
    .line 89
    return-void
.end method

.method public static k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqj3;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, p0, v1}, Lqj3;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;Lq47;Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzn4;->a:Lzn4;

    .line 5
    .line 6
    new-instance v0, Lyq;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-direct {v0, v1, p1, p0}, Lyq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
