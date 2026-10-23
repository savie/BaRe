.class public final Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;
.super Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultipleSchedules"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final scheduleItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->copy(Ljava/util/List;)Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/util/List;)Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;",
            ">;)",
            "Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;-><init>(Ljava/util/List;)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

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

.method public final getScheduleItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "MultipleSchedules(scheduleItems="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->scheduleItems:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/os/Parcelable;

    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
