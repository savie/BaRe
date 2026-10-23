.class public final Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$b;->createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-eq v1, p0, :cond_0

    .line 15
    .line 16
    sget-object v2, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$b;->newArray(I)[Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
    .locals 0

    .line 6
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    return-object p0
.end method
