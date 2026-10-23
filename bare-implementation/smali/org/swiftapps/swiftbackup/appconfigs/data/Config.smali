.class public final Lorg/swiftapps/swiftbackup/appconfigs/data/Config;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/Config;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _settingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final _updateDate:Ljava/lang/Long;

.field private final id:Ljava/lang/String;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Leq1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Leq1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 54
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 50
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 53
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    sget-object p2, Lnh4;->d:Lnh4;

    .line 12
    .line 13
    const/4 p7, 0x6

    .line 14
    invoke-virtual {p2, p7, v0, v0}, Lnh4;->i(IZZ)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p7, :cond_2

    .line 25
    .line 26
    move-object p3, v0

    .line 27
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 28
    .line 29
    if-eqz p7, :cond_3

    .line 30
    .line 31
    move-object p4, v0

    .line 32
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 33
    .line 34
    if-eqz p6, :cond_4

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide p5

    .line 40
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p5

    .line 44
    :cond_4
    invoke-direct/range {p0 .. p5}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 20
    .line 21
    if-eqz p7, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 26
    .line 27
    if-eqz p6, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 30
    .line 31
    :cond_4
    move-object p6, p4

    .line 32
    move-object p7, p5

    .line 33
    move-object p4, p2

    .line 34
    move-object p5, p3

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    invoke-virtual/range {p2 .. p7}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/Config;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 5
    .line 6
    invoke-direct/range {p0 .. p5}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 54
    .line 55
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 56
    .line 57
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public final getConfigSettings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCopy()Ljl0;
    .locals 8
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/16 v6, 0x1f

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    invoke-static/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    :goto_1
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    return-object v0
.end method

.method public final getUpdateDate()J
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public final getValidSettings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-static {v3, v4, v5, v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->isValid$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ZILjava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v1

    .line 41
    :cond_2
    return-object v0
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public final get_name()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_settingsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_updateDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasCloudLocation()Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getConfigSettings()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lji8;->r(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_2
    :goto_0
    return v0
.end method

.method public final hasValidSettings()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move p0, v0

    .line 18
    :goto_1
    xor-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_1
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_2
    add-int/2addr v0, v3

    .line 51
    return v0
.end method

.method public final isNameTaken()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->isNameValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    sget-object v0, Lbr1;->a:Lbr1;

    .line 10
    .line 11
    invoke-static {p0}, Lbr1;->c(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isNameValid()Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "  "

    .line 23
    .line 24
    invoke-static {p0, v1, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/16 v1, 0x32

    .line 41
    .line 42
    if-gt p0, v1, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p0, v0

    .line 47
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    :goto_1
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_2
    return v0
.end method

.method public final minusSettings(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;
    .locals 10
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v3, v2

    .line 30
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 31
    .line 32
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    move-object v6, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    goto :goto_1

    .line 54
    :goto_2
    const/16 v8, 0x17

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v2, p0

    .line 62
    invoke-static/range {v2 .. v9}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final plusSettings(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;
    .locals 13
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->isValid(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v2, "Config"

    .line 16
    .line 17
    const-string v3, "Invalid ConfigSettings!"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 47
    .line 48
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, -0x1

    .line 67
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-ltz v2, :cond_3

    .line 76
    .line 77
    move-object v1, v0

    .line 78
    :cond_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    sget-object v0, Lov2;->a:Lov2;

    .line 85
    .line 86
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v4, v3

    .line 106
    check-cast v4, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 107
    .line 108
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_5

    .line 121
    .line 122
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    goto :goto_3

    .line 138
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    :goto_3
    invoke-virtual {v9, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    const/16 v11, 0x17

    .line 146
    .line 147
    const/4 v12, 0x0

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    move-object v5, p0

    .line 153
    invoke-static/range {v5 .. v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "Config(version="

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", id="

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", _name="

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", _settingsList="

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", _updateDate="

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->version:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->id:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_settingsList:Ljava/util/List;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 54
    .line 55
    invoke-virtual {v3, p1, p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->_updateDate:Ljava/lang/Long;

    .line 60
    .line 61
    if-nez p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    invoke-static {p1, v1, p0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
