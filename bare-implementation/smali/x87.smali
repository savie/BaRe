.class public final Lx87;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lx87;

.field public static final b:Lom5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lx87;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx87;->a:Lx87;

    .line 7
    .line 8
    new-instance v0, Lkj4;

    .line 9
    .line 10
    invoke-direct {v0}, Lkj4;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v1, Lw87;

    .line 14
    .line 15
    sget-object v2, Lnb0;->a:Lnb0;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lkj4;->a(Ljava/lang/Class;Lfr5;)Law2;

    .line 18
    .line 19
    .line 20
    const-class v1, Lc97;

    .line 21
    .line 22
    sget-object v2, Lob0;->a:Lob0;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lkj4;->a(Ljava/lang/Class;Lfr5;)Law2;

    .line 25
    .line 26
    .line 27
    const-class v1, Loa2;

    .line 28
    .line 29
    sget-object v2, Llb0;->a:Llb0;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lkj4;->a(Ljava/lang/Class;Lfr5;)Law2;

    .line 32
    .line 33
    .line 34
    const-class v1, Lf10;

    .line 35
    .line 36
    sget-object v2, Lkb0;->a:Lkb0;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lkj4;->a(Ljava/lang/Class;Lfr5;)Law2;

    .line 39
    .line 40
    .line 41
    const-class v1, Ljb;

    .line 42
    .line 43
    sget-object v2, Ljb0;->a:Ljb0;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lkj4;->a(Ljava/lang/Class;Lfr5;)Law2;

    .line 46
    .line 47
    .line 48
    const-class v1, Lk76;

    .line 49
    .line 50
    sget-object v2, Lmb0;->a:Lmb0;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lkj4;->a(Ljava/lang/Class;Lfr5;)Law2;

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v0, Lkj4;->d:Z

    .line 57
    .line 58
    new-instance v1, Lom5;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lom5;-><init>(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lx87;->b:Lom5;

    .line 64
    .line 65
    return-void
.end method

.method public static a(Lcom/google/firebase/FirebaseApp;)Lf10;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x1c

    .line 24
    .line 25
    if-lt v1, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    move-object v4, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    new-instance v7, Lf10;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljb;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    move-object v3, v4

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    move-object v3, v0

    .line 79
    :goto_2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Li6;->c(Landroid/content/Context;)Lk76;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Li6;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-direct/range {v1 .. v6}, Ljb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lk76;Ljava/util/ArrayList;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v7, v8, v1}, Lf10;-><init>(Ljava/lang/String;Ljb;)V

    .line 110
    .line 111
    .line 112
    return-object v7
.end method
