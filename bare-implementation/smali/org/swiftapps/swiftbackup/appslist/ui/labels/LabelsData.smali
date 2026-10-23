.class public final Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final labelParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation
.end field

.field private final labelledAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;-><init>(Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

    .line 18
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->copy(Ljava/util/Map;Ljava/util/Map;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/Map;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;",
            ">;)",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;"
        }
    .end annotation

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    .line 25
    .line 26
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getLabelParamsMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLabelledAppsMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

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
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelParamsMap:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->labelledAppsMap:Ljava/util/Map;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "LabelsData(labels="

    .line 31
    .line 32
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", labelled apps="

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
