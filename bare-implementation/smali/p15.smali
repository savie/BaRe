.class public abstract Lp15;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Landroid/widget/ImageView;)V
    .locals 4

    .line 1
    sget-object v0, Ld45;->b:Ld45;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getPhotoUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;)Lyk6;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "/s96"

    .line 43
    .line 44
    const-string v3, "/s256"

    .line 45
    .line 46
    invoke-static {v0, v2, v3}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-class v2, Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v1, Lso2;->b:Loo2;

    .line 64
    .line 65
    new-instance v2, Lb71;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lmm0;->s(Lso2;Lpr0;)Lmm0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lpk6;

    .line 75
    .line 76
    invoke-virtual {v0}, Lmm0;->k()Lmm0;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lpk6;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Lpk6;->B(Landroid/widget/ImageView;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void

    .line 86
    :cond_2
    const/4 p0, 0x0

    .line 87
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 88
    .line 89
    invoke-static {p0, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    throw p0

    .line 94
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lsz8;->x(Landroid/content/Context;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const v2, 0x7f080208

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v2, v1}, Lorg/swiftapps/swiftbackup/common/Const;->w(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
