.class public final Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplyData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _labels:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/appconfigs/data/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabelIds$lambda$0(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->copy(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static final getLabelIds$lambda$0(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;)Ljava/util/List;
    .locals 12

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const-string v1, ", "

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-static {p0, v1, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p0, v0

    .line 19
    :goto_0
    if-eqz p0, :cond_4

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    sget-object v3, Llr4;->a:Llr4;

    .line 44
    .line 45
    invoke-static {v2}, Llr4;->h(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    const-string v4, "getLabelIds(): Label with id="

    .line 52
    .line 53
    const-string v5, " no longer exists. Check your config settings please, updated if needed."

    .line 54
    .line 55
    invoke-static {v4, v2, v5}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 60
    .line 61
    const/4 v10, 0x4

    .line 62
    const/4 v11, 0x0

    .line 63
    const-string v7, "ConfigSettings"

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v0}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_4
    return-object v0
.end method

.method public static synthetic isValid$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->isValid(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
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
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final getLabelIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    new-instance v0, Lak;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    const/16 p0, 0xa

    .line 9
    .line 10
    const-string v1, "ConfigSettings"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-static {v1, v2, v3, v0, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/List;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getLabels()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabelIds()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v2, Llr4;->a:Llr4;

    .line 29
    .line 30
    invoke-static {v1}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const-string v3, "getLabels(): Label with id="

    .line 37
    .line 38
    const-string v4, " no longer exists. Check your config settings please, updated if needed."

    .line 39
    .line 40
    invoke-static {v3, v1, v4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 45
    .line 46
    const/4 v9, 0x4

    .line 47
    const/4 v10, 0x0

    .line 48
    const-string v6, "ConfigSettings"

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_3
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public final get_labels()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasLabels()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabelIds()Ljava/util/List;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isValid(Z)Z
    .locals 6
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->hasLabels()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Invalid ApplyData="

    .line 16
    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v1, "ConfigSettings"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "ApplyData(_labels="

    .line 4
    .line 5
    const-string v1, ")"

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->_labels:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
