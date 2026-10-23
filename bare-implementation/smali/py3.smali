.class public final Lpy3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# static fields
.field public static final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0802b6

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sput-object v0, Lpy3;->a:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Loy3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 1

    .line 1
    check-cast p1, Loy3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p2, "decode: data="

    .line 9
    .line 10
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p2, "GlideLocalWallDecoder"

    .line 21
    .line 22
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p1, Loy3;->a:Lyn8;

    .line 26
    .line 27
    iget-boolean p1, p0, Lyn8;->n:Z

    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    sget-object p4, Lpy3;->a:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_0
    iget-object p0, p0, Lyn8;->a:Lq63;

    .line 36
    .line 37
    sget-boolean p1, Lq63;->d:Z

    .line 38
    .line 39
    invoke-virtual {p0, p3}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 44
    .line 45
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 46
    .line 47
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "decode: "

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    :goto_0
    if-nez p1, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move-object p4, p1

    .line 78
    :goto_1
    new-instance p0, Ltx3;

    .line 79
    .line 80
    invoke-direct {p0, p3, p4}, Ltx3;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    return-object p0
.end method
