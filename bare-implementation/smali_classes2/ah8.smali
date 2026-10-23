.class public final Lah8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah8$a;
    }
.end annotation


# static fields
.field public static final Companion:Lah8$a;

.field private static final logTag:Ljava/lang/String; = "MUser"


# instance fields
.field private currentAppVersion:I

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isAnonymous:Ljava/lang/Boolean;

.field private latestAppVersion:I

.field private photoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lah8$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lah8$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lah8;->Companion:Lah8$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v9}, Lah8;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lah8;->id:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 54
    iput-object p3, p0, Lah8;->displayName:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lah8;->email:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 57
    iput p6, p0, Lah8;->latestAppVersion:I

    .line 58
    iput p7, p0, Lah8;->currentAppVersion:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p9, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 14
    .line 15
    if-eqz p9, :cond_2

    .line 16
    .line 17
    move-object p3, v0

    .line 18
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 19
    .line 20
    if-eqz p9, :cond_3

    .line 21
    .line 22
    move-object p4, v0

    .line 23
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 24
    .line 25
    if-eqz p9, :cond_4

    .line 26
    .line 27
    move-object p5, v0

    .line 28
    :cond_4
    and-int/lit8 p9, p8, 0x20

    .line 29
    .line 30
    if-eqz p9, :cond_5

    .line 31
    .line 32
    const/4 p6, 0x0

    .line 33
    :cond_5
    and-int/lit8 p8, p8, 0x40

    .line 34
    .line 35
    if-eqz p8, :cond_6

    .line 36
    .line 37
    const/16 p7, 0x26c

    .line 38
    .line 39
    :cond_6
    move p8, p6

    .line 40
    move p9, p7

    .line 41
    move-object p6, p4

    .line 42
    move-object p7, p5

    .line 43
    move-object p4, p2

    .line 44
    move-object p5, p3

    .line 45
    move-object p2, p0

    .line 46
    move-object p3, p1

    .line 47
    invoke-direct/range {p2 .. p9}, Lah8;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic a(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lah8;->updateFields$lambda$1(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$updateFields(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lah8;->updateFields(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lah8;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0}, Lah8;->updateFields$lambda$2(Lah8;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lah8;->updateFields$lambda$1$0(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic copy$default(Lah8;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lah8;
    .locals 0

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lah8;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 14
    .line 15
    if-eqz p9, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lah8;->displayName:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 20
    .line 21
    if-eqz p9, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lah8;->email:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 26
    .line 27
    if-eqz p9, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p9, p8, 0x20

    .line 32
    .line 33
    if-eqz p9, :cond_5

    .line 34
    .line 35
    iget p6, p0, Lah8;->latestAppVersion:I

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p8, p8, 0x40

    .line 38
    .line 39
    if-eqz p8, :cond_6

    .line 40
    .line 41
    iget p7, p0, Lah8;->currentAppVersion:I

    .line 42
    .line 43
    :cond_6
    move p8, p6

    .line 44
    move p9, p7

    .line 45
    move-object p6, p4

    .line 46
    move-object p7, p5

    .line 47
    move-object p4, p2

    .line 48
    move-object p5, p3

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    invoke-virtual/range {p2 .. p9}, Lah8;->copy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lah8;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method private final updateFields(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getProviderData()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v3, v1

    .line 24
    check-cast v3, Ldh8;

    .line 25
    .line 26
    invoke-interface {v3}, Ldh8;->l()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "google.com"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v1, v2

    .line 40
    :goto_0
    check-cast v1, Ldh8;

    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lah8;->id:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v1}, Ldh8;->e()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getDisplayName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    iput-object v0, p0, Lah8;->displayName:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-interface {v1}, Ldh8;->m()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    :cond_4
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_5
    iput-object v0, p0, Lah8;->email:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    invoke-interface {v1}, Ldh8;->c()Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-lez v1, :cond_6

    .line 95
    .line 96
    move-object v2, v0

    .line 97
    :cond_6
    if-nez v2, :cond_8

    .line 98
    .line 99
    :cond_7
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getPhotoUrl()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :cond_8
    if-eqz v2, :cond_a

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_9

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_9
    iput-object v2, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 113
    .line 114
    :cond_a
    :goto_1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 115
    .line 116
    new-instance v0, Lw01;

    .line 117
    .line 118
    const/16 v1, 0xf

    .line 119
    .line 120
    invoke-direct {v0, v1, p0, p1}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 124
    .line 125
    .line 126
    const/16 p1, 0x26c

    .line 127
    .line 128
    iput p1, p0, Lah8;->currentAppVersion:I

    .line 129
    .line 130
    iget v0, p0, Lah8;->latestAppVersion:I

    .line 131
    .line 132
    if-le v0, p1, :cond_b

    .line 133
    .line 134
    move p1, v0

    .line 135
    :cond_b
    iput p1, p0, Lah8;->latestAppVersion:I

    .line 136
    .line 137
    new-instance p1, Lxq4;

    .line 138
    .line 139
    const/16 v0, 0x11

    .line 140
    .line 141
    invoke-direct {p1, p0, v0}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private static final updateFields$lambda$1(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;
    .locals 3

    .line 1
    new-instance v0, Lqf;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/16 p0, 0x8

    .line 9
    .line 10
    const-string p1, "MUser"

    .line 11
    .line 12
    const-string v1, "updateUser"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {p1, v1, v2, v0, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lbe8;->a:Lbe8;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final updateFields$lambda$1$0(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;
    .locals 12

    .line 1
    iget-object v0, p0, Lah8;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getDisplayName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    iget-object p0, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-lez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getPhotoUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object p0, v1

    .line 46
    :goto_1
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_a

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v3, v5

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    :goto_2
    move v3, v4

    .line 92
    :goto_3
    if-nez v3, :cond_3

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 97
    .line 98
    const/4 v10, 0x4

    .line 99
    const/4 v11, 0x0

    .line 100
    const-string v7, "MUser"

    .line 101
    .line 102
    const-string v8, "User display name has changed."

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    move-object v0, v1

    .line 110
    :goto_4
    if-eqz p0, :cond_7

    .line 111
    .line 112
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 113
    .line 114
    const/4 v10, 0x4

    .line 115
    const/4 v11, 0x0

    .line 116
    const-string v7, "MUser"

    .line 117
    .line 118
    const-string v8, "User photo url has changed."

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-nez p0, :cond_8

    .line 129
    .line 130
    move-object p0, v1

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    move-object p0, v1

    .line 133
    :cond_8
    move v4, v5

    .line 134
    :goto_5
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 135
    .line 136
    const/4 v10, 0x4

    .line 137
    const/4 v11, 0x0

    .line 138
    const-string v7, "MUser"

    .line 139
    .line 140
    const-string v8, "Updating the profile details"

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Lhh8;

    .line 147
    .line 148
    if-nez p0, :cond_9

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_9
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    :goto_6
    invoke-direct {v2, v0, v1, v5, v4}, Lhh8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->updateProfile(Lhh8;)V

    .line 159
    .line 160
    .line 161
    :cond_a
    :goto_7
    sget-object p0, Lbe8;->a:Lbe8;

    .line 162
    .line 163
    return-object p0
.end method

.method private static final updateFields$lambda$2(Lah8;)Lbe8;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lah8;->updateFields$lambda$2$0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    :goto_1
    const-string v2, "s="

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lah8;->currentAppVersion:I

    .line 27
    .line 28
    const-string v2, "current="

    .line 29
    .line 30
    invoke-static {v1, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget p0, p0, Lah8;->latestAppVersion:I

    .line 35
    .line 36
    const-string v2, "latest="

    .line 37
    .line 38
    invoke-static {p0, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object p0, Lre3;->a:Lzc2;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/16 v5, 0x3f

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v0, Lqe3;

    .line 63
    .line 64
    const-string v1, "s"

    .line 65
    .line 66
    invoke-direct {v0, v1, p0}, Lqe3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-virtual {v0}, Lqe3;->invoke()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    :catch_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 73
    .line 74
    return-object p0
.end method

.method private static final updateFields$lambda$2$0()J
    .locals 4

    .line 1
    sget-object v0, Lmp6;->c:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/topjohnwu/superuser/Shell;

    .line 8
    .line 9
    sget-boolean v1, Lg42;->a:Z

    .line 10
    .line 11
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v2, "AQLFCL/7Dy3S5q7uDhoL6UHDcrNWK4S1nr+i+S65kDy3e+fbbI8H9lGSPC3fcIQTdeeJCXGjiBuIRV0pjQkcMg=="

    .line 25
    .line 26
    invoke-static {v2}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmd(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    return-wide v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lah8;->latestAppVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lah8;->currentAppVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lah8;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lah8;

    .line 5
    .line 6
    invoke-direct/range {p0 .. p7}, Lah8;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lah8;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lah8;

    .line 12
    .line 13
    iget-object v1, p0, Lah8;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lah8;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 25
    .line 26
    iget-object v3, p1, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lah8;->displayName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lah8;->displayName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lah8;->email:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lah8;->email:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lah8;->photoUrl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget v1, p0, Lah8;->latestAppVersion:I

    .line 69
    .line 70
    iget v3, p1, Lah8;->latestAppVersion:I

    .line 71
    .line 72
    if-eq v1, v3, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget p0, p0, Lah8;->currentAppVersion:I

    .line 76
    .line 77
    iget p1, p1, Lah8;->currentAppVersion:I

    .line 78
    .line 79
    if-eq p0, p1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    return v0
.end method

.method public final getCurrentAppVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lah8;->currentAppVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLatestAppVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lah8;->latestAppVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPhotoUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lah8;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :goto_0
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v2, p0, Lah8;->displayName:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v2, p0, Lah8;->email:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_2
    add-int/2addr v0, v2

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-object v2, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_3
    add-int/2addr v0, v3

    .line 57
    mul-int/2addr v0, v1

    .line 58
    iget v2, p0, Lah8;->latestAppVersion:I

    .line 59
    .line 60
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget p0, p0, Lah8;->currentAppVersion:I

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    add-int/2addr p0, v0

    .line 71
    return p0
.end method

.method public final isAnonymous()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAnonymous(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentAppVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lah8;->currentAppVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lah8;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lah8;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lah8;->id:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setLatestAppVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lah8;->latestAppVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lah8;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lah8;->isAnonymous:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, p0, Lah8;->displayName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lah8;->email:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lah8;->photoUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lah8;->latestAppVersion:I

    .line 12
    .line 13
    iget p0, p0, Lah8;->currentAppVersion:I

    .line 14
    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v7, "User(id="

    .line 18
    .line 19
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", isAnonymous="

    .line 26
    .line 27
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", displayName="

    .line 34
    .line 35
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", email="

    .line 39
    .line 40
    const-string v1, ", photoUrl="

    .line 41
    .line 42
    invoke-static {v6, v2, v0, v3, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", latestAppVersion="

    .line 49
    .line 50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", currentAppVersion="

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ")"

    .line 62
    .line 63
    invoke-static {v6, p0, v0}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
