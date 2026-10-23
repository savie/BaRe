.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;,
        Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudServiceMetadata;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

.field public static final PLACEHOLDER_SERVER:Ljava/lang/String; = "placeholder_server"

.field private static final logTag:Ljava/lang/String; = "CloudCredentials"


# instance fields
.field private _region:Ljava/lang/String;

.field private authType:Lnc1;

.field private cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

.field private final cloudType$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private cloudTypeConstant:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private encryption:Ljava/lang/Boolean;

.field private key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private protocol:Lfd1;

.field private providerPresetId:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 17

    .line 22
    const/16 v15, 0x3fff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;-><init>(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 7
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 10
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 11
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 12
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 13
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 14
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 15
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 16
    iput-object p12, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 17
    iput-object p13, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 18
    iput-object p14, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 19
    new-instance p1, Lck;

    const/16 p2, 0xd

    invoke-direct {p1, p0, p2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 20
    new-instance p2, Lgv7;

    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 21
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudType$delegate:Los4;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 1
    sget-object v3, Lfd1;->HTTP:Lfd1;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 2
    const-string v4, "placeholder_server"

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move-object v14, v2

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    move-object/from16 p15, v2

    :goto_d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    goto :goto_e

    :cond_d
    move-object/from16 p15, p14

    goto :goto_d

    .line 3
    :goto_e
    invoke-direct/range {p1 .. p15}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;-><init>(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Ldd1;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudType_delegate$lambda$0(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Ldd1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final appendPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, p0

    .line 18
    :goto_0
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p2, p0

    .line 34
    :goto_1
    const/4 v0, 0x0

    .line 35
    const-string v1, "/"

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    move-object p1, p2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    if-nez p2, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/4 v2, 0x1

    .line 45
    new-array v3, v2, [C

    .line 46
    .line 47
    const/16 v4, 0x2f

    .line 48
    .line 49
    aput-char v4, v3, v0

    .line 50
    .line 51
    invoke-static {p1, v3}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-array v2, v2, [C

    .line 56
    .line 57
    aput-char v4, v2, v0

    .line 58
    .line 59
    invoke-static {p2, v2}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p1, v1, p2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_2
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-static {p1, v1, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :cond_5
    return-object p0
.end method

.method private final buildUrl(Ljava/net/URI;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p4}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->appendPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    new-instance v1, Ljava/net/URI;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    move-object v2, p2

    .line 28
    move v5, p3

    .line 29
    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method private static final cloudType_delegate$lambda$0(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Ldd1;
    .locals 4

    .line 1
    invoke-static {}, Ldd1;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v3, v2

    .line 25
    check-cast v3, Ldd1;

    .line 26
    .line 27
    invoke-virtual {v3}, Ldd1;->getSupportsCurrentAndroidSdk()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v2, v1

    .line 52
    check-cast v2, Ldd1;

    .line 53
    .line 54
    invoke-virtual {v2}, Ldd1;->getConstant()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v1, 0x0

    .line 68
    :goto_1
    check-cast v1, Ldd1;

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    sget-object p0, Ldd1;->WebDav:Ldd1;

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_4
    return-object v1
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    iget-object v9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    iget-object v10, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    iget-object v11, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    iget-object v12, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    iget-object v13, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    move-object/from16 p15, v0

    :goto_d
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    goto :goto_e

    :cond_d
    move-object/from16 p15, p14

    goto :goto_d

    :goto_e
    invoke-virtual/range {p1 .. p15}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->copy(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    move-result-object p0

    return-object p0
.end method

.method private final fixMultipleSchemesUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance p0, Llh6;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->fixMultipleSchemesUrl$hasMultipleSchemes(Llh6;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Llh6;->a:Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast v0, Ljava/lang/CharSequence;

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    const-string v1, "://"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2, v2, p1}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, -0x1

    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Llh6;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x3

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    return-object v0
.end method

.method private static final fixMultipleSchemesUrl$hasMultipleSchemes(Llh6;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llh6;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Llh6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    sget v0, Ljq7;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_5

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    move v1, v0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    const/4 v3, -0x1

    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    instance-of v4, p0, Ljava/lang/String;

    .line 23
    .line 24
    const-string v5, "http"

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    move-object v4, p0

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    instance-of v4, p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    move-object v4, p0

    .line 41
    check-cast v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-virtual {v4, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    instance-of v4, p0, Ljava/lang/StringBuffer;

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    move-object v4, p0

    .line 53
    check-cast v4, Ljava/lang/StringBuffer;

    .line 54
    .line 55
    invoke-virtual {v4, v5, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move v1, v3

    .line 70
    :goto_1
    if-eq v1, v3, :cond_6

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    const/4 v3, 0x4

    .line 75
    add-int/2addr v1, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_5
    :goto_2
    move v2, v0

    .line 78
    :cond_6
    const/4 p0, 0x1

    .line 79
    if-le v2, p0, :cond_7

    .line 80
    .line 81
    return p0

    .line 82
    :cond_7
    return v0
.end method

.method public static synthetic getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move p1, p3

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl(Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getBaseUrlFtp(Z)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Invalid protocol "

    .line 2
    .line 3
    const-string v1, "ftp://"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 27
    .line 28
    sget-object v3, Lhd1;->a:[I

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    aget v2, v3, v2

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eq v2, v3, :cond_6

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    if-eq v2, v3, :cond_3

    .line 42
    .line 43
    const/4 v3, 0x5

    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sget-object v3, Lfd1;->FTP:Lfd1;

    .line 55
    .line 56
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ne v2, v3, :cond_0

    .line 61
    .line 62
    move-object v0, v4

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    move-object p0, v0

    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :cond_1
    sget-object v0, Lfd1;->FTPS_IMPLICIT:Lfd1;

    .line 75
    .line 76
    invoke-virtual {v0}, Lfd1;->getDefPort()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    sget-object v3, Lfd1;->FTP:Lfd1;

    .line 110
    .line 111
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-ne v2, v3, :cond_4

    .line 116
    .line 117
    move-object v0, v4

    .line 118
    :cond_4
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    goto :goto_0

    .line 125
    :cond_5
    sget-object v0, Lfd1;->FTPS_EXPLICIT:Lfd1;

    .line 126
    .line 127
    invoke-virtual {v0}, Lfd1;->getDefPort()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    goto :goto_0

    .line 132
    :cond_6
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    sget-object v3, Lfd1;->FTPS_EXPLICIT:Lfd1;

    .line 141
    .line 142
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-ne v2, v3, :cond_7

    .line 147
    .line 148
    move-object v0, v4

    .line 149
    :cond_7
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    goto :goto_0

    .line 156
    :cond_8
    sget-object v0, Lfd1;->FTP:Lfd1;

    .line 157
    .line 158
    invoke-virtual {v0}, Lfd1;->getDefPort()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    :goto_0
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-lez v3, :cond_9

    .line 171
    .line 172
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_9

    .line 177
    .line 178
    move-object v4, v2

    .line 179
    :cond_9
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 180
    .line 181
    invoke-virtual {v2}, Lfd1;->getScheme()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-direct {p0, v1, v2, v0, v4}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->buildUrl(Ljava/net/URI;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-object p0

    .line 190
    :goto_1
    if-eqz p1, :cond_a

    .line 191
    .line 192
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 193
    .line 194
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    const-string p1, "getBaseUrlFtp: "

    .line 199
    .line 200
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    const/4 v4, 0x4

    .line 205
    const/4 v5, 0x0

    .line 206
    const-string v1, "CloudCredentials"

    .line 207
    .line 208
    const/4 v3, 0x0

    .line 209
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    const-string p0, ""

    .line 213
    .line 214
    return-object p0
.end method

.method private final getBaseUrlSftp(Z)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "sftp://"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move-object v1, v2

    .line 46
    :goto_0
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 47
    .line 48
    invoke-virtual {v2}, Lfd1;->getScheme()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-direct {p0, v0, v2, v3, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->buildUrl(Ljava/net/URI;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p0

    .line 61
    :goto_1
    if-eqz p1, :cond_1

    .line 62
    .line 63
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 64
    .line 65
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "getBaseUrlSftp: "

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v4, 0x4

    .line 76
    const/4 v5, 0x0

    .line 77
    const-string v1, "CloudCredentials"

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    const-string p0, ""

    .line 84
    .line 85
    return-object p0
.end method

.method private final getBaseUrlSmb(Z)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "smb://"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move-object v1, v2

    .line 46
    :goto_0
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 47
    .line 48
    invoke-virtual {v2}, Lfd1;->getScheme()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-direct {p0, v0, v2, v3, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->buildUrl(Ljava/net/URI;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p0

    .line 61
    :goto_1
    if-eqz p1, :cond_1

    .line 62
    .line 63
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 64
    .line 65
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "getBaseUrlSmb: "

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v4, 0x4

    .line 76
    const/4 v5, 0x0

    .line 77
    const-string v1, "CloudCredentials"

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    const-string p0, ""

    .line 84
    .line 85
    return-object p0
.end method

.method private final getDisplayUsername()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getValidUsername()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getHttpBasedUrl(ZZ)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Invalid protocol "

    .line 2
    .line 3
    const-string v1, "http://"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->fixMultipleSchemesUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 31
    .line 32
    sget-object v3, Lhd1;->a:[I

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    aget v2, v3, v2

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, -0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    if-eq v2, v3, :cond_3

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    sget-object v3, Lfd1;->HTTP:Lfd1;

    .line 57
    .line 58
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ne v2, v3, :cond_1

    .line 63
    .line 64
    sget-object v3, Lfd1;->HTTPS:Lfd1;

    .line 65
    .line 66
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eq v2, v3, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v0, v5

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p2

    .line 105
    :cond_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    sget-object v3, Lfd1;->HTTPS:Lfd1;

    .line 114
    .line 115
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ne v2, v3, :cond_5

    .line 120
    .line 121
    sget-object v3, Lfd1;->HTTP:Lfd1;

    .line 122
    .line 123
    invoke-virtual {v3}, Lfd1;->getDefPort()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eq v2, v3, :cond_4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    move-object v0, v5

    .line 131
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    if-eqz p2, :cond_7

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-lez p2, :cond_7

    .line 148
    .line 149
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-nez p2, :cond_7

    .line 154
    .line 155
    move-object v5, v0

    .line 156
    :cond_7
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 157
    .line 158
    invoke-virtual {p2}, Lfd1;->getScheme()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-direct {p0, v1, p2, v4, v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->buildUrl(Ljava/net/URI;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-object p0

    .line 167
    :goto_3
    if-eqz p1, :cond_8

    .line 168
    .line 169
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 170
    .line 171
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    const-string p1, "getBaseUrlWebdav: "

    .line 176
    .line 177
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const/4 v4, 0x4

    .line 182
    const/4 v5, 0x0

    .line 183
    const-string v1, "CloudCredentials"

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    const-string p0, ""

    .line 190
    .line 191
    return-object p0
.end method

.method public static synthetic getHttpBasedUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getHttpBasedUrl(ZZ)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lfd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Lnc1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p14}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;-><init>(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final displayAccountIdValue()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-static {v4, v3, v4}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-lez v5, :cond_4

    .line 30
    .line 31
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-static {v4, v5, v4}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v4, v2

    .line 47
    :goto_0
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_2

    .line 54
    .line 55
    :cond_1
    move v0, v1

    .line 56
    :cond_2
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getDisplayUsername()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, "@"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, " ("

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, ")"

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_3
    const-string p0, "CloudCredentials.getEmailAddress: Invalid CloudServiceId = "

    .line 97
    .line 98
    invoke-static {p0, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    :cond_4
    const-string p0, "CloudCredentials.getEmailAddress: Invalid host = "

    .line 107
    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-object v2
.end method

.method public final emailAddressValue()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-static {v4, v3, v4}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-lez v5, :cond_4

    .line 30
    .line 31
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-static {v4, p0, v4}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object p0, v2

    .line 47
    :goto_0
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    :cond_1
    move v0, v1

    .line 56
    :cond_2
    if-nez v0, :cond_3

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    const-string v0, "CloudCredentials.getEmailAddress: Invalid CloudServiceId = "

    .line 60
    .line 61
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_4
    const-string p0, "CloudCredentials.getEmailAddress: Invalid host = "

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v2
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 65
    .line 66
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 67
    .line 68
    if-eq v1, v3, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 94
    .line 95
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 96
    .line 97
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_a

    .line 102
    .line 103
    return v2

    .line 104
    :cond_a
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 105
    .line 106
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_b

    .line 113
    .line 114
    return v2

    .line 115
    :cond_b
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 116
    .line 117
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 118
    .line 119
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_c

    .line 124
    .line 125
    return v2

    .line 126
    :cond_c
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_d

    .line 135
    .line 136
    return v2

    .line 137
    :cond_d
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_e

    .line 146
    .line 147
    return v2

    .line 148
    :cond_e
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 149
    .line 150
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_f

    .line 157
    .line 158
    return v2

    .line 159
    :cond_f
    return v0
.end method

.method public final extractRegion()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-static {p0, v2, v1, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v4, "http://"

    .line 11
    .line 12
    invoke-static {p0, v4, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v4, "https://"

    .line 17
    .line 18
    invoke-static {p0, v4, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "."

    .line 23
    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v4, 0x6

    .line 29
    invoke-static {p0, v0, v4}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "dualstack"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    move-object v0, p0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    const-string p0, "amazonaws"

    .line 59
    .line 60
    invoke-static {v0, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    move-object v0, v3

    .line 67
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    const-string p0, "-"

    .line 70
    .line 71
    invoke-static {v0, p0, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 72
    .line 73
    .line 74
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_2
    return-object v3

    .line 79
    :goto_1
    const-string v0, "CloudCredentials"

    .line 80
    .line 81
    const-string v1, "extractRegion"

    .line 82
    .line 83
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    return-object v3
.end method

.method public final getAuthType()Lnc1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBaseUrl(Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ldd1;->FTP:Ldd1;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrlFtp(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ldd1;->isEmailPasswordBasedWebDav()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Ldd1;->WebDav:Ldd1;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v2, Ldd1;->SMB:Ldd1;

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrlSmb(Z)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v2, Ldd1;->SFTP:Ldd1;

    .line 52
    .line 53
    if-ne v0, v2, :cond_3

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrlSftp(Z)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v2, Ldd1;->S3:Ldd1;

    .line 65
    .line 66
    if-ne v0, v2, :cond_4

    .line 67
    .line 68
    invoke-direct {p0, p1, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getHttpBasedUrl(ZZ)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "getBaseUrl has not implementation for cloudType="

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", cloudTypeConstant="

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_5
    :goto_0
    const/4 v0, 0x2

    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-static {p0, p1, v1, v0, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getHttpBasedUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZZILjava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method

.method public final getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCloudType()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudType$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ldd1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getCloudTypeConstant()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEncryption()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKey()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 11
    .line 12
    invoke-virtual {p0}, Lfd1;->getDefPort()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getPort()Ljava/lang/Integer;
    .locals 0

    .line 17
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getProtocol()Lfd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProviderPresetId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    return-object v0

    .line 23
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->extractRegion()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final getServer()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValidUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-nez p0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    return-object p0

    .line 23
    :cond_2
    :goto_1
    const-string p0, "anonymous"

    .line 24
    .line 25
    return-object p0
.end method

.method public final get_region()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    const/16 v2, 0x1f

    .line 13
    .line 14
    mul-int/2addr v0, v2

    .line 15
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    add-int/2addr v3, v0

    .line 22
    mul-int/2addr v3, v2

    .line 23
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3, v2, v0}, Lfz5;->g(IILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    move v3, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_1
    add-int/2addr v0, v3

    .line 40
    mul-int/2addr v0, v2

    .line 41
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    move v3, v1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_2
    add-int/2addr v0, v3

    .line 52
    mul-int/2addr v0, v2

    .line 53
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    move v3, v1

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_3
    add-int/2addr v0, v3

    .line 64
    mul-int/2addr v0, v2

    .line 65
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    move v3, v1

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    :goto_4
    add-int/2addr v0, v3

    .line 76
    mul-int/2addr v0, v2

    .line 77
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 78
    .line 79
    if-nez v3, :cond_5

    .line 80
    .line 81
    move v3, v1

    .line 82
    goto :goto_5

    .line 83
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    :goto_5
    add-int/2addr v0, v3

    .line 88
    mul-int/2addr v0, v2

    .line 89
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 90
    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    move v3, v1

    .line 94
    goto :goto_6

    .line 95
    :cond_6
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    :goto_6
    add-int/2addr v0, v3

    .line 100
    mul-int/2addr v0, v2

    .line 101
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 102
    .line 103
    if-nez v3, :cond_7

    .line 104
    .line 105
    move v3, v1

    .line 106
    goto :goto_7

    .line 107
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    :goto_7
    add-int/2addr v0, v3

    .line 112
    mul-int/2addr v0, v2

    .line 113
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 114
    .line 115
    if-nez v3, :cond_8

    .line 116
    .line 117
    move v3, v1

    .line 118
    goto :goto_8

    .line 119
    :cond_8
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    :goto_8
    add-int/2addr v0, v3

    .line 124
    mul-int/2addr v0, v2

    .line 125
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v3, :cond_9

    .line 128
    .line 129
    move v3, v1

    .line 130
    goto :goto_9

    .line 131
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :goto_9
    add-int/2addr v0, v3

    .line 136
    mul-int/2addr v0, v2

    .line 137
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 138
    .line 139
    if-nez v3, :cond_a

    .line 140
    .line 141
    move v3, v1

    .line 142
    goto :goto_a

    .line 143
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    :goto_a
    add-int/2addr v0, v3

    .line 148
    mul-int/2addr v0, v2

    .line 149
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 150
    .line 151
    if-nez p0, :cond_b

    .line 152
    .line 153
    goto :goto_b

    .line 154
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    :goto_b
    add-int/2addr v0, v1

    .line 159
    return v0
.end method

.method public final setAuthType(Lnc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 2
    .line 3
    return-void
.end method

.method public final setCloudServiceId(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 2
    .line 3
    return-void
.end method

.method public final setCloudTypeConstant(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEncryption(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setKey(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 2
    .line 3
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPort(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setProtocol(Lfd1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 5
    .line 6
    return-void
.end method

.method public final setProviderPresetId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setServer(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final set_region(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudTypeConstant:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->protocol:Lfd1;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->server:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->path:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->port:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->authType:Lnc1;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->username:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->password:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->key:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    .line 18
    .line 19
    iget-object v9, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->encryption:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v10, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->cloudServiceId:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 22
    .line 23
    iget-object v11, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->_region:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->providerPresetId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->displayName:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v13, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v14, "CloudCredentials(cloudTypeConstant="

    .line 32
    .line 33
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", protocol="

    .line 40
    .line 41
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", server="

    .line 48
    .line 49
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", path="

    .line 53
    .line 54
    const-string v1, ", port="

    .line 55
    .line 56
    invoke-static {v13, v2, v0, v3, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", authType="

    .line 63
    .line 64
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", username="

    .line 71
    .line 72
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", password="

    .line 76
    .line 77
    const-string v1, ", key="

    .line 78
    .line 79
    invoke-static {v13, v6, v0, v7, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ", encryption="

    .line 86
    .line 87
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, ", cloudServiceId="

    .line 94
    .line 95
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, ", _region="

    .line 102
    .line 103
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, ", providerPresetId="

    .line 110
    .line 111
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, ", displayName="

    .line 115
    .line 116
    const-string v1, ")"

    .line 117
    .line 118
    invoke-static {v13, v12, v0, p0, v1}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method
