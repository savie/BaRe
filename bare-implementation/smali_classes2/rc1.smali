.class public final synthetic Lrc1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lrc1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lrc1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    check-cast p2, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-nez p0, :cond_3

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    :try_start_0
    sget-object p1, Ld45;->b:Ld45;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    :cond_0
    move-object p1, p0

    .line 41
    :goto_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {p1, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const-string p0, "is_migrating_to_google_sign_in"

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    .line 62
    .line 63
    sget-object p0, Ld45;->b:Ld45;

    .line 64
    .line 65
    invoke-virtual {p0}, Ld45;->c()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string p1, "editor"

    .line 70
    .line 71
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_2
    const-string p1, "Signed in user is not Anonymous. Can\'t migrate to Google Sign-in!"

    .line 76
    .line 77
    invoke-static {p1}, Ll0;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 82
    .line 83
    :goto_2
    return-object p0

    .line 84
    :pswitch_0
    check-cast p1, Lil0;

    .line 85
    .line 86
    check-cast p2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {p1, p0}, Ldd1;->t(Lil0;I)Lbe8;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
